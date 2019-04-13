aura_env.ztTypes = {
  ["HEALING"] = true,
  ["UTILITY"] = true,
  ["EXTERNAL"] = true,
}

aura_env.whitelist = {
  [29166] = true, -- Innervate
  [102342] = true, -- Ironbark
  [116849] = true, -- Life Cocoon
  [6940] = true, -- Blessing of Sacrifice
  [1022] = true, -- Blessing of Protection
  [633] = true, -- Lay on Hands
  [204018] = true, -- Blessing of Spellwarding
  [33206] = true, -- Pain Suppression
  [47788] = true, -- Guardian Spirit
}

function aura_env.computeSortIndex(type, spellID, member)
  return (
    (("%02d"):format(member.classID))..
    (("%-12s"):format(member.name))..
    (("%06d"):format(spellID))
  )
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
