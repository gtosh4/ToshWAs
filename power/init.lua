local GetSpecialization, GetSpecializationInfo = GetSpecialization, GetSpecializationInfo

local specPower = {}
function aura_env.GetPower()
    local spec = GetSpecializationInfo(GetSpecialization())
    local f = specPower[spec]
    if spec and type(f) == 'function' then return f() end
    return nil
end

local UnitPower, UnitPowerMax, GetRuneCooldown, GetSpellCharges, GetTime, UnitClass = UnitPower, UnitPowerMax, GetRuneCooldown, GetSpellCharges, GetTime, UnitClass
local PowerType, PowerBarColor, RAID_CLASS_COLORS = Enum.PowerType, PowerBarColor, RAID_CLASS_COLORS

local function PowerForType(ptype)
    local colour = PowerBarColor[ptype]
    return function()
        local c, m = UnitPower("player", ptype), UnitPowerMax("player", ptype)

        local p = {}
        for i=1,c do
            p[i] = {value=1, total=1, colour=colour}
        end
        if c < m then
            for i=(#p+1),m do
                p[i] = {value=0, total=1, colour=colour}
            end
        end
        return p
    end
end

local function PowerForSpell(spellid)
    local colour = RAID_CLASS_COLORS[select(2, UnitClass("player"))]
    return function()
        local currentCharges, maxCharges, cooldownStart, cooldownDuration = GetSpellCharges(spellid)

        local p = {}
        for i=1,currentCharges+1 do
            p[i] = {value=1, total=1, colour=colour}
        end
        p[#p+1] = {
            duration=cooldownDuration,
            expirationTime=cooldownStart+cooldownDuration,
        }
        for i=(#p+1),maxCharges do
            p[i] = {value=0, total=1, colour=colour}
        end
        return p
    end
end

local function PowerForRunes(colour)
    return function()
        local p = {}
        for i = 1,6 do
            local start, duration, runeReady = GetRuneCooldown(i)
            if runeReady then
                p[i] = {value=1, total=1, colour=colour}
            else
                p[i] = {
                    duration=duration,
                    expirationTime=start+duration,
                    colour=colour,
                }
            end
        end
        return p
    end
end

specPower[66] = PowerForSpell(53600) -- Paladin/Protection
specPower[70] = PowerForType(PowerType.HolyPower) -- Paladin/Retribution

specPower[265] = PowerForType(PowerType.SoulShards) -- Warlock/Affliction
specPower[266] = PowerForType(PowerType.SoulShards) -- Warlock/Demonology
specPower[267] = PowerForType(PowerType.SoulShards) -- Warlock/Destruction

specPower[250] = PowerForRunes(RAID_CLASS_COLORS["DEATHKNIGHT"]) -- DeathKnight/Blood
specPower[251] = PowerForRunes({r=44/255, g=155/255, b=255/255}) -- DeathKnight/Frost
specPower[252] = PowerForRunes({r=61/255, g=255/255, b=90/255}) -- DeathKnight/Unholy
