function(allstates, event, ...) -- CHAT_MSG_ADDON,CHAT_MSG_SAY,CHAT_MSG_YELL,ENCOUNTER_START
  local sender
  if event == "CHAT_MSG_ADDON" then
    local prefix
    prefix, _, _, sender = ...
    if prefix ~= "QABECKON" then return end
    print("beckon via addon msg")
  elseif event == "CHAT_MSG_SAY" or event == "CHAT_MSG_YELL" then
    local prefix = "Beckon on"
    local msg
    msg, sender = ...
    if not msg or msg:sub(1, #prefix) ~= prefix then return end
    sender = select(2, ...)
    print("beckon via say")
  elseif event == "ENCOUNTER_START" then
    aura_env.round = 0
  else
    return
  end

  local unit = aura_env.find_sender(sender)
  -- print("found beckon on "..(unit or "nil"))
  
  if not unit then return end

  local now = GetTime()
  local new_round = (aura_env.last_beckon or 0) < now - 10
  if new_round then
    -- Next round of beckons, clear the old one
    aura_env.round = (aura_env.round or 0) + 1
    -- print("new beckon round: "..aura_env.round)
    for k in pairs(allstates) do
      allstates[k] = {
        show = false,
        changed = true,
      }
    end
  end
  aura_env.last_beckon = now

  local info = {GetRaidRosterInfo(UnitInRaid(unit))}

  local s = allstates[unit]
  if not s or not s.show then
    s = {
      show = aura_env.config.show.beckon[aura_env.round],
      changed = true,
      autoHide = true,

      name = sender,
      unit = unit,
      role = info[12],

      progressType = "timed",
      duration = 10,
    }
    s.expirationTime = now + s.duration
    if s.role == "HEALER" and not aura_env.config.show.healers then
      s.show = false
    end

    allstates[unit] = s
  end
  return true
end
