aura_env.crushing_doubt_spellid = 282432
aura_env.witness_the_end_spellid = 282621
aura_env.storm_spellid = 282742

function aura_env:Crushing(unit, state)
  if self.config.dispel[self.crush_num] then
    if self.config.dispel_target and self.config.dispel_target ~= "" then
      state.icon = 135894
      state.display = self.config.dispel_target
      state.dispel = true
      state.show = true
      state.changed = true
    end

  elseif self.config.personal1[self.crush_num] then
    if self.config.personal1_spell and self.config.personal1_spell ~= "" then
      state.icon = select(3, GetSpellInfo(self.config.personal1_spell))
      state.roll = true
      state.show = true
      state.changed = true
    end

  elseif self.config.personal2[self.crush_num] then
    if self.config.personal2_spell and self.config.personal2_spell ~= "" then
      state.icon = select(3, GetSpellInfo(self.config.personal2_spell))
      state.roll = true
      state.show = true
      state.changed = true
    end
  end

  _, _, _, _, state.duration, state.expirationTime = WA_GetUnitDebuff(unit, self.crushing_doubt_spellid)
end

function aura_env:NoCrushings()
  for unit in WA_IterateGroupMembers() do
    local n = WA_GetUnitDebuff(unit, self.crushing_doubt_spellid)
    if n then
      return false
    end
  end
  return true
end
