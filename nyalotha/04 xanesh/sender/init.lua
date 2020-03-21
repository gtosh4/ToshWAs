aura_env.count = setmetatable({}, {__index=function() return 0 end})
function aura_env:reset()
    table.wipe(self.count)
end

aura_env.assigns = {}

-- Terror Wave Interrupts
local star, circle, diamond = 1, 2, 3
aura_env.targets = {
    star=star,
    circle=circle,
    diamond=diamond,
}

aura_env.assigns[316211] = setmetatable(
    {
        [star] = {
            [1] = {
                {players="Moonblight"},
            },
            [2] = {
                {players="Snareiat"},
            },
            [3] = {
                {players="Simbbaa"},
            },
        },
        [circle] = {
        },
        [diamond] = {
        },
    },
    {
        __call==function(self, guid)
            local c = aura_env.count[guid]

            local i = GetRaidTargetIndex(guid)
            if not i then return end

            local m = self[i]
            if not m then return end

            return m[c % #m + 1]
        end
    }
)
