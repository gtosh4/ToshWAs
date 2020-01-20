aura_env.ztTypes = {
  ["HEALING"] = true,
  ["UTILITY"] = true,
  ["EXTERNAL"] = true,
  ["RAIDCD"] = true,
}

function aura_env.computeSortIndex(type, spellID, member)
  return (
    (("%02d"):format(member.classID))..
    (("%-12s"):format(member.name))..
    (("%06d"):format(spellID))
  )
end
