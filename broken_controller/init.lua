aura_env.mobs = {
	[152688] = true, -- Captured Kelfin
	[152690] = true, -- Captured Deepshell
}

function aura_env:MobId(guid)
	if not guid then return 1 end
	local _, _, _, _, _, id = strsplit("-", guid)
  return tonumber(id) or 1
end
