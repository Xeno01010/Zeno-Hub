-- Whitelist
local whitelist = {
    ["ZENO_HUB|157|155|157|153|147|167|162|153|156"] = true,
    ["ZENO_HUB|149|154|148|160|153|172|157|154|155|149"] = true,
    ["ZENO_HUB|101|106|100|112|105|124|109|106|107|101"] = true,
    ["ZENO_HUB|151|153|151|160|146|171|155|157|160|156"] = true,
    ["ZENO_HUB|149|154|148|160|153|172|157|154|155|149"] = true
}

-- Check if a key is in the whitelist
local function isWhitelisted(key)
    return whitelist[key] ~= nil
end

-- Example usage:
local keyToCheck = "ZENO_HUB|149|154|148|160|153|172|157|154|155|149"
if isWhitelisted(keyToCheck) then
    print("Key is whitelisted")
else
    print("Key is not whitelisted")
end

-- Check if the player is whitelisted based on their UserId
local function isPlayerWhitelisted(player)
    return player.UserId and whitelist["ZENO_HUB|" .. tostring(player.UserId)] == true
end

-- Get the player
local player = game.Players.LocalPlayer

-- Check if the player is whitelisted
if player and isPlayerWhitelisted(player) then
    print("Player is whitelisted")
else
    print("Player is not whitelisted")
    -- Optional: You can kick or handle blacklisted players here
end
