aura_env.ztTypes = {
  ["HEALING"] = true,
  ["UTILITY"] = true,
  ["EXTERNAL"] = true,
}

aura_env.whitelist = {
  [196718] = true, -- Darkness
  [740] = true, -- Tranquility
  [31821] = true, -- Aura Mastery
  [216331] = true, -- Avenging Crusader
  [62618] = true, -- Power Word: Barrier
  [271466] = true, -- Luminous Barrier
  [246287] = true, -- Evangelism
  [47536] = true, -- Rapture
  [64843] = true, -- Divine Hymn
  [265202] = true, -- Holy Word: Salvation
  [108280] = true, -- Healing Tide Totem
  [98008] = true, -- Spirit Link Totem
  [97462] = true, -- Rallying Cry
  [115310] = true, -- Revival
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
