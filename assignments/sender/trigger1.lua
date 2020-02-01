function(event, args)
    if event ~= "TOSH_ASSIGN_SEND" then return end

    if args then
        aura_env:send(args.players, args.time_until, args.icon, args.spellid, args.text)
    end
end
