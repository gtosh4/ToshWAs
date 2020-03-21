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

-- Ancient Curse
aura_env.isfake[314337] = function()
    local n = aura_env.count[314337]+1
    local p2 = aura_env.count[305722]
    return n/2 > p2
end
aura_env.assigns[314337] = {
    [1] = {
        {players="Sci", spellid=wings},
        {players="Toshpal", spellid=devo},
        {players="Simbbaa", spellid=rally},
        {players="Tehkz", spellid=rapture},
        {players="Tehkz", spellid=evang},
    },
    [2] = {
        {players="Tehkz", spellid=barrier},
        {players="Andruww", spellid=darkness},
        {players="Toshpal", spellid=wings},
        {players="Sci", spellid=devo},
    },
    [3] = {
        {players="Sci", spellid=wings},
        {players="Toshpal", spellid=devo},
        {players="Simbbaa", spellid=rally},
        {players="Lyuneria", spellid=darkness},
    },
    [4] = {
        {players="Toshpal", spellid=wings},
        {players="Sci", spellid=devo},
        {players="Tehkz", spellid=rapture},
        {players="Tehkz", spellid=evang},
    },
    [5] = {
        {players="Sci", spellid=wings},
        {players="Toshpal", spellid=devo},
        {players="Simbbaa", spellid=rally},
        {players="Tehkz", spellid=barrier},
        {players="Andruww", spellid=darkness},
    },
    [6] = {
        {players="Toshpal", spellid=wings},
        {players="Sci", spellid=devo},
        {players="Lyuneria", spellid=darkness},
    }
}

-- Obsidian Skin
aura_env.assigns[305722] = {
    [1] = {
        {players="Sci", spellid=wings, duration=10},
        {players="Yellowy", spellid=hymn, duration=10},
        {players="Tehkz", spellid=rapture, duration=10},
        {players="Tehkz", spellid=evang, duration=10},
        {players="Pluie", spellid=incarn, duration=10},

        {players="Yellowy", spellid=salv, duration=40},
        {players="Pluie", spellid=tranq, duration=40},
    },
    [2] = {
        {players="Sci", spellid=wings, duration=10},
        {players="Yellowy", spellid=hymn, duration=10},
        {players="Pluie", spellid=incarn, duration=10},
        
        {players="Pluie", spellid=tranq, duration=40},
        {players="Tehkz", spellid=rapture, duration=40},
        {players="Tehkz", spellid=evang, duration=40},
    }
}
