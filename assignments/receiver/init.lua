C_ChatInfo.RegisterAddonMessagePrefix("TOSH_ASSIGN")

function aura_env.debug(...)
    -- if ViragDevTool_AddData then
    --     ViragDevTool_AddData(...)
    -- end
end

function aura_env:decode(msg)
    local v = msg:match("[^;]+")
    local f = self.decode_v[v]
    if f then
        return f(msg:sub(v:len()+2))
    end
end

local function parse_players(ptxt)
    local players = {}
    for p in ptxt:gmatch("[^,]+") do
        players[p] = p
    end
    return players
end

aura_env.decode_v = {
    ["1"] = function(msg)
        aura_env.debug(msg, "TOSH_ASSIGN receive msg")
        local matcher = msg:gmatch("([^;]*);?")

        local id = matcher()
        local players = parse_players(matcher())
        local time_until = tonumber(matcher())
        local icon = tonumber(matcher())
        local spellid = tonumber(matcher())
        local text = matcher()

        return id, players, time_until, icon, spellid, text
    end,
}
