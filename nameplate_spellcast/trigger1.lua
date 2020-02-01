function(allstates, event, ...) -- COMBAT_LOG_EVENT_UNFILTERED
    if event ~= 'COMBAT_LOG_EVENT_UNFILTERED' then return end
    local args = {...}

    if args[2] ~= 'SPELL_CAST_SUCCESS' then return end
    if args[12] ~= tonumber(aura_env.config.spellid) then return end
    -- ViragDevTool_AddData({event=event, args=args}, "np cast test")
    local unit
    for i=1,40 do
        local np = "nameplate"..i
        if args[4] == UnitGUID(np) then
            unit = np
            break
        end
    end
    if not unit then return end
    if not UnitIsEnemy("player", unit) then return end

    local state = {
        show = true,
        changed = true,
        autoHide = true,

        progressType = 'timed',
        duration = aura_env.config.duration,
        expirationTime = GetTime() + aura_env.config.duration,

        spellId = args[12],
        icon = select(3, GetSpellInfo(args[12])),

        unit = unit,
    }
    -- ViragDevTool_AddData({state=state, np=np}, "np cast state")
    allstates[args[4]] = state
    return true
end
