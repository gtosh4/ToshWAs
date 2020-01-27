function() -- AZERITE_ESSENCE_UPDATE,AZERITE_ESSENCE_CHANGED,AZERITE_ESSENCE_ACTIVATED,WA_DELAYED_PLAYER_ENTERING_WORLD
    local milestones = C_AzeriteEssence.GetMilestones()
    if milestones then
        for i, milestoneInfo in ipairs(milestones) do
            if milestoneInfo.unlocked then
                if C_AzeriteEssence.GetMilestoneEssence(milestoneInfo.ID) == 16 then
                    return true
                end
            end
        end
    end
    return false
end
