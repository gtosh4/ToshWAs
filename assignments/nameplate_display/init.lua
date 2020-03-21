function aura_env:NameplateForGUID(guid)
    for i=1,40 do
        local uid = "nameplate"..i
        if UnitGUID(uid) == guid then
            return uid
        end
    end
end
