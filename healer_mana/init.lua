aura_env.healSpecs = {
  [105] = true, -- Restoration Druid
  [270] = true, -- Mistweaver Monk
  [ 65] = true, -- Holy Paladin
  [256] = true, -- Discipline Priest
  [257] = true, -- Holy Priest
  [264] = true, -- Restoration Shaman
}

aura_env.inspectLib = LibStub:GetLibrary("LibGroupInSpecT-1.1",true)

local function HasAlchemistStone()
  for _, id in ipairs({165928, 165927, 166976, 165926, 166975, 166974, 152632}) do
    if IsEquippedItem(id) then return true end
  end
  return false
end

function aura_env.AdditionalProgress(state)
  local manaregen = GetManaRegen()
  state.additionalProgress = {}
  
  if aura_env.config.replenishment then
    if GetItemCount(152561) > 0 then
      local startTime, duration, enable = GetItemCooldown(152561)
      if enable and (startTime == 0 or (startTime + duration < GetTime())) then
        local prog  = {
          direction = 'forward',
          width = ((HasAlchemistStone() and 1.4 or 1) * 25000) + (manaregen * 10),
        }
        table.insert(state.additionalProgress, prog)
      end
    end
  end

  if aura_env.config.innervate then
    local prog  = {
      direction = 'forward',
      width = manaregen * 10,
    }
    table.insert(state.additionalProgress, prog)
  end

end
