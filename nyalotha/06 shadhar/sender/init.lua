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
local incarn, tranq = 33891, 740

-- On Pull
aura_env.assigns.pull = {
    {players="Sci", spellid=wings},
}

-- Outburst
aura_env.assigns[307240] = {
    [1] = {
        {players="Toshpal", spellid=wings},
    },
    [2] = {
        {players="Tehkz", spellid=rapture},
        {players="Tehkz", spellid=evang},
    },
    [3] = {
        {players="Pluie", spellid=incarn},
        {players="Simbbaa", spellid=rally},
    },
    [4] = {
        {players="Yellowy", spellid=hymn},
        {players="Andruww", spellid=darkness},
    },
    [5] = {
        {players="Pluie", spellid=tranq},
        {players="Lyuneria", spellid=darkness},
    },
    [9] = {
        {players="Sci", spellid=devo},
    },
    [10] = {
        {players="Toshpal", spellid=devo},
    },
    [11] = {
        {players="Tehkz", spellid=barrier},
    },
    [15] = {
        {players="Yellowy", spellid=salv},
    },
}
