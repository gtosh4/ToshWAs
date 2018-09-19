function(allstates, ...)
    for k,v in pairs(allstates) do
        v.show = false
        v.index = nil
        v.changed = true
    end

    for uid in aura_env.GroupMembers() do
        if UnitExists(uid) and UnitPower(uid) and UnitPower(uid) > 0 then
            local info = aura_env.inspectLib:GetCachedInfo(UnitGUID(uid))
            if info and aura_env.healSpecs[info.global_spec_id] then
                local name = UnitName(uid)
                local currMana, maxMana = UnitPower(uid), UnitPowerMax(uid)
                local pct = math.floor((currMana / maxMana)*100)
                local class = select(2, UnitClass(uid))
                local color = RAID_CLASS_COLORS[class]
                if allstates[name] then
                    allstates[name].show = true
                    allstates[name].value = currMana
                    allstates[name].total = maxMana
                    allstates[name].pct = pct
                    allstates[name].changed = true
                else
                    local colorStr = aura_env.RGBPercToHex(color.r, color.g, color.b)
                    allstates[name] = {
                        show = true,
                        changed = true,
                        progressType = "static",
                        value = currMana,
                        total = maxMana,
                        pct = pct,
                        autoHide = false,
                        name =  "|cFF"..colorStr..name.."|r",
                    }
                end
                if aura_env.config.sortby == "VALUE" then
                    allstates[name].index = aura_env.config.sortdir * pct or 0
                    allstates[name].resort = true
                elseif aura_env.config.sortby == "CLASS" then
                    allstates[name].index = class .. name
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
    [65] = true, -- Holy Paladin
    [256] = true, -- Discipline Priest
    [257] = true, -- Holy Priest
    [264] = true, -- Restoration Shaman
}

aura_env.inspectLib = LibStub:GetLibrary("LibGroupInSpecT-1.1",true)

--https://wago.io/profile/asakawa
--usage:
--for unit in aura_env.GroupMembers() do
-- --do stuff
--end
function aura_env.GroupMembers(reversed, forceParty)
    local unit  = (not forceParty and IsInRaid()) and 'raid' or 'party'
    local numGroupMembers = forceParty and GetNumSubgroupMembers()  or GetNumGroupMembers()
    local i = reversed and numGroupMembers or (unit == 'party' and 0 or 1)
    return function()
        local ret
        if i == 0 and unit == 'party' then
            ret = 'player'
        elseif i <= numGroupMembers and i > 0 then
            ret = unit .. i
        end
        i = i + (reversed and -1 or 1)
        return ret
    end
end

function aura_env.RGBPercToHex(r, g, b)
    r = r <= 1 and r >= 0 and r or 0
    g = g <= 1 and g >= 0 and g or 0
    b = b <= 1 and b >= 0 and b or 0
    return string.format("%02x%02x%02x", r*255, g*255, b*255)
end
