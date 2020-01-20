
function aura_env.IsWarlock(uid)
  return select(3, UnitClass(uid)) == 9
end

aura_env.warlocks = setmetatable({}, {
  __index = function(t, k)
      t[k] = {}
      return t[k]
  end
})
