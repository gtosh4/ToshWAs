if not aura_env.state then return end

-- Sometimes, the spellId is actually the spell name
local spellid = select(7, GetSpellInfo(aura_env.state.spellId))
local assigns = aura_env.assigns[spellid]
if not assigns then return end

