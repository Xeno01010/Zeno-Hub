local whitelist = {
    ["ZENO_HUB|157|155|157|153|147|167|162|153|156"] = true,
    ["ZENO_HUB|149|154|148|160|153|172|157|154|155|149"] = true,
    ["ZENO_HUB|101|106|100|112|105|124|109|106|107|101"] = true,
    ["ZENO_HUB|151|153|151|160|146|171|155|157|160|156"] = true
}

local blacklist = {
    ["SOME_KEY_TO_BLACKLIST"] = true,
    -- Add other keys to blacklist as needed
}

function checkAccess(key)
    if whitelist[key] then
        print("Access granted for key: " .. key)
    elseif blacklist[key] then
        print("Access denied for key (blacklisted): " .. key)
        game.Players.LocalPlayer:Kick("Access denied (blacklisted key: " .. key .. ")")
    else
        print("Access denied for key (not in whitelist or blacklist): " .. key)
        game.Players.LocalPlayer:Kick("Access denied (not whitelisted key: " .. key .. ")")
    end
end

-- Testing access
checkAccess("ZENO_HUB|157|155|157|153|147|167|162|153|156") -- Access granted
checkAccess("SOME_KEY_TO_BLACKLIST") -- Access denied (blacklisted)
checkAccess("SOME_OTHER_KEY") -- Access denied (not in whitelist or blacklist)
