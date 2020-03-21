local L = LibStub("AceLocale-3.0"):GetLocale("Grid2")

if not Grid2 then return end

-- Status

aura_env.Status = Grid2.statusPrototype:new("lowpower", false)

local powerColors= {}
function aura_env.Status:GetColor(unit)
    local _,type= UnitPowerType(unit)
    local c= powerColors[type] or powerColors["MANA"]
    return c.r, c.g, c.b, c.a
end

function aura_env.Status:UpdateDB()
	powerColors["MANA"] = self.dbx.color1
	powerColors["RAGE"] = self.dbx.color2
	powerColors["FOCUS"] = self.dbx.color3
	powerColors["ENERGY"] = self.dbx.color4
	powerColors["RUNIC_POWER"] = self.dbx.color5
	powerColors["INSANITY"] = self.dbx.color6
	powerColors["MAELSTROM"] = self.dbx.color7
	powerColors["LUNAR_POWER"] = self.dbx.color8
	powerColors["FURY"] = self.dbx.color9
	powerColors["PAIN"] = self.dbx.color10
end

aura_env.Status.OnEnable  = function() return end
aura_env.Status.OnDisable = function() return end

function aura_env.Status:UpdateUnitPower(unit, powerType)
    if UnitIsPlayer(unit) and powerColors[ powerType ] then
         self:UpdateIndicators(unit)
     end
end

function aura_env.Status:IsActive(unit)
  return (
      UnitIsPlayer(unit) and
      (UnitPower(unit) / UnitPowerMax(unit)) < aura_env.config.threshold
)
end

Grid2.setupFunc["lowpower"] = function(baseKey, dbx)
	Grid2:RegisterStatus(aura_env.Status, {"color"}, baseKey, dbx)
    aura_env.Status:UpdateDB()
    return aura_env.Status
end
