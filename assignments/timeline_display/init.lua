aura_env.group = WeakAuras.GetRegion("ToshAssign Timeline")

ViragDevTool_AddData(aura_env, "timeline init env")

aura_env.queue = {}

function aura_env:showhideQueue()
    for k,v in ipairs(self.queue) do
        if k == 1 then
            v.region:Show()
        else
            v.region:Hide()
        end
    end
end

function aura_env:Queue(cloneId, state, region)
    for k,v in ipairs(self.queue) do
        if v.cloneId == cloneId then
            return
        end
    end
    table.insert(self.queue, {cloneId=cloneId, state=state, region=region})
    table.sort(self.queue, function(a, b) return (a.state.expirationTime or 0) - (a.state.expirationTime or 0) end)
    self:showhideQueue()
end

function aura_env:Remove(cloneId)
    local i
    for k,v in ipairs(self.queue) do
        if v.cloneId == cloneId then
            i = k
        end
    end
    if i then
        table.remove(self.queue, i)
    end
    self:showhideQueue()
end
