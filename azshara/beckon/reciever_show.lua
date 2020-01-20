local frame = aura_env.GetFrame(aura_env.state.unit)
aura_env.state.frame = frame
if frame then
    aura_env.Glow(frame, true)
end
