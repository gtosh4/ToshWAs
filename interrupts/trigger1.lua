function(allstates, event, ...) -- ZT_ADD,ZT_TRIGGER,ZT_REMOVE,COMBAT_LOG_EVENT_UNFILTERED
    if event == "ZT_ADD" then
        local type, watchID, member, spellID = ...
        
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
            
            WeakAuras.ScanEvents("ZT_REGISTER", "INTERRUPT", aura_env.region.id)
        elseif type == "INTERRUPT" then
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
            state.guid = member.GUID
            state.spellid = spellID

            -- Custom Vars
            state.isplayer = aura_env:IsPlayer(member)
            
            allstates[watchID] = state
            aura_env.watches[state.guid][state.spellid] = watchID
            
            return true
        end

    elseif event == "ZT_TRIGGER" then
        local type, watchID, duration, expiration = ...
        
        local state = allstates[watchID]
        if type == "INTERRUPT" and state then
            state.changed = true
            state.duration = duration
            state.expirationTime = expiration
            if expiration > GetTime() then
                print("cast", watchID)
                if state.interrupted == nil then
                    state.interrupted = false
                end
            else
                state.interrupted = nil
            end
            return true
        end

    elseif event == "COMBAT_LOG_EVENT_UNFILTERED" then
        local subevent = select(2,...)
        if subevent ~= "SPELL_INTERRUPT" then return end
      
        local sourceGUID = aura_env.owner(select(4,...))
        local spellId = select(12,...)
      
        local watchID = aura_env.watches[sourceGUID][spellId]
        if not watchID then return end
        
        print("interrupt", watchID)
      
        local state = allstates[watchID]
        if not state then
          print("state not found", watchID)
          for i, s in pairs(allstates) do
            print("state", i, s.name, s.interrupted or "nil")
          end
          return
        end
      
        state.interrupted = true
        state.changed = true
      
        return true

    elseif event == "ZT_REMOVE" then
        local type, watchID = ...
        local state = allstates[watchID]
        if state then
            state.show = false
            state.changed = true
            aura_env.watches[state.guid][state.spellid] = nil
            return true
        end
    end
end
