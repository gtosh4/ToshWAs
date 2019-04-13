local bars = {
  DominosFrame1,
  DominosFrame2,
  DominosFrame3,
  DominosFrame4,
  DominosFrame5,
  DominosFrame6,
}

function aura_env:toggle()
  self.state = not self.state
  for _, df in ipairs(bars) do
    if df then
      if self.state then
        df:Show()
      else
        df:Hide()
      end
    end
  end
  self.text = self.state and ">" or "<"
end

local f = aura_env.region
if not f.button then
    f.button = CreateFrame("Button", "WAButton"..aura_env.id, f)
    f.button:SetAllPoints(f)

    aura_env.state = true
    aura_env:toggle()
    
    f.button:SetScript("OnClick", aura_env.toggle)
end

