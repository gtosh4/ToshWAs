function(allstates, event, args) -- TOSH_ASSIGN
    if event ~= 'TOSH_ASSIGN' then return end
    if not args then return end


    local state = allstates[args.id] or {
        autoHide = true,
        progressType = 'timed',
    }
    state.show = true
    state.changed = true

    state.duration = args.time_until
    state.expirationTime = GetTime()+args.time_until

    state.icon = args.icon
    state.spellId = args.spellId

    state.text = args.text

    local me = UnitName("player")
    for p in pairs(args.players) do
        local s = setmetatable({}, {__index=state})
        s.name = p
        
        if not aura_env.config.only_me or p == me then
            s.mine = (p == me)
            allstates[args.id..":"..p] = s
        end
    end
    
    return true
end
