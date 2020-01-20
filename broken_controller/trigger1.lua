function(event, ... ) -- GOSSIP_SHOW
  local mobId = aura_env:MobId(UnitGUID("npc"))

  if aura_env.mobs[mobId] then
    SelectGossipOption(1)
    return true
  end
end
