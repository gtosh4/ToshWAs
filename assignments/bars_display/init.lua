LibStub("AceEvent-3.0").RegisterMessage(WeakAuras, "TOSH_ASSIGN_TIMER", function(event, ...)
    WeakAuras.ScanEvents(event, ...)
end)
