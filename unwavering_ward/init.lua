aura_env.subevents = {
    ["SPELL_AURA_APPLIED"] = true,
    ["SPELL_AURA_REMOVED"] = true,
    ["SPELL_AURA_APPLIED_DOSE"] = true,
    ["SPELL_AURA_REMOVED_DOSE"] = true,
    ["SPEL_AURA_REFRESHL"] = true,
}

aura_env.playerguid = UnitGUID("player")
aura_env.spellid = 296003

aura_env.basestate = {
    show = true,
    changed = true,
    progressType = 'timed',
    autoHide = false,
    duration = 10,
    spellId = aura_env.spellid,
}
aura_env.basestate.icon = select(3,GetSpellInfo(aura_env.spellid))

function aura_env:Waiting()
    local t = self.region.uw_timer
    if t and not t.cancelled then
        return WeakAuras.timer:TimeLeft(t) > 0.1
    else
        return false
    end
end

function aura_env:UpdateState(state, event)
    state.changed = true

    local b = {WA_GetUnitBuff("player", self.spellid, "PLAYER")}

    -- ViragDevTool_AddData({aura_env=self, state=state, buff=b, waiting=self:Waiting()}, "unwavering ward ("..event..")")

    if b[6] then
        state.expirationTime = b[6] - 2

        local now = GetTime()
        local nextCheck = (state.expirationTime > now and state.expirationTime-now or 0)+0.1

        if not self:Waiting() then
            self.region.uw_timer = WeakAuras.timer:ScheduleTimer(
                function()
                    WeakAuras.ScanEvents('TOSH_UNWAVERING_WARD', nextCheck)
                end,
                nextCheck
            )
        -- else
        --     ViragDevTool_AddData({uw_timer=self.region.uw_timer,tl=WeakAuras.timer:TimeLeft(self.region.uw_timer)}, "uw timer")
        end
    end
    
    state.shield = b[16] or 0
end
