local region = aura_env.region

local unit = region.state and region.state.unit
if not unit then return end

local frame = C_NamePlate.GetNamePlateForUnit(aura_env.state.unit)
if not frame then return end

region:SetParent(frame)
region:SetAllPoints(frame)
