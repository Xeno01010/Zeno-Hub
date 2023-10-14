-- Define the whitelist
local whitelist = {
    ["ZENO_HUB|157|155|157|153|147|167|162|153|156"] = true,
    ["ZENO_HUB|101|106|100|112|105|124|109|106|107|101"] = true,
    ["ZENO_HUB|151|153|151|160|146|171|155|157|160|156"] = true,
    ["ZENO_HUB|149|154|148|160|153|172|157|154|155|149"] = true
}

-- Function to check if a key is in the whitelist
local function isWhitelisted(key)
    return whitelist[key] ~= nil
end

-- Whitelisted key to check
local whitelistedKey = "ZENO_HUB|149|154|148|160|153|172|157|154|155|149"

-- Check if the provided key is in the whitelist
if isWhitelisted(whitelistedKey) then
    print("Access granted for key: " .. whitelistedKey)
else
    print("Access denied for key: " .. whitelistedKey)
    game.Players.LocalPlayer:Kick("Access denied (not whitelisted key: " .. whitelistedKey .. ")")
end
