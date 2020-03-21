function(allstates, event, id, players, args) -- TOSH_ASSIGN_NP
    if event ~= 'TOSH_ASSIGN_NP' then return end
    if not args then return end

    if not players[UnitName("player")] then return end
    local unit = aura_env:NameplateForGUID(args.guid)
    if not unit then return end

    local state = {
        autoHide = true,
        progressType = 'timed',
        show = true,
        changed = true,
    
        duration = args.duration,
        expirationTime = GetTime()+args.duration,
    
        unit = unit,
        icon = args.icon or select(3, GetSpellInfo(args.spellid)),
    }

    allstates[id] = state
    
    return true
end
