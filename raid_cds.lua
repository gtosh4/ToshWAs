--[[
  {
    expirationTime = true,
    active = {
        display = "effect active",
        type = "bool",
    },
    isplayer = {
        display = "is player",
        type = "bool",
    },
    classid = {
        display = "Class",
        type = "string",
    }
  }
]]

function(allstates, event, ...)
    if event == "ENCOUNTER_END" and aura_env.ShouldResetCDs() then
        for k,v in pairs(allstates) do
            v.expirationTime = nil
        end
        return true

    elseif event == aura_env.events.completed then
        local sourceGUID, spellId = ...
        if not sourceGUID or not spellId then return end
        local key = sourceGUID .. spellId
        local state = allstates[key]
        if not state then return end
        local info = state.cdInfo
        state.duration = info.cd
        state.expirationTime = (state.duration - info.duration) + GetTime()
        state.inverse = true
        state.active = false
        aura_env:setindex(state)
        state.changed = true
        return true

    elseif event == "COMBAT_LOG_EVENT_UNFILTERED" then
        local subevent = select(2,...)
        if subevent == "SPELL_CAST_SUCCESS" then
            local sourceGUID = aura_env.owner(select(4,...))
            local spellId = select(12,...)
            local key = sourceGUID .. spellId
            local state = allstates[key]
            if not state then
                if spellId == 2050 or spellId == 34861 then -- Holy Word: Salvation CD reduction
                    spellId = 265202
                    key = sourceGUID .. spellId
                    state = allstates[key]
                    if state then
                        if state.expirationTime and state.expirationTime < GetTime() then
                            state.expirationTime = state.expirationTime - 30
                        end
                    end
                elseif spellId == 121253 then --  Fortifying Brew
                    spellId = 115203
                    key = sourceGUID .. spellId
                    state = allstates[key]
                    if state then
                        if state.expirationTime and state.expirationTime < GetTime() then
                            state.expirationTime = state.expirationTime - 4
                        end
                    end
                end
                return
            end
            local info = state.cdInfo
            if (info.duration or 0) > 0 then
                state.duration = info.duration
                state.inverse = false
                state.active = true
                aura_env:setindex(state)
                local completed = aura_env.events.completed
                C_Timer.After(info.duration, function() WeakAuras.ScanEvents(completed, sourceGUID, spellId) end)
            else
                state.duration = info.cd
                state.inverse = true
            end
            state.expirationTime = state.duration + GetTime()
            state.changed = true
            return true
        end

    elseif event == "PLAYER_ENTERING_WORLD" or event == "GROUP_ROSTER_UPDATE" or event == "RAID_ROSTER_UPDATE" or event == "PLAYER_SPECIALIZATION_CHANGED" or event == aura_env.events.update then
        for k,v in pairs(allstates) do
            v.show = false
            v.changed = true
        end

        local testbars = aura_env.config.testbars or 0
        for i=1,testbars do
            local tab = math.random(GetNumSpellTabs())
            local slots = select(4, GetSpellTabInfo(tab))
            local testSpell = GetSpellBookItemName(math.random(slots), BOOKTYPE_SPELL)
            local _, _, icon, _, _, _, spellId = GetSpellInfo(testSpell)
            allstates[i] = {
                show = true,
                changed = true,
                sourceName = "testbar"..i,
                progressType = "timed",
                autoHide = false,
                icon = icon,
                spellId = spellId,
                name = "testbar"..i,
                duration = 10,
                index = "zzzz"..i, -- sort last

                -- Condition variables
                active = false,
                isplayer = false,
                classid = select(2, UnitClass("player")),
            }
        end

        local playerguid = UnitGUID("player")
        for uid in WA_IterateGroupMembers() do
            local info = UnitIsVisible(uid) and aura_env.inspectLib:GetCachedInfo(UnitGUID(uid))
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
                            allstates[key] = {
                                show = true,
                                changed = true,
                                sourceName = info.name,
                                progressType = "timed",
                                autoHide = false,
                                icon = select(3, GetSpellInfo(spellId)),
                                spellId = spellId,
                                name = info.name .. spellId,
                                sourceGUID = info.guid,
                                duration = cdInfo.cd,

                                info = info,
                                cdInfo = cdInfo,

                                -- Condition variables
                                active = false,
                                isplayer = (playerguid == info.guid),
                                classid = info.class,
                            }
                            aura_env:setindex(allstates[key])
                        end
                    end
                end
            end
        end
        return true
    end
end

-- PLAYER_ENTERING_WORLD,GROUP_ROSTER_UPDATE,RAID_ROSTER_UPDATE,COMBAT_LOG_EVENT_UNFILTERED,ENCOUNTER_START,PLAYER_SPECIALIZATION_CHANGED,TOSH_RAID_CD_COMPLETED,TOSH_RAID_CD_UPDATE
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
            talent = function(talents)
                if talents[21716] then
                    return {
                        duration = 8,
                        cd = 120,
                    }
                else
                    return {
                        duration = 8,
                        cd = 180,
                    }
                end
            end,
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
        [216331] = {
            talent = function(talents)
                if talents[22190] then
                    return {
                        duration = 20,
                        cd = 120,
                    }
                end
            end,
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
        [246287] = { -- Evangelism
            talent = function(talents)
                if talents[22976] then
                    return {
                        duration = 6,
                        cd = 90,
                    }
                end
            end,
        },
        [47536] = { -- Rapture
            duration = 10,
            cd = 90,
        },
    },
    [257] = { -- Holy
        [64843] = { -- Divine Hymn
            duration = 8,
            cd = 180,
        },
        [265202] = { -- Holy Word: Salvation
            talent = function(talents)
                if talents[23145] then
                    return {
                        duration = 10,
                        cd = 720,
                    }
                end
            end,
        }
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

aura_env.sortModeFuncs = {
    [1] = function(state) -- "active > class > player > spellId"
        local class, player, spellId, active = state.info.class, state.sourceName, state.spellId, state.active
        state.index = (active and "active" or "inactive").."," ..class..","..player..","..spellId 
    end,
    [2] = function(state) -- "class > player > spellId"
        local class, player, spellId, active = state.info.class, state.sourceName, state.spellId, state.active
        state.index = class..","..player..","..spellId 
    end,
    [3] = function(state) -- "class > spellId > player"
        local class, player, spellId, active = state.info.class, state.sourceName, state.spellId, state.active
        state.index = class..","..spellId..","..player
    end,
}

function aura_env:setindex(state)
    self.sortModeFuncs[self.config.sortMode](state)
end

function aura_env.ShouldResetCDs()
	local _,_,difficulty = GetInstanceInfo()
	if difficulty == 3 or difficulty == 4 or difficulty == 5 or difficulty == 6 or difficulty == 7 or difficulty == 14 or difficulty == 15 or difficulty == 16 or difficulty == 17 then
		return true
	end
	return false
end
