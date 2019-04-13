function()
  local grid = Grid2LayoutFrame
  if not grid then return end

  grid:ClearAllPoints()
  grid:SetPoint("TOPLEFT", UIParent, "CENTER", -1 * (100 * 2.5), -200)

  local player = ElvUF_Player
  if player then
    player:ClearAllPoints()
    player:SetPoint("TOPRIGHT", grid, "TOPLEFT", -3, -7)
  end

  local cast = Quartz3CastBarPlayer
  if cast then
    cast:ClearAllPoints()
    cast:SetPoint("BOTTOMLEFT", grid, "TOPLEFT", 1, 0)
  end

  local bw = BigWigsAnchor
  if bw then
    bw:ClearAllPoints()
    if player then
      bw:SetPoint("TOPLEFT", player, "BOTTOMLEFT", 0, -4)
      bw:SetPoint("TOPRIGHT", player, "BOTTOMRIGHT", 0, -4)
    else
      bw:SetPoint("TOPRIGHT", grid, "TOPLEFT", -3, -7)
    end
  end

  local aa = LibStub("AceAddon-3.0"):GetAddon("AngryAssignments")
  if aa then
    if bw then
      aa.frame:ClearAllPoints()
      aa.frame:SetPoint("TOPRIGHT", bw, "TOPLEFT", -32, 0)
    end
  end

  local hk = Hekili_PrimaryB1
  if hk then
    if cast then
      hk:ClearAllPoints()
      hk:SetPoint("BOTTOMLEFT", cast, "TOPLEFT", 0, 1)
    end
  end

  return true
end
