function(event)
    if event == "ENCOUNTER_START" then
        aura_env:reset()
        aura_env.encounter_start = GetTime()
    end
end
