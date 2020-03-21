function()
    if aura_env.state.unit then
        return  WeakAuras.GetUnitFrame(unit)
    end
end
