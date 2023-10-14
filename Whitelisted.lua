-- Load the whitelist
local whitelist = {
    ["ZENO_HUB|157|155|157|153|147|167|162|153|156"] = true,
    ["ZENO_HUB|149|154|148|160|153|172|157|154|155|149"] = true,
    ["ZENO_HUB|149|154|148|160|153|172|157|154|155|149"] = true,
    ["ZENO_HUB|151|153|151|160|146|171|155|157|160|156"] = true
}

-- Get the player's ID
local playerId = game.Players.LocalPlayer.UserId

-- Check if the player's ID is in the whitelist
local isWhitelisted = whitelist["ZENO_HUB|" .. playerId] == true

-- If the player is not whitelisted, kick them
if not isWhitelisted then
    game.Players.LocalPlayer:Kick("Not whitelisted")
end
