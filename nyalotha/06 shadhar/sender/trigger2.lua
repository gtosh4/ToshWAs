function(event)
    if event == "ENCOUNTER_START" then
        aura_env:reset()
        aura_env.encounter_start = GetTime()
        if aura_env.outburst_ticker then
            WeakAuras.timer:CancelTimer(aura_env.outburst_ticker)
        end
        aura_env.outburst_ticker = WeakAuras.timer:ScheduleRepeatingTimer(
            function() WeakAuras.ScanEvents('SHADHAR_OUTBURST') end,
            30
        )
    end
end
