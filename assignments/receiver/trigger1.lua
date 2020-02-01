function(allstates, event, prefix, msg, channel, sender) -- CHAT_MSG_ADDON
    -- ViragDevTool_AddData({event=event, prefix=prefix, msg=msg, channel=channel, sender=sender}, "test")
    if event ~= 'CHAT_MSG_ADDON' or prefix ~= 'TOSH_ASSIGN' then return end
    local id, players, time_until, icon, spellid, text = aura_env:decode(msg)

    if not icon and spellid then
        icon = select(3, GetSpellInfo(spellid))
    end

    local data = {
        id=id,
        players=players,
        time_until=time_until,
        icon=icon,
        spellId=spellid,
        text=text,
    }
    aura_env.debug(data, "TOSH_ASSIGN receive")

    WeakAuras.ScanEvents("TOSH_ASSIGN", data)
end
