-- Whitelist based on UserIds
local whitelist = {
    ["ZENO_HUB|157|155|157|153|147|167|162|153|156"] = true,
    ["ZENO_HUB|149|154|148|160|153|172|157|154|155|149"] = true,
    ["ZENO_HUB|101|106|100|112|105|124|109|106|107|101"] = true,
    ["ZENO_HUB|151|153|151|160|146|171|155|157|160|156"] = true,
    ["ZENO_HUB|149|154|148|160|153|172|157|154|155|149"] = true
}

-- Get the player's UserId and Name
local playerId = tostring(game.Players.LocalPlayer.UserId)
local playerName = game.Players.LocalPlayer.Name

-- Check if the player is whitelisted by UserId or Name
local isWhitelisted = whitelist[playerId] or playerName == "ZENO_HUB|149|154|148|160|153|172|157|154|155|149"

-- If the player is not whitelisted, kick them
if not isWhitelisted then
    game.Players.LocalPlayer:Kick("Not whitelisted")
else
    print("Access granted for player: " .. playerName)
end
