function(allstates, event, ...) -- COMBAT_LOG_EVENT_UNFILTERED,PLAYER_REGEN_DISABLED,PLAYER_REGEN_ENABLED
  local args = {...}

  if event == 'COMBAT_LOG_EVENT_UNFILTERED' then
    local subevent = args[2]
    if subevent == 'SPELL_AURA_APPLIED' then
      local guid = args[8]
      local spellid = args[12]
      if spellid ~= 194384 then return end

      local state = allstates[guid]

      if state then
        state.show = false
        state.changed = true

        return true
      end

  elseif subevent == 'SPELL_AURA_REMOVED' then
    local guid = args[8]
    local spellid = args[12]
    if spellid ~= 194384 then return end
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

  elseif event == 'PLAYER_REGEN_DISABLED'  then
    aura_env.tanks = {}
    for uid in WA_IterateGroupMembers() do

      if UnitExists(uid) and UnitIsVisible(uid) and UnitGroupRolesAssigned(uid) == 'TANK' then
        local guid = UnitGUID(uid)
        aura_env.tanks[guid] = uid

        allstates[guid] = {
          progressType = "static",
          autoHide = false,
          changed = true,
          unit = uid,
          frame = aura_env.GetFrame(uid),
          show = WA_GetUnitBuff(uid, 'Atonement', 'PLAYER') == nil,
        }
      end
    end
    return true

  elseif event == 'PLAYER_REGEN_ENABLED' then
    for _,v in pairs(allstates) do
      v.show = false
      v.changed = true
    end

    return true
  end
end
