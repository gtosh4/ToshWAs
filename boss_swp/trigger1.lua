function(allstates, event, ...) -- COMBAT_LOG_EVENT_UNFILTERED,COMBAT_LOG_EVENT_UNFILTERED,PLAYER_REGEN_DISABLED,PLAYER_REGEN_ENABLED
  local args = {...}

  if event ~= 'COMBAT_LOG_EVENT_UNFILTERED' then return end

  local subevent = args[2]
  if subevent == 'SPELL_AURA_APPLIED' then
    local guid = args[8]
    local spellid = args[12]
    if spellid ~= 589 and spellid ~= 204213 then return end

    local state = allstates[guid]

    if state then
      state.show = false
      state.changed = true

      return true
    end

  elseif subevent == 'SPELL_AURA_REMOVED' then
    local guid = args[8]
    local spellid = args[12]
    if spellid ~= 589 and spellid ~= 204213 then return end
    local uid = aura_env.tanks[guid]

    if uid then
      allstates[guid] = {
        progressType = "static",
        autoHide = false,
        changed = true,
        unit = uid,
        frame = aura_env.GetFrame(uid),
        show = true,
      }
    end

    return true
  end
end
