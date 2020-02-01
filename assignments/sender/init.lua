local tconc = table.concat
local version = "1"

C_ChatInfo.RegisterAddonMessagePrefix("TOSH_ASSIGN")

function aura_env:encode(id, players, time_until, icon, spellid, text)
    local ptxt = ""
    if type(players) == 'table' then
        ptxt = tconc(players, ',')
    elseif type(players) == 'string' then
        ptxt = players
    end
    local time_until = time_until or ""
    local icon = icon or ""
    local spellid = spellid or ""
    local text = text or ""

    return (
        version..";"..
        id..";"..
        ptxt..";"..
        time_until..";"..
        icon..";"..
        spellid..";"..
        text
    )
end

function aura_env:send(players, time_until, icon, spellid, text)
    local msg = self:encode(self:nextid(), players, time_until, icon, spellid, text)
    if IsInGroup() then
        C_ChatInfo.SendAddonMessage("TOSH_ASSIGN", msg, "RAID")
    else
        C_ChatInfo.SendAddonMessage("TOSH_ASSIGN", msg, "WHISPER", UnitName("player"))
    end
    ViragDevTool_AddData({msg=msg}, "TOSH_ASSIGN send")
end

aura_env.assign_id = 0

function aura_env:nextid()
    self.assign_id = self.assign_id+1
    return self.assign_id
end

local a = aura_env
function a.region.test()
    a:send({"Toshdk", "Toshaman"}, 10, nil, 62618, "TESTING")
end

function a.region.test2()
    a:send({"Sciblaster"}, 20, nil, 47536, "TESTING")
end
