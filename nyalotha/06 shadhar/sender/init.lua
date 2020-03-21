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
aura_env.assigns[318078] = {
    [1] = {
        {players="Toshpal", spellid=wings, delay=5},
    },
    [2] = {
        {players="Tehkz", spellid=rapture, delay=5},
        {players="Tehkz", spellid=evang, delay=5},
    },
    [3] = {
        {players="Pluie", spellid=incarn, delay=5},
        {players="Simbbaa", spellid=rally, delay=5},
    },
    [4] = {
        {players="Yellowy", spellid=hymn, delay=5},
        {players="Andruww", spellid=darkness, delay=5},
    },
    [5] = {
        {players="Pluie", spellid=tranq, delay=5},
        {players="Lyuneria", spellid=darkness, delay=5},
    },
    [9] = {
        {players="Sci", spellid=devo, delay=5},
    },
    [10] = {
        {players="Toshpal", spellid=devo, delay=5},
    },
    [11] = {
        {players="Tehkz", spellid=barrier, delay=5},
    },
    [15] = {
        {players="Yellowy", spellid=salv, delay=5},
    },
}
