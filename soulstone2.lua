-- PLAYER_ENTERING_WORLD,GROUP_ROSTER_UPDATE,RAID_ROSTER_UPDATE,GROUP_JOINED,GROUP_LEFT,PLAYER_REGEN_ENABLED,COMBAT_LOG_EVENT_UNFILTERED
function(event)
    aura_env.update_warlocks()
    aura_env.needs = {}

    if event ~= 'COMBAT_LOG_EVENT_UNFILTERED' then
        for v in ipairs(aura_env.warlocks) do aura_env.needs[v] = true end
    end

    if event == 'COMBAT_LOG_EVENT_UNFILTERED' then
        local info = { ... }
        if info[2] == 'SPELL_AURA_APPLIED' and info[12] == aura_env.spellId then
            aura_env.needs[info[4]] = nil
        end
    end
end

aura_env.spellId = 20707

function aura_env.update_warlocks()
    aura_env.warlocks = {}
    for uid in WA_IterateGroupMembers() do
        if select(3, UnitClass(uid)) == 9 then
            aura_env.warlocks[#aura_env.warlocks+1] = UnitGUID(uid)
        end
    end
end
