function(allstates, event, ...) -- COMBAT_LOG_EVENT_UNFILTERED
  local args = {...}
  local subevent = args[2]
  local state = allstates[0]
  if state == nil then
    state = {
      show = false,
      changed = false,
      progressType = "timed",
      autoHide = false,
      icon = 237561,
      name = "crushing_doubt",

      -- Condition variables
      dispel = false,
      roll = false,
    }
    allstates[0] = state
  end
  if subevent == "SPELL_AURA_APPLIED" and aura_env.crushing_doubt_spellid == args[12] then
    local now = GetTime()
    if aura_env.last_crushing == nil or now > aura_env.last_crushing+10 then
      aura_env.last_crushing = now
      if aura_env.skip_next then
        aura_env.skip_next = false
      else
        aura_env.crush_num = (aura_env.crush_num or 0) + 1
        local unit = args[8]
        aura_env:Crushing(unit, state)
      end
    end

  elseif subevent == "SPELL_AURA_REMOVED" and aura_env.crushing_doubt_spellid == args[12] then
    if aura_env:NoCrushings() then
      state.show = false
      state.changed = true
      state.icon = 237561
      state.display = nil
    end

  elseif subevent == "SPELL_CAST_START" and aura_env.witness_the_end_spellid == args[12] then
    local now = GetTime()
    if aura_env.last_crushing == nil or now > aura_env.last_crushing+10 then
      aura_env.skip_next = true
      aura_env.crush_num = (aura_env.crush_num or 0) + 1
      local unit = args[8]
      aura_env:Crushing(unit, state)
    end

  elseif subevent == "SPELL_CAST_SUCCESS" and aura_env.storm_spellid == args[12] then
    local now = GetTime()
    if aura_env.last_crushing == nil or now > aura_env.last_crushing+10 then
      aura_env.skip_next = true
      aura_env.crush_num = (aura_env.crush_num or 0) + 1
      local unit = args[8]
      aura_env:Crushing(unit, state)
    end

  end
  return true
end
