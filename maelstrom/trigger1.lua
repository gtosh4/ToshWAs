function(states, event, ...) -- UNIT_POWER_UPDATE,PLAYER_ENTERING_WORLD,PLAYER_SPECIALIZATION_CHANGED,COMBAT_LOG_EVENT_UNFILTERED
    local s = states[1] or {
        show=true,
        progressType="static",
        additionalProgress={
            { -- ES/EQ min bar
                min=60,
                max=61,
            },
            { -- Cast prediction overlay
                direction="forward",
                width=0,
            },
        },
    }
    states[1] = s
    
    if event == "UNIT_POWER_UPDATE"  then
        local uid, ptype = ...
        if uid and not UnitIsUnit("player", uid) then return end

    elseif event == "PLAYER_ENTERING_WORLD" or event == "PLAYER_SPECIALIZATION_CHANGED" then
        -- Pass through
        
    elseif event == "COMBAT_LOG_EVENT_UNFILTERED" then
        local args = {...}
        if UnitGUID("player") ~= args[4] then return end
        
        local subevent = args[2]
        
        if subevent == "SPELL_CAST_START" then
            local spellid = args[12]
            local generation = aura_env.generation[spellid]
            if generation then
                s.additionalProgress[2].width = generation
            end
            
        elseif subevent == "SPELL_CAST_SUCCESS" or subevent == "SPELL_CAST_FAILED" then
            s.additionalProgress[2].width = 0
            
        end
    else
        return
    end
    
    s.changed=true
    s.value=UnitPower("player", Enum.PowerType.Maelstrom)
    s.total=UnitPowerMax("player", Enum.PowerType.Maelstrom)
    return true
end

