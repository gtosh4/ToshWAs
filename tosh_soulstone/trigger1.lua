function(allstates, event, ...) -- COMBAT_LOG_EVENT_UNFILTERED,GROUP_ROSTER_CHANGED,WA_DELAYED_PLAYER_ENTERING_WORLD
  local args = {...}
  
  if event == 'COMBAT_LOG_EVENT_UNFILTERED' then
    local subevent = args[2]

    if subevent == 'SPELL_AURA_APPLIED' then
      local guid = args[4]
      local spellid = args[12]
      if spellid ~= 20707 then return end

      local state = allstates[guid]

      if state then
        state.show = false
        state.changed = true

        return true
      end

    elseif subevent == 'SPELL_AURA_REMOVED' then
      local guid = args[4]
      local spellid = args[12]
      if spellid ~= 20707 then return end
      local uid = aura_env.warlocks[guid]

      if uid then
        allstates[guid] = {
          progressType = "static",
          autoHide = false,
          changed = true,
          unit = uid,
          show = true,
          name = UnitName(guid),
        }
      end

      return true
    end

  else
    wipe(aura_env.warlocks)

    for uid in WA_IterateGroupMembers() do
      local b = {WA_GetUnitBuff(uid, 'Soulstone')}

      if aura_env.IsWarlock(uid) then
        local guid = UnitGUID(uid)
        aura_env.warlocks[guid].uid = uid
        local name = UnitName(guid)
        aura_env.warlocks[guid].name = name

        allstates[guid] = {
          progressType = "static",
          autoHide = false,
          changed = true,
          unit = uid,
          name = name,
        }
      end

      aura_env.warlocks[b[7]].buff = uid
    end
    return true
  end
end
