if not aura_env.state then return end

if aura_env.cloneId == "Pull" then
    if not aura_env.assigns.pull then return end

    for _,v in ipairs(aura_env.assigns.pull) do
        local a = setmetatable({}, {__index=v})
        if not a.time_until then
            a.time_until = aura_env.state.duration + (a.delay or 0)
        end
        WeakAuras.ScanEvents("TOSH_ASSIGN_SEND", a)
    end
else
    local spellid = select(7, GetSpellInfo(aura_env.state.spellId))
    local assigns = aura_env.assigns[spellid]
    if not assigns then return end
    if aura_env.isfake[spellid](aura_env.state) then return end

    local count = aura_env.count[spellid]+1
    aura_env.count[spellid] = count

    if not assigns[count] then return end

    for _, v in ipairs(assigns[count]) do
        local a = setmetatable({}, {__index=v})
        if not a.time_until then
            a.time_until = aura_env.state.duration + (a.delay or 0)
        end
        WeakAuras.ScanEvents("TOSH_ASSIGN_SEND", a)
    end
end
