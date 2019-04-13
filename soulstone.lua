function(allstates, event, ...)
    aura_env.update_warlocks()
    return aura_env.checkRaid(allstates)
end

function(allstates, event, ...)
    if event == 'COMBAT_LOG_EVENT_UNFILTERED' then
        local info = { ... }
        if info[2] == 'SPELL_AURA_APPLIED' and info[12] == aura_env.spellId then
          print(unpack(info))
            for wl in pairs(allstates) do
              if UnitIsUnit(wl, info[4]) then
                print("found", wl, "=", info[4])
                allstates[wl].show = false
                allstates[wl].changed = false
                return true
              end
            end
        end
    end
end

aura_env.spellId = 20707

function aura_env.update_warlocks()
    aura_env.warlocks = {}
    for uid in WA_IterateGroupMembers() do
        if select(3, UnitClass(uid)) == 9 then
            aura_env.warlocks[#aura_env.warlocks+1] = uid
        end
    end
end

function aura_env.checkRaid(allstates)
    for k,v in pairs(allstates) do
        v.show = false
        v.changed = true
    end
    if not aura_env.warlocks then return end

    local needs = {}
    for _, wl in pairs(aura_env.warlocks) do
        needs[wl] = true
    end
    for uid in WA_IterateGroupMembers() do
        aura_env.checkUnit(needs, uid)
    end
    
    local show = false
    for wl, need in pairs(needs) do
        show = true
        if need then
            allstates[wl] = {
                show = true,
                changed = true,
                autoHide = false,
                icon = select(3, GetSpellInfo(aura_env.spellId)),
                spellId = aura_env.spellId,
                name = UnitName(wl),
            }
        else
            allstates[wl] = {
                show = false,
                changed = true,
            }
        end
    end
    return show
end

function aura_env.checkUnit(needs, uid)
    if not uid then return end
    for i=1,40 do
        local info = { UnitBuff(uid, i) }
        if not info[1] then return end
        if info[10] == aura_env.spellId then
            for wl in pairs(needs) do
                if UnitIsUnit(info[7], wl) then
                    needs[wl] = false
                    return
                end
            end
        end
    end
end
