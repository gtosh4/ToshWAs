if not aura_env.state then return end

local spellid = select(7, GetSpellInfo(aura_env.state.spellId))
local assigns = aura_env.assigns[spellid]
if not assigns then return end
if aura_env.isfake[spellid](aura_env.state) then return end

local count = aura_env.count[spellid]+1
aura_env.count[spellid] = count

if not assigns[count] then return end

for atype, v in pairs(assigns[count]) do
    for _, at in ipairs(v) do
        local args = setmetatable({}, {__index=at})
        if not args.duration then
            args.duration = aura_env.state.duration + (args.delay or 0)
        end
        WeakAuras.ScanEvents("TOSH_ASSIGN_SEND", atype, args)
    end
end
