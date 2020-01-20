function(allstates, event, ...) -- COMBAT_LOG_EVENT_UNFILTERED,ARCANE_BURST_DISPELLER
  if event == "COMBAT_LOG_EVENT_UNFILTERED" then
    local subevent = select(2, ...)
    local spell = select(12, ...)

    if subevent == "SPELL_CAST_SUCCESS" and spell == aura_env.burst_spell then
      for k in pairs(allstates) do
        allstates[k] = {
          show = false,
          changed = true,
          autoHide = true,
        }
      end
      C_Timer.After(0.5, function() WeakAuras.ScanEvents("ARCANE_BURST_DISPELLER") end)

    elseif subevent == "SPELL_DISPEL" then
      spell = select(15, ...)
      if spell == aura_env.burst_spell then
        local dest = select(8, ...)
        for k in pairs(allstates) do
          local s = allstates[k]

          if UnitGUID(s.unit) == dest then
            s.show = false
            s.changed = true
            s.autoHide = true
          end
        end
      end
    end

  elseif event == "ARCANE_BURST_DISPELLER" then
    local count = 1
    for unit in WA_IterateGroupMembers() do
      local burst = { WA_GetUnitDebuff(unit, aura_env.burst_spell) }
      if burst[1] then
        allstates[unit] = {
          show = aura_env.config.show[count],
          changed = true,
          autoHide = true,

          spellId = aura_env.burst_spell,
          unit = unit,

          progressType = "timed",
          duration = burst[5],
          expirationTime = burst[6],
        }
        count = count + 1
        print("burst "..count.." on "..UnitName(unit).." for "..burst[5].." or "..(burst[6]-GetTime()))
      end
    end
  end

  return true
end
