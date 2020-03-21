function(allstates, event, id, players, args) -- TOSH_ASSIGN_UF
    if event ~= 'TOSH_ASSIGN_UF' then return end
    if not args then return end

    if not players[UnitName("player")] then return end

    local state = {
        autoHide = true,
        progressType = 'timed',
        show = true,
        changed = true,
    
        duration = args.duration,
        expirationTime = GetTime()+args.duration,
    
        unit = args.uid,
        category = args.category,
    }

    allstates[id] = state
    
    return true
end
