local config = aura_env.config
local cDisplay = config["display"]
local cRegType = config["reg"]["type"]
local cRegSpell = config["reg"]["spell"]

local sharedConfigSpellIDs = {
    ["ArcaneTorrent"] = {202719, 50613, 80483, 28730, 129597, 155145, 232633, 25046, 69179},
    ["Asphyxiate"] = {221562, 108194},
    ["Evasion/Riposte"] = {5277, 199754},
    ["Ascendance"] = {114050, 114051},
    ["Bladestorm"] = {227847, 46924},
}

-- Collecting registration information
aura_env.types = {}
aura_env.regTypes = {}
aura_env.spells = {}
aura_env.regSpells = {}

for key,value in pairs(cRegType) do
    if value then        
        if key:find("enabled") == 1 then
            local type = key:sub(8)
            aura_env.types[type] = true
        end
    end
end

for type,group in pairs(cRegSpell) do
    for key,value in pairs(group) do
        if value then
            local spellID = tonumber(key)
            if spellID then
                aura_env.spells[spellID] = true
            else
                for _,spellID in ipairs(sharedConfigSpellIDs[key]) do
                    aura_env.spells[spellID] = true
                end
            end
        end
    end
end

for type,_ in pairs(aura_env.types) do tinsert(aura_env.regTypes, type) end
for spellID,_ in pairs(aura_env.spells) do tinsert(aura_env.regSpells, spellID) end
