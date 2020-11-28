function(allstates, event, type, watchID, ...)
    if event == "ZT_ADD" then
        local member, spellID, duration, charges = ...
        
        -- If this WA was just loaded
        if not type then
            if WeakAuras.IsAuraLoaded then
                -- Since there is no unload event, hooking into region:Collapse() which
                -- is called from WeakAuras.UnloadDisplays(...)
                aura_env.region.ZTRegTypes = aura_env.regTypes
                aura_env.region.ZTRegSpells = aura_env.regSpells
                
                if not aura_env.region.ZTCollapse then
                    aura_env.region.ZTCollapse = aura_env.region.Collapse
                end
                
                function aura_env.region:Collapse(...)
                    if self.ZTRegTypes and (not WeakAuras.loaded[self.id]) then
                        WeakAuras.ScanEvents("ZT_UNREGISTER", self.regTypes, self.id)
                        WeakAuras.ScanEvents("ZT_UNREGISTER", self.regSpells, self.id)
                        self.ZTRegTypes = nil
                        self.ZTRegSpells = nil
                    end
                    
                    self.ZTCollapse(self, ...)
                end
            end
            
            -- Register for all types/spells
            WeakAuras.ScanEvents("ZT_REGISTER", aura_env.regTypes, aura_env.region.id)
            WeakAuras.ScanEvents("ZT_REGISTER", aura_env.regSpells, aura_env.region.id)
        else
            local isTypeReg = aura_env.types[type]
            local isSpellReg = aura_env.spells[spellID]
            local isInterested = (isTypeReg and not isSpellReg) or (not isTypeReg and isSpellReg)
            if not allstates[watchID]
                and isInterested
                and (not member.isPlayer or aura_env.config["reg"]["type"]["showOwn"..type])
            then
                local state = {
                    show = true,
                    changed = true,
                    autoHide = false,
                    resort = false,
                    
                    progressType = 'timed',
                    duration = duration,
                    expirationTime = GetTime(),
                    
                    ID = watchID,
                    type = type,
                    spellId = spellID,
                    stacks = charges,
                    member = member,
                    unit = unit,
                    
                    name = member.name,
                    icon = select(3, GetSpellInfo(spellID)),
                }
                for u in WA_IterateGroupMembers() do
                    if UnitName(u) == member.name then
                        state.unit = u
                    end
                end
                
                allstates[watchID] = state
                
                return true
            end
        end
        
    elseif event == "ZT_TRIGGER" then
        local duration, expiration, charges = ...
        
        local state = allstates[watchID]
        if state then
            state.changed = true
            state.duration = duration
            state.expirationTime = expiration 
            state.stacks = charges
            
            return true
        end

    elseif event == "ZT_REMOVE" then
        local state = allstates[watchID]
        if state then
            state.show = false
            state.changed = true
            return true
        end

    elseif event == "WA_PARTYCOOLDOWNS_UPDATE" then
        for id, state in pairs(allstates) do
            state.show = false
            state.unit = nil
            state.changed = true
            
            for u in WA_IterateGroupMembers() do
                if UnitName(u) == state.member.name then
                    state.unit = u
                    state.show = true
                end
            end
        end
        return true

    elseif event == "GROUP_ROSTER_UPDATE" then
        local now = GetTime()
        if not aura_env.last or aura_env.last < now - 1 then
            aura_env.last = now
            local aura_env = aura_env
            C_Timer.After(0.5, function() 
                WeakAuras.ScanEvents("WA_PARTYCOOLDOWNS_UPDATE") 
            end)            
        end
    end
end
