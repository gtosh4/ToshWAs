function(allstates, event, ...) -- COMBAT_LOG_EVENT_UNFILTERED,ENCOUNTER_START
  local args = {...}
  local state = allstates[1]
  if state == nil then
    state = {
      show = true,
      changed = true,
      progressType = "timed",
      autoHide = false,
      name = "rippling_wave",

      stacks = 0,
      spellId = aura_env.config.spellid,
    }
    allstates[1] = state
  end

  local subevent = args[2]
  if event == 'COMBAT_LOG_EVENT_UNFILTERED' and subevent == 'SPELL_CAST_START' and args[12] == aura_env.config.spellid then
    state.stacks = (state.stacks or 0) + 1
  elseif event == 'ENCOUNTER_START' then
    state.stacks = 0
  end
  return true
end
