aura_env.count = setmetatable({}, {__index=function() return 0 end})
function aura_env:reset()
    table.wipe(self.count)
end

function aura_env:combat_time()
    return self.encounter_start and (GetTime() - self.encounter_start) or 0
end

aura_env.assigns = {}

aura_env.isfake = setmetatable({}, {__index=function() return function() return false end end})

local rapture, evang, barrier = 47536, 246287, 62618
local wings, devo = 31884, 31821
local salv, hymn = 265202, 64843
local rally = 97462
local darkness = 196718
local incarn, tranq = 33891, 740


-- Frenzy
local frenzy = {
    [1] = {
        {players="Yellowy", spellid=salv},
        {players="Pluie", spellid=tranq},
    },
    [2] = {
        {players="Tehkz", spellid=rapture},
        {players="Tehkz", spellid=evang},
        {players="Simbbaa", spellid=rally},
    },
    [3] = {
        {players={"Sci", "Toshpal"}, spellid=wings},
    },
    [4] = {
        {players="Tehkz", spellid=rapture},
        {players="Tehkz", spellid=evang},
        {players="Sci", spellid=devo},
    },
    [5] = {
        {players="Toshpal", spellid=devo},
        {players="Lyuneria", spellid=darkness},
        {players="Simbbaa", spellid=rally},
        {players="Yellowy", spellid=hymn},
    },
    [6] = {
        {players="Yellowy", spellid=salv},
        {players="Pluie", spellid=tranq},
        {players="Tehkz", spellid=rapture},
        {players="Tehkz", spellid=evang},
    },
}

-- On Pull
aura_env.assigns.pull = {
    frenzy[1],
}

-- Tek'ris : Frenzy
aura_env.assigns[307213] = {
    -- This goes by BigWigs bars not casts. The first frenzy is on pull and does not get a bar.
    [1] = frenzy[3],
    [2] = frenzy[5],
}

-- Ka'zir : Frenzy
aura_env.assigns[307201] = {
    [1] = frenzy[2],
    [2] = frenzy[4],
    [3] = frenzy[6],
}

-- Resonance
local darter_timings = {
    90, 180, 240, 300, 420
}
aura_env.isfake[307217] = function(state)
    local n = aura_env.count[307217]+1
    return aura_env:combat_time() <= darter_timings[n]
end
aura_env.assigns[307217] = {
    [1] = {
        {players={"Sci", "Toshpal"}, spellid=wings},
        {players="Tehkz", spellid=barrier},
        {players="Andruww", spellid=darkness},
    },
    [2] = {
        {players="Tehkz", spellid=rapture},
        {players="Tehkz", spellid=evang},
    },
    [3] = {
        {players="Pluie", spellid=tranq},
    },
    [4] = {
        {players={"Sci", "Toshpal"}, spellid=wings},
        {players="Tehkz", spellid=barrier},
        {players="Andruww", spellid=darkness},
    },
    [5] = {
        {players={"Sci", "Toshpal"}, spellid=wings},
    },
}

-- 
aura_env.assigns[314583] = {
    [1] = {
    },
    [2] = {
    },
}
