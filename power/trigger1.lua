function(allstates) -- RUNE_POWER_UPDATE,UNIT_POWER_UPDATE,PLAYER_ENTERING_WORLD,PLAYER_SPECIALIZATION_CHANGED
    local power = aura_env.GetPower()
    
    if power then
        for i,v in ipairs(power) do
            local s = {
                changed = true,
                show = true,
                autoHide = false,
                colour = v.colour,
            }
            if v.value and v.total then
                s.progressType = "static"
                s.value = v.value
                s.total = v.total
                s.progress = s.value/s.total
            elseif v.duration and v.expirationTime then
                s.progressType = "timed"
                s.duration = v.duration
                s.expirationTime = v.expirationTime
                s.progress = (s.expirationTime-GetTime())/s.duration
                s.timed = true
            end
            allstates[i] = s
        end
    else
        for _,v in allstates do
            v.changed = true
            v.show = false
        end
    end
    ViragDevTool_AddData({power=power, allstates=allstates}, "power")
    return true
end

