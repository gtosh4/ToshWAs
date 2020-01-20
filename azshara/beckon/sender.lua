function(event, msg) -- RAID_BOSS_WHISPER
  if msg:find("299094", nil, true) then -- Beckon
    C_ChatInfo.SendAddonMessage("QABECKON", "", "RAID")
    return true
  end
end
