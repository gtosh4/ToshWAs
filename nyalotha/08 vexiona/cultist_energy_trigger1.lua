function(allstates, event, unit, ...) -- NAME_PLATE_UNIT_ADDED,NAME_PLATE_UNIT_REMOVED,UNIT_POWER_UPDATE
    if event == "UNIT_POWER_UPDATE" or event == "NAME_PLATE_UNIT_ADDED" then
        if unit then
            local guid = UnitGUID(unit)
            local npcid = select(6,strsplit("-", guid))
            if aura_env.config.npcid == npcid then
                local c, m = UnitPower(unit), UnitPowerMax(unit)
                if c/m > aura_env.config.threshold then
                    allstates[guid] = {
                        unit = unit,
                        show = true,
                        changed = true,
                        autoHide = false,
                    }

                elseif allstates[guid] then
                    allstates[guid].show = false
                    allstates[guid].changed = true
                end
            end
        end

    elseif event == "NAME_PLATE_UNIT_REMOVED" then
        if unit then
            local guid = UnitGUID(unit)
            if allstates[guid] then
                allstates[guid].show = false
                allstates[guid].changed = true
            end
        end

    end
    return true    
end
