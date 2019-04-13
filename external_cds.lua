-- PLAYER_ENTERING_WORLD,GROUP_ROSTER_UPDATE,RAID_ROSTER_UPDATE,COMBAT_LOG_EVENT_UNFILTERED,ENCOUNTER_START,PLAYER_SPECIALIZATION_CHANGED,TOSH_EXTERNAL_CD_COMPLETED,TOSH_EXTERNAL_CD_UPDATE
local events = {
    completed = "TOSH_EXTERNAL_CD_COMPLETED",
    update = "TOSH_EXTERNAL_CD_UPDATE",
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
    },
    [581] = { -- Vengeance
    },
-- Druid
    [102] = { -- Balance
        [29166] = {
            duration = 12,
            cd = 180,
        },
    },
    [103] = { -- Feral
        [29166] = {
            duration = 12,
            cd = 180,
        },
    },
    [104] = { -- Guardian
    },
    [105] = { -- Restoration
        [102342] = { -- Ironbark
            duration = 12,
            cd = 60,
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
        [116849] = { -- Life Cocoon
            duration = 12,
            cd = 120,
        },
    },
-- Paladin
    [65] = { -- Holy
        [6940] = { -- Blessing of Sacrifice
            duration = 12,
            cd = 120,
        },
        [1022] = { -- Blessing of Protection
            duration = 10,
            cd = 300,
        },
        [633] = { -- Lay on Hands
            cd = 600,
        },
    },
    [66] = { -- Protection
        [6940] = { -- Blessing of Sacrifice
            duration = 12,
            cd = 120,
        },
        [1022] = { -- Blessing of Protection
            talent = function(talents)
                if not talents[22435] then
                    return {
                        duration = 10,
                        cd = 300,
                    }
                end
            end,
        },
        [204018] = { -- Blessing of Spellwarding
            talent = function(talents)
                if talents[22435] then
                    return {
                        duration = 10,
                        cd = 180,
                    }
                end
            end,
        },
        [633] = { -- Lay on Hands
            cd = 600,
        },
    },
    [70] = { -- Retribution
        [1022] = { -- Blessing of Protection
            duration = 10,
            cd = 300,
        },
        [633] = { -- Lay on Hands
            cd = 600,
        },
    },
-- Priest
    [256] = { -- Discipline
      [33206] = { -- Pain Suppression
            duration = 8,
            cd = 180,
        },
    },
    [257] = { -- Holy
        [47788] = { -- Guardian Spirit
            duration = 10,
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
    },
    [72] = { -- Fury
    },
    [73] = { -- Protection
    },
}
