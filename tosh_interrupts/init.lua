aura_env.watches = setmetatable({}, {
  __index = function(t, k)
    t[k] = {}
    return t[k]
  end,
})

function aura_env.computeSortIndex(type, spellID, member)
  return (
    (("%06d"):format(spellID))..
    (("%02d"):format(member.classID))..
    (("%-12s"):format(member.name))
  )
end

aura_env.playerGUID = UnitGUID("player")
function aura_env:IsPlayer(member)
  return member.GUID == self.playerGUID
end

function aura_env.owner(guid)
  local type = strsplit("-",guid)
  if type == "Pet" then
      for unit in WA_IterateGroupMembers() do
          if UnitGUID(unit.."pet") == guid then
              return UnitGUID(unit)
          end
      end
  end
  return guid
end
