function(allstates, event, ...) -- PLAYER_ENTERING_WORLD,UNIT_POWER_UPDATE,RAID_ROSTER_UPDATE
    local sortby = aura_env.config.sortby
    for uid in WA_IterateGroupMembers() do
        if UnitExists(uid) and UnitIsVisible(uid) then
            local currMana, maxMana = UnitPower(uid), UnitPowerMax(uid)
            local info = aura_env.inspectLib:GetCachedInfo(UnitGUID(uid))
            if info and aura_env.healSpecs[info.global_spec_id] and currMana and currMana > 0 then
                local name = UnitName(uid)
                local pct = math.floor((currMana / maxMana)*100)
                local class = select(2, UnitClass(uid))

                local state = allstates[info.guid]
                if not state then
                    allstates[info.guid] = {
                        progressType = "static",
                        unit = uid,
                        autoHide = false,
                        display = WA_ClassColorName(uid),

                        -- Condition variables
                        classid = class,
                        isplayer = UnitIsUnit(uid, "player"),
                    }
                    state = allstates[info.guid]
                end
                state.show = true
                state.value = currMana
                state.total = maxMana
                state.pct = pct
                state.changed = true

                if sortby == 1 then
                    state.index = pct or 0
                    state.resort = true
                elseif sortby == 2 then
                    state.index = class .. name
                end

                if state.isplayer then
                    aura_env.AdditionalProgress(state)
                end
            end
        end
    end
    for _, state in pairs(allstates) do
        if not UnitExists(state.unit) or not UnitIsVisible(state.unit) then
            state.show = false
            state.changed = true
        end
    end

    return true
end
