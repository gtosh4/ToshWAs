local region = aura_env.region

local unit = region.state and region.state.unit
if not unit then return end

local frame = WeakAuras.GetUnitFrame(unit)
if not frame then return end

region:SetParent(frame)
region:SetAllPoints(frame)
