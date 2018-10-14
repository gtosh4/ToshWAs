-- PLAYER_ENTERING_WORLD,GROUP_ROSTER_UPDATE,RAID_ROSTER_UPDATE,COMBAT_LOG_EVENT_UNFILTERED,TOSH_TANK_CD_COMPLETED,TOSH_TANK_CD_UPDATE,ENCOUNTER_END
local events = {
    completed = "TOSH_TANK_CD_COMPLETED",
    update = "TOSH_TANK_CD_UPDATE",
}

aura_env.specCDs = {
--Death Knight
    [250] = { -- Blood
        [49028] = { -- Dancing Rune Weapon
            duration = 8,
            cd = 120,
        },
        [48792] = { -- Icebound Fortitude
            duration = 8,
            cd = 180,
        },
        [55233] = { -- Vampiric Blood
            duration = 10,
            cd = 90,
        },
    },
    [251] = { -- Frost
    },
    [252] = { -- Unholy
    },
-- Demon Hunter
    [577] = { -- Havoc
    },
    [581] = { -- Vengeance
        [204021] = { -- Fiery Brand
            duration = 18,
            cd = 60,
        },
        [187827] = { -- Metamorphosis
            duration = 15,
            cd = 180,
        },
    },
-- Druid
    [102] = { -- Balance
    },
    [103] = { -- Feral
    },
    [104] = { -- Guardian
        [22812] = { -- Barkskin
            duration = 12,
            cd = 60,
        },
        [61336] = { -- Survival Instincts
            duration = 6,
            cd = 240,
        },
    },
    [105] = { -- Restoration
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
        [115203] = { -- Fortifying Brew
            duration = 15,
            cd = 420,
        },
        [115203] = { -- Zen Meditation
            duration = 8,
            cd = 300,
        },
    },
    [269] = { -- Windwalker
    },
    [270] = { -- Mistweaver
    },
-- Paladin
    [65] = { -- Holy
    },
    [66] = { -- Protection
        [31850] = { -- Ardent Defender
            duration = 8,
            cd = 120,
        },
        [86659] = { -- Guardian of Ancient Kings
            duration = 8,
            cd = 300,
        },
    },
    [70] = { -- Retribution
    },
-- Priest
    [256] = { -- Discipline
    },
    [257] = { -- Holy
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
        [871] = { -- Shield Wall
            duration = 8,
            cd = 240,
        },
        [12975] = { -- Last Stand
            duration = 15,
            cd = 180,
        },
    },
}
