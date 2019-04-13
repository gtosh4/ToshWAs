--[[
  {
    isplayer = {
        display = "is player",
        type = "bool",
    },
    classid = {
        display = "Class",
        type = "string",
    },
    pct = {
        display = "Mana Percent",
        type = "number",
    }
  }
]]

function(allstates, ...)
    for k,v in pairs(allstates) do
        v.show = false
        v.index = nil
        v.changed = true
    end

    local sortby = aura_env.config.sortby
    local playerguid = UnitGUID("player")
    for uid in WA_IterateGroupMembers() do
        if UnitExists(uid) and UnitIsVisible(uid) then
            local currMana, maxMana = UnitPower(uid), UnitPowerMax(uid)
            local info = aura_env.inspectLib:GetCachedInfo(UnitGUID(uid))
            if info and aura_env.healSpecs[info.global_spec_id] and currMana and currMana > 0 then
                local name = UnitName(uid)
                local pct = math.floor((currMana / maxMana)*100)
                local class = select(2, UnitClass("player"))

                local state = allstates[info.guid]
                if not state then
                    allstates[info.guid] = {
                        progressType = "static",
                        autoHide = false,
                        display = WA_ClassColorName(uid),

                        -- Condition variables
                        classid = class,
                        isplayer = (playerguid == info.guid),
                    }
                    state = allstates[info.guid]
                end
                state.show = true
                state.value = currMana
                state.total = maxMana
                state.pct = pct
                state.changed = true

                if sortby == "VALUE" then
                    state.index = aura_env.config.sortdir * pct or 0
                    state.resort = true
                elseif sortby == "CLASS" then
                    state.index = class .. name
                end
            end
        end
    end

    return true
end

aura_env.config = {
    sortby = "VALUE", -- or "CLASS"
    sortdir = -1, --  -1 = ascending; 1 = descending. Only used for VALUE sorting
}

aura_env.healSpecs = {
    [105] = true, -- Restoration Druid
    [270] = true, -- Mistweaver Monk
    [65]  = true, -- Holy Paladin
    [256] = true, -- Discipline Priest
    [257] = true, -- Holy Priest
    [264] = true, -- Restoration Shaman
}

aura_env.inspectLib = LibStub:GetLibrary("LibGroupInSpecT-1.1",true)
