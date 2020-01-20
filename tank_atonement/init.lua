if select(4, GetAddOnInfo('LibGetFrame-1.0')) then
    aura_env.GetFrame = LibStub('LibGetFrame-1.0').GetFrame
else
    WeakAuras.prettyPrint(("'%s' requires LibGetFrame-1.0 get it at https://www.curseforge.com/wow/addons/libgetframe"):format(aura_env.id))
    return
end

local LCG = LibStub('LibCustomGlow-1.0')
local glowTypes = {'Standard', 'Pixel', 'AutoCast'}

local glowFrames = setmetatable({}, {
    __index = function(t, k)
        t[k] = {}
        return t[k]
    end
})
aura_env.glowFrames = glowFrames

local glowFunc = function(frame, show, id, glowType)
    if not frame then return end

    id = id or aura_env.id
    glowType = glowType or glowTypes[aura_env.config.glowType]
    if show then
        aura_env.glowFrames[id][frame] = glowType
        if glowType == 'AutoCast' then
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
        elseif glowType == 'Pixel' then
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
        elseif glowType == 'Standard' then
            LCG.ButtonGlow_Start(frame, aura_env.config.glowColor, aura_env.config.glowFrequency)
        end
    else
        aura_env.glowFrames[id][frame] = nil
        if glowType == 'AutoCast' then
            LCG.AutoCastGlow_Stop(frame, id)
        elseif glowType == 'Pixel' then
            LCG.PixelGlow_Stop(frame, id)
        elseif glowType == 'Standard' then
            LCG.ButtonGlow_Stop(frame)
        end
    end
end
aura_env.Glow = glowFunc

-- hide glow on opening WeakAurasOptions
hooksecurefunc(
    WeakAuras,
    'OpenOptions',
    function()
        if not InCombatLockdown() then
            for id, frames in pairs(glowFrames) do
                for frame, glowType in pairs(frames) do
                    glowFunc(frame, false, id, glowType)
                end
            end
        end
    end
)
