if WeakAuras.GetUnitFrame then
  aura_env.GetFrame = WeakAuras.GetUnitFrame
else
  local LGFstr = "LibGetFrame-1.0"
  if not IsAddOnLoaded(LGFstr) then LoadAddOn(LGFstr) end
  local LGF = LibStub(LGFstr, true)
  if LGF then
      aura_env.GetFrame = LGF.GetFrame
  else
      WeakAuras.prettyPrint(("'%s' requires LibGetFrame-1.0 get it at https://www.curseforge.com/wow/addons/libgetframe"):format(aura_env.id))
      return
  end
end

-- Custom Glow

local LCG = LibStub("LibCustomGlow-1.0")
local glowTypes = {"Standard", "Pixel", "AutoCast"}

local glowFunc
if type(budsCleanFrames) ~= "table" then
  budsCleanFrames = {}
  local cleaner = function()
      if not InCombatLockdown() then
          for auraid, frames in pairs(budsCleanFrames) do
              for frame, glowType in pairs(frames) do
                  glowFunc(frame, false, auraid, glowType)
              end
          end
      end
  end
  -- hide glow on opening WeakAurasOptions
  hooksecurefunc(WeakAuras, "OpenOptions", cleaner)
end
if type(budsCleanFrames[aura_env.id]) ~= "table" then
  budsCleanFrames[aura_env.id] = {} 
end

glowFunc = function(frame, show, id, glowType)
  if frame then
      id = id or aura_env.id
      glowType = glowType or glowTypes[aura_env.config.glowType]
      if show then
          budsCleanFrames[id][frame] = glowType
          if glowType == "AutoCast" then
              LCG.AutoCastGlow_Start(
                  frame,
                  aura_env.config.glowColor,
                  aura_env.config.glowParticules,
                  aura_env.config.glowFrequency,
                  aura_env.config.glowScale,
                  aura_env.config.glowxOffset,
                  aura_env.config.glowyOffset,
                  id
              )
          elseif glowType == "Pixel" then
              LCG.PixelGlow_Start(
                  frame,
                  aura_env.config.glowColor,
                  aura_env.config.glowParticules,
                  aura_env.config.glowFrequency,
                  aura_env.config.glowLength,
                  aura_env.config.glowThickness,
                  aura_env.config.glowxOffset,
                  aura_env.config.glowyOffset,
                  aura_env.config.glowBorder,
                  id
              )
          elseif glowType == "Standard" then
              LCG.ButtonGlow_Start(
                  frame,
                  aura_env.config.glowColor,
                  aura_env.config.glowFrequency
              )
          end
      else
          budsCleanFrames[id][frame] = nil
          if glowType == "AutoCast" then
              LCG.AutoCastGlow_Stop(frame, id)
          elseif glowType == "Pixel" then
              LCG.PixelGlow_Stop(frame, id)
          elseif glowType == "Standard" then
              LCG.ButtonGlow_Stop(frame)
          end
      end
  end
end

aura_env.Glow = glowFunc

aura_env.burst_spell = 303657
