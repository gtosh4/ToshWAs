function(allstates, event, ...) -- WA_DELAYED_PLAYER_ENTERING_WORLD,COMBAT_LOG_EVENT_UNFILTERED,TOSH_UNWAVERING_WARD
    local args = {...}
    if event == 'COMBAT_LOG_EVENT_UNFILTERED' then
        local source = args[4]
        if source ~= aura_env.playerguid then return end

        local subevent = args[2]
        if not aura_env.subevents[subevent] then return end
        
        local spellID = args[12]
        if spellID ~= aura_env.spellid then return end
        

        local dest = args[8]
        -- Since there's travel time, to get an accurate timer only use the self one
        if dest ~= aura_env.playerguid then return end


        local state = allstates[1] or setmetatable({}, {__index=aura_env.basestate})
        aura_env:UpdateState(state, event)
        allstates[1] = state
        return true

    elseif event == 'TOSH_UNWAVERING_WARD' or event == 'WA_DELAYED_PLAYER_ENTERING_WORLD' then
        local state = allstates[1] or setmetatable({}, {__index=aura_env.basestate})
        aura_env:UpdateState(state, event)
        allstates[1] = state
        return true

    end
end
