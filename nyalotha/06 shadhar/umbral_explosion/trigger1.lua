function(allstates, event, ...) --ENCOUNTER_START,ENCOUNTER_END,UMBRAL_EXPLOSION
    local s
    if event == 'ENCOUNTER_START' and ... then
        aura_env.count = 0
        aura_env.start_time = GetTime()
        
    elseif event == 'ENCOUNTER_END' and ... then
        aura_env.start_time = nil
        s = {
            show = false,
            changed = true,
        }
    end
        
    if (event == 'UMBRAL_EXPLOSION' or event == 'ENCOUNTER_START') and ... then
        aura_env.count = aura_env.count + 1
        if aura_env.count > 14 then 
            s = {
                show = false,
                changed = true,
            }
        else
            local next_eruption = aura_env.timings[aura_env.count]
            local fight_time = GetTime() - aura_env.start_time
            local duration = next_eruption - fight_time
            
            s = {
                show = true,
                changed = true,
                autoHide = true,
                
                progressType = "timed",
                duration = duration,
                expirationTime = aura_env.start_time + next_eruption,
                stacks = aura_env.count,
            }
        end
    end
    if s then allstates[1] = s end
    
    if s and (s.show and s.duration) then
        C_Timer.After(s.duration, function() WeakAuras.ScanEvents('UMBRAL_EXPLOSION', aura_env.start_time) end)
    end
    
    return true
end
