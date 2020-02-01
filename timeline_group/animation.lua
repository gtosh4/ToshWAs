function(progress, startX, startY, deltaX, deltaY)
    if not aura_env.state then
        return startX, startY
    end

    local duration = aura_env.state.expirationTime and aura_env.state.expirationTime-GetTime() or aura_env.config.tduration
    if duration > aura_env.config.tduration then
        aura_env:Queue(aura_env.cloneId, aura_env.state, aura_env.region)
        return startX, startY
    else
        aura_env:Remove(aura_env.cloneId)
        local prog = duration/aura_env.config.tduration

        if prog>1 then prog=1
        elseif prog<0 then prog=0 end

        local up = aura_env.group and aura_env.group.anchorPoint == "BOTTOM"
        local dir = up and -1 or 1

        local endY = startY - dir*((1-prog) * aura_env.config.tdist)

        return startX, endY
    end
end
