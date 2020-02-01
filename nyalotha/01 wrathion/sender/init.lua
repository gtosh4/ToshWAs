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

-- On Pull
aura_env.assigns.pull = {
    {players={"Sci", "Toshpal"}, spellid=wings},
}

-- Incineration
aura_env.isfake[306163] = function()
    local n = aura_env.count[306163]+1
    local cata = aura_env.count[306735]
    return n/2 > cata
end

aura_env.assigns[306163] = {
    [1] = {
        {players="Tehkz", spellid=rapture},
        {players="Tehkz", spellid=evang},
    },
    [2] = {
        {players={"Sci", "Toshpal"}, spellid=wings},
    },
    [3] = {
        {players="Tehkz", spellid=rapture},
        {players="Tehkz", spellid=evang},
    },
    [4] = {
        {players={"Sci", "Toshpal"}, spellid=wings},
    },
    [5] = {
        {players="Tehkz", spellid=rapture},
        {players="Tehkz", spellid=evang},
    },
    [6] = {
        {players={"Sci", "Toshpal"}, spellid=wings},
        {players="Tehkz", spellid=barrier},
    },
}

-- Cataclysm
aura_env.assigns[306735] = {
    [1] = {
        {players="Yellowy", spellid=salv},
        {players="Simbbaa", spellid=rally},
        {players="Sci", spellid=devo},
        {players="Andruww", spellid=darkness},
    },
    [2] = {
        {players="Yellowy", spellid=hymn},
        {players="Toshpal", spellid=devo},
        {players="Lyuneria", spellid=darkness},
    },
    [3] = {
        {players="Tehkz", spellid=barrier},
        {players="Simbbaa", spellid=rally},
        {players="Sci", spellid=devo},
        {players="Andruww", spellid=darkness},
    },
    [4] = {
        {players="Yellowy", spellid=hymn},
        {players="Toshpal", spellid=devo},
        {players="Lyuneria", spellid=darkness},
    },
    [5] = {
        {players="Yellowy", spellid=salv},
        {players="Simbbaa", spellid=rally},
        {players="Sci", spellid=devo},
        {players="Andruww", spellid=darkness},
    },
    [6] = {
        {players="Yellowy", spellid=hymn},
        {players="Toshpal", spellid=devo},
        {players="Lyuneria", spellid=darkness},
    },
}
