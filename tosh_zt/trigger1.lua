function(allstates, event, type, watchID, ...) -- ZT_ADD, ZT_TRIGGER, ZT_REMOVE
    if event == "ZT_ADD" then
        local member, spellID = ...
        
        -- If this WA was just loaded
        if not type then
            -- Since there is no unload event, hooking into region:Collapse() which
            -- is called from WeakAuras.UnloadDisplays(...)
            aura_env.region.ZTTypes = aura_env.types
            
            if not aura_env.region.ZTCollapse then
                aura_env.region.ZTCollapse = aura_env.region.Collapse
            end
            
            function aura_env.region:Collapse(...)
                if self.ZTTypes and (not WeakAuras.loaded[self.id]) then
                    for t,isTracked in pairs(self.ZTTypes) do
                        if isTracked then
                            WeakAuras.ScanEvents("ZT_UNREGISTER", t, self.id)
                        end
                    end
                    self.ZTTypes = nil
                end
                
                self.ZTCollapse(self, ...)
            end
            
            -- Register for all types tracked by this front-end WA
            for t, _ in pairs(aura_env.ztTypes) do
                WeakAuras.ScanEvents("ZT_REGISTER", t, aura_env.region.id)
            end
        elseif aura_env.ztTypes[type] and aura_env.whitelist[spellID] then
            local state = {}
            state.show = true
            state.changed = true
            state.progressType = 'timed'
            state.autoHide = false
            state.resort = false
            state.value = 0
            state.total = 0
            state.duration = 0
            state.expirationTime = GetTime()
            state.index = aura_env.computeSortIndex(type, spellID, member)
            
            state.name = member.name
            state.icon = select(3,GetSpellInfo(spellID))
            state.classColor = member.classColor
            
            allstates[watchID] = state
            
            return true
        end
    elseif event == "ZT_TRIGGER" then
        local duration, expiration = ...
        
        if type and aura_env.ztTypes[type] and allstates[watchID] then
            local state = allstates[watchID]
            state.changed = true
            state.duration = duration
            state.expirationTime = expiration
            return true
        end
    elseif event == "ZT_REMOVE" then
        if type and aura_env.ztTypes[type] and allstates[watchID] then
            local state = allstates[watchID]
            state.show = false
            state.changed = true
            return true
        end
    end
end
