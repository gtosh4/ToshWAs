function()
    local range, count = 0, 0
    for uid in WA_IterateGroupMembers() do
        local minR, maxR = WeakAuras.GetRange(uid, true)
        if minR then
            range = range + maxR
            count = count + 1
        end
    end
    return tostring(range / count)
end
