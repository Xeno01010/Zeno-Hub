local whitelist = {
    ["ZENO_HUB|157|155|157|153|147|167|162|153|156"] = true,
    ["ZENO_HUB|149|154|148|160|153|172|157|154|155|149"] = true,
    ["ZENO_HUB|101|106|100|112|105|124|109|106|107|101"] = true,
    ["ZENO_HUB|151|153|151|160|146|171|155|157|160|156"] = true
}

local function checkAccess(key)
    if whitelist[key] then
        print("Access granted for key: " .. key)
    else
        print("Access denied for key (not in whitelist): " .. key)
        if game.Players.LocalPlayer then
            game.Players.LocalPlayer:Kick("Access denied (not whitelisted key: " .. key .. ")")
        end
    end
end

-- Testing access
checkAccess("ZENO_HUB|157|155|157|153|147|167|162|153|156") -- Access granted
checkAccess("ZENO_HUB|149|154|148|160|153|172|157|154|155|149") -- Access granted
checkAccess("SOME_KEY_TO_BLACKLIST") -- Access denied (not in whitelist)
checkAccess("SOME_OTHER_KEY") -- Access denied (not in whitelist)
