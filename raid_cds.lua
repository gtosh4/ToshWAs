--[[
  {
    expirationTime = true,
    active = {
        display = "effect active",
        type = "bool",
    }
  }
]]

function(allstates, event, ...)
    if event == aura_env.events.completed then
        local sourceGUID, spellId = ...
        if not sourceGUID or not spellId then return end
        local key = sourceGUID .. spellId
        local state = allstates[key]
        local info = state.cdInfo
        state.duration = info.cd
        state.expirationTime = (state.duration - info.duration) + GetTime()
        state.inverse = true
        state.active = false
        state.changed = true
        return true

    elseif event == "COMBAT_LOG_EVENT_UNFILTERED" then
        local subevent = select(2,...)
        if subevent == "SPELL_CAST_SUCCESS" then
            local sourceGUID = aura_env.owner(select(4,...))
            local spellId = select(12,...)
            local key = sourceGUID .. spellId
            local state = allstates[key]
            if not state then return end
            local info = state.cdInfo
            if (info.duration or 0) > 0 then
                state.duration = info.duration
                state.inverse = false
                state.sourceName = state.name
                state.active = true
                local completed = aura_env.events.completed
                C_Timer.After(info.duration, function() WeakAuras.ScanEvents(completed, sourceGUID, spellId) end)
            else
                state.sourceName = state.name
                state.duration = info.cd
                state.inverse = true
            end
            state.expirationTime = state.duration + GetTime()
            state.changed = true
            return true
        end

    elseif event == "PLAYER_ENTERING_WORLD" or event == "GROUP_ROSTER_UPDATE" or event == "RAID_ROSTER_UPDATE" or event == aura_env.events.update then
        for k,v in pairs(allstates) do
            v.show = false
            v.changed = true
        end

        local hascds = false
        for uid in WA_IterateGroupMembers() do
            local info = aura_env.inspectLib:GetCachedInfo(UnitGUID(uid))
            if info then
                local cds = aura_env.specCDs[info.global_spec_id]
                if cds then
                    for spellId, cdInfo in pairs(cds) do
                        if cdInfo.talent then
                            cdInfo = cdInfo.talent(info.talents)
                        end
                        if cdInfo then
                            spellId = cdInfo.spellId or spellId
                            local key = info.guid .. spellId
                            if allstates[key] then
                                allstates[key].show = true
                                allstates[key].changed = true
                            else
                                allstates[key] = {
                                    show = true,
                                    changed = true,
                                    sourceName = info.name,
                                    progressType = "timed",
                                    autoHide = false,
                                    icon = select(3, GetSpellInfo(spellId)),
                                    spellId = spellId,
                                    name = info.name,
                                    sourceGUID = info.guid,
                                    barColor = aura_env.getColor(info),
                                    duration = cdInfo.cd,
                                    cdInfo = cdInfo,
                                    index = cdInfo.index or (info.class..spellId),
                                }
                            end
                            hascds = true
                        end
                    end
                end
            end
        end

        return true
    end
end

-- PLAYER_ENTERING_WORLD,GROUP_ROSTER_UPDATE,RAID_ROSTER_UPDATE,COMBAT_LOG_EVENT_UNFILTERED,TOSH_RAID_CD_COMPLETED,TOSH_RAID_CD_UPDATE
local events = {
    completed = "TOSH_RAID_CD_COMPLETED",
    update = "TOSH_RAID_CD_UPDATE",
}

aura_env.specCDs = {
--Death Knight
    [250] = { -- Blood
    },
    [251] = { -- Frost
    },
    [252] = { -- Unholy
    },
-- Demon Hunter
    [577] = { -- Havoc
        [196718] = { -- Darkness
            duration = 8,
            cd = 180,
        },
    },
    [581] = { -- Vengeance
    },
-- Druid
    [102] = { -- Balance
    },
    [103] = { -- Feral
    },
    [104] = { -- Guardian
    },
    [105] = { -- Restoration
        [740] = { -- Tranquility
            duration = 8,
            cd = 180,
        },
    },
-- Hunter
    [253] = { -- Beast Mastery
    },
    [254] = { -- Marksmanship
    },
    [255] = { -- Survival
    },
-- Mage
    [62] = { -- Arcane
    },
    [63] = { -- Fire
    },
    [64] = { -- Frost
    },
-- Monk
    [268] = { -- Brewmaster
    },
    [269] = { -- Windwalker
    },
    [270] = { -- Mistweaver
        [115310] = { -- Revival
            cd = 180,
        },
    },
-- Paladin
    [65] = { -- Holy
        [31821] = { -- Aura Mastery
            duration = 8,
            cd = 180,
        },
    },
    [66] = { -- Protection
    },
    [70] = { -- Retribution
    },
-- Priest
    [256] = { -- Discipline
        [62618] = { -- Power Word: Barrier
            talent = function(talents)
                if not talents[21184] then
                    return {
                        duration = 10,
                        cd = 180,
                    }
                end
            end,
        },
        [271466] = { -- Luminous Barrier
            talent = function(talents)
                if talents[21184] then
                    return {
                        duration = 10,
                        cd = 180,
                    }
                end
            end,
        },
    },
    [257] = { -- Holy
        [64843] = { -- Divine Hymn
            duration = 8,
            cd = 180,
        },
    },
    [258] = { -- Shadow
    },
-- Rogue
    [259] = { -- Assassination
    },
    [260] = { -- Outlaw
    },
    [261] = { -- Subtlety
    },
-- Shaman
    [262] = { -- Elemental
    },
    [263] = { -- Enhancement
    },
    [264] = { -- Restoration
        [108280] = { -- Healing Tide Totem
            duration = 10,
            cd = 180,
        },
        [98008] = { -- Spirit Link Totem
            duration = 6,
            cd = 180,
        },
    },
-- Warlock
    [265] = { -- Affliction
    },
    [266] = { -- Demonology
    },
    [267] = { -- Destruction
    },
-- Warrior
    [71] = { -- Arms
        [97462] = { -- Rallying Cry
            duration = 10,
            cd = 180,
        },
    },
    [72] = { -- Fury
        [97462] = { -- Rallying Cry
            duration = 10,
            cd = 180,
        },
    },
    [73] = { -- Protection
        [97462] = { -- Rallying Cry
            duration = 10,
            cd = 180,
        },
    },
}

aura_env.events = events

aura_env.inspectLib = LibStub:GetLibrary("LibGroupInSpecT-1.1",true)

local inspectCallback = {
    Update = function(self, guid, unit, info)
        WeakAuras.ScanEvents(events.update, sourceGUID, spellId)
    end,
    Remove = function(self, guid)
        WeakAuras.ScanEvents(events.update, sourceGUID, spellId)
    end,
}
aura_env.inspectLib.RegisterCallback(inspectCallback, "GroupInSpecT_Update", "Update")
aura_env.inspectLib.RegisterCallback(inspectCallback, "GroupInSpecT_Remove", "Remove")

function aura_env.getColor(info)
    local classcolor = RAID_CLASS_COLORS[info.class]
    if not classcolor then return end
    local r,g,b = classcolor.r,classcolor.g,classcolor.b
    if UnitIsDeadOrGhost(info.name) then r,g,b = 0.5,0.5,0.5 end
    return {r=r, g=g, b=b}
end

function aura_env.owner(guid)
    local type = strsplit("-",guid)
    if type == "Pet" then
        for unit in WA_IterateGroupMembers() do
            if UnitGUID(unit.."pet") == guid then
                return UnitGUID(unit)
            end
        end
    end
    return guid
end
