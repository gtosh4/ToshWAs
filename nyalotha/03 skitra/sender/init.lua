aura_env.count = setmetatable({}, {__index=function() return 0 end})
function aura_env:reset()
    table.wipe(self.count)
end

aura_env.assigns = {}

aura_env.isfake = setmetatable({}, {__index=function() return function() return false end end})

local rapture, evang, barrier = 47536, 246287, 62618
local wings, devo = 31884, 31821
local salv, hymn = 265202, 64843
local rally = 97462
local darkness = 196718

-- Shred Psyche / Outburst
aura_env.isfake[307950] = function()
    local n = aura_env.count[306163]+1
    local p2 = aura_env.count[313239]
    return n > p2
end

aura_env.assigns[307950] = {
    [1] = {
        {players="Tehkz", spellid=rapture, delay=(5+7)},
        {players="Tehkz", spellid=barrier, delay=(5+7)},
        {players="Yellowy", spellid=hymn, delay=(5+7)},
        {players="Lyuneria", spellid=darkness, delay=(5+7)},
    },
    [2] = {
        {players="Toshpal", spellid=devo, delay=(5+7)},
        {players="Simbbaa", spellid=rally, delay=(5+7)},
        {players="Tehkz", spellid=evang, delay=(5+7)},
    },
    [3] = {
        {players="Sci", spellid=devo, delay=(5+7)},
        {players="Tehkz", spellid=rapture, delay=(5+7)},
        {players="Andruww", spellid=darkness, delay=(5+7)},
    },
    [4] = {
        {players="Tehkz", spellid=evang, delay=(5+7)},
        {players="Tehkz", spellid=barrier, delay=(5+7)},
        {players="Lyuneria", spellid=darkness, delay=(5+7)},
    },
    [5] = {
        {players="Toshpal", spellid=devo, delay=(5+7)},
        {players="Simbbaa", spellid=rally, delay=(5+7)},
        {players="Tehkz", spellid=rapture, delay=(5+7)},
    }
}

-- Illusions
aura_env.assigns[313239] = {
    [1] = {
        {players={"Sci", "Toshpal"}, spellid=wings},
    },
    [2] = {
        {players={"Sci", "Toshpal"}, spellid=wings},
    },
    [3] = {
        {players={"Sci", "Toshpal"}, spellid=wings},
        {players="Yellowy", spellid=hymn},
    },
    [4] = {
        {players={"Sci", "Toshpal"}, spellid=wings},
        {players="Yellowy", spellid=salv},
    },
}
