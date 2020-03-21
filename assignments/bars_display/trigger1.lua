function(allstates, event, id, players, args) -- TOSH_ASSIGN_TIMER
    if event ~= 'TOSH_ASSIGN_TIMER' then return end
    if not args then return end

    local state = {
        autoHide = true,
        progressType = 'timed',
    }
    state.show = true
    state.changed = true

    state.duration = args.duration
    state.expirationTime = GetTime()+args.duration

    state.spellId = args.spellid
    state.icon = args.icon or select(3, GetSpellInfo(args.spellid))

    state.text = args.text

    local me = UnitName("player")
    for _, p in pairs(players) do
        local s = setmetatable({}, {__index=state})
        s.name = p
        
        if not aura_env.config.only_me or p == me then
            s.mine = (p == me)
            allstates[id..":"..p] = s
        end
    end
    
    return true
end
