function(event, unit, powerType) -- UNIT_POWER_UPDATE,UNIT_MAXPOWER,UNIT_DISPLAYPOWER
    aura_env.Status:UpdateUnitPower(unit, powerType)
end
