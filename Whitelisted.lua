-- Define the whitelist
local whitelist = {
    ["ZENO_HUB|157|155|157|153|147|167|162|153|156"] = true,
    ["ZENO_HUB|149|154|148|160|153|172|157|154|155|149"] = true,
    ["ZENO_HUB|101|106|100|112|105|124|109|106|107|101"] = true,
    ["ZENO_HUB|151|153|151|160|146|171|155|157|160|156"] = true,
    ["ZENO_HUB|149|154|148|160|153|172|157|154|155|149"] = true
}

-- Get the player's UserId
local playerId = game.Players.LocalPlayer.UserId

-- Check if the player's UserId is whitelisted
local isWhitelisted = whitelist["ZENO_HUB|" .. playerId]

-- If the player is not whitelisted, kick them
if not isWhitelisted then
    game.Players.LocalPlayer:Kick("Not whitelisted")
else
    print("Access granted for UserId: " .. playerId)
end
