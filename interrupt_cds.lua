function(allstates, event, ...)
  if event == aura_env.events.completed then
      local sourceGUID, spellId = ...
      if not sourceGUID or not spellId then return end
      local key = sourceGUID .. spellId
      local state = allstates[key]
      local info = state.cdInfo
      state.duration = info.cd
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
          state.sourceName = state.name
          state.expirationTime = state.duration + GetTime()
          state.duration = info.cd
          state.interrupted = false
          state.inverse = true
          state.changed = true
          return true

        elseif subevent == "SPELL_INTERRUPT" then
          local sourceGUID = aura_env.owner(select(4,...))
          local spellId = select(12,...)
          local key = sourceGUID .. spellId
          local state = allstates[key]
          if not state then return end
          state.interrupted = true
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

-- PLAYER_ENTERING_WORLD,GROUP_ROSTER_UPDATE,RAID_ROSTER_UPDATE,COMBAT_LOG_EVENT_UNFILTERED,TOSH_INTERRUPT_CD_COMPLETED,TOSH_INTERRUPT_CD_UPDATE
local events = {
    completed = "TOSH_INTERRUPT_CD_COMPLETED",
    update = "TOSH_INTERRUPT_CD_UPDATE",
}

aura_env.specCDs = {
--Death Knight
    [250] = { -- Blood
        [47528] = { -- Mind Freeze
            cd = 15,
        },
    },
    [251] = { -- Frost
        [47528] = { -- Mind Freeze
            cd = 15,
        },
    },
    [252] = { -- Unholy
        [47528] = { -- Mind Freeze
            cd = 15,
        },
    },
-- Demon Hunter
    [577] = { -- Havoc
        [183752] = { -- Disrupt
            cd = 15,
        },
    },
    [581] = { -- Vengeance
        [183752] = { -- Disrupt
            cd = 15,
        },
        [202137] = { -- Sigil of Silence
            duration = 2,
            cd = 15,
        },
    },
-- Druid
    [102] = { -- Balance
        [78675] = { -- Solar Beam
            duration = 8,
            cd = 60,
        },
    },
    [103] = { -- Feral
        [106839] = { -- Skull Bash
            cd = 15,
        },
    },
    [104] = { -- Guardian
        [106839] = { -- Skull Bash
            cd = 15,
        },
    },
    [105] = { -- Restoration
    },
-- Hunter
    [253] = { -- Beast Mastery
        [147362] = { -- Counter Shot
            cd = 24,
        },
    },
    [254] = { -- Marksmanship
        [147362] = { -- Counter Shot
            cd = 24,
        },
    },
    [255] = { -- Survival
        [187707] = { -- Muzzle
            cd = 15,
        },
    },
-- Mage
    [62] = { -- Arcane
        [2139] = { -- Counterspell
            cd = 24,
        },
    },
    [63] = { -- Fire
        [2139] = { -- Counterspell
            cd = 24,
        },
    },
    [64] = { -- Frost
        [2139] = { -- Counterspell
            cd = 24,
        },
    },
-- Monk
    [268] = { -- Brewmaster
        [116705] = { -- Spear Hand Strike
            cd = 15,
        },
    },
    [269] = { -- Windwalker
        [116705] = { -- Spear Hand Strike
            cd = 15,
        },
    },
    [270] = { -- Mistweaver
    },
-- Paladin
    [65] = { -- Holy
    },
    [66] = { -- Protection
        [96231] = { -- Rebuke
            cd = 15,
        },
    },
    [70] = { -- Retribution
        [96231] = { -- Rebuke
            cd = 15,
        },
    },
-- Priest
    [256] = { -- Discipline
    },
    [257] = { -- Holy
    },
    [258] = { -- Shadow
        [15487] = { -- Silence
            talent = function(talents)
                if talents[23137] then
                    return {
                        cd = 30,
                    }
                else
                    return {
                        cd = 45,
                    }
                end
            end,
        },
    },
-- Rogue
    [259] = { -- Assassination
        [1766] = { -- Kick
            cd = 15,
        },
    },
    [260] = { -- Outlaw
        [1766] = { -- Kick
            cd = 15,
        },
    },
    [261] = { -- Subtlety
        [1766] = { -- Kick
            cd = 15,
        },
    },
-- Shaman
    [262] = { -- Elemental
        [57994] = { -- Wind Shear
            cd = 12,
        },
    },
    [263] = { -- Enhancement
        [57994] = { -- Wind Shear
            cd = 12,
        },
    },
    [264] = { -- Restoration
        [57994] = { -- Wind Shear
            cd = 12,
        },
    },
-- Warlock
    [265] = { -- Affliction
        [19647] = { -- Spell Lock
            cd = 24,
        },
        [119910] = { -- Command Demon: Spell Lock
            spellId = 19647,
            cd = 24,
        },
        [132409] = { -- Command Demon Sacrifice: Spell Lock
            spellId = 19647,
            cd = 24,
        },
    },
    [266] = { -- Demonology
        [19647] = { -- Spell Lock
            cd = 24,
        },
        [119910] = { -- Command Demon: Spell Lock
            spellId = 19647,
            cd = 24,
        },
    },
    [267] = { -- Destruction
        [19647] = { -- Spell Lock
            cd = 24,
        },
        [119910] = { -- Command Demon: Spell Lock
            spellId = 19647,
            cd = 24,
        },
        [132409] = { -- Command Demon Sacrifice: Spell Lock
            spellId = 19647,
            cd = 24,
        },
    },
-- Warrior
    [71] = { -- Arms
        [6552] = { -- Pummel
            cd = 15,
        },
    },
    [72] = { -- Fury
        [6552] = { -- Pummel
            cd = 15,
        },
    },
    [73] = { -- Protection
        [6552] = { -- Pummel
            cd = 15,
        },
    },
}
