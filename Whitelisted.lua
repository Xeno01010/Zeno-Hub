-- Load the whitelist
local whitelist = {
    "ZENO_HUB|157|155|157|153|147|167|162|153|156",
    "ZENO_HUB|149|154|148|160|153|172|157|154|155|149",
    "ZENO_HUB|149|154|148|160|153|172|157|154|155|149",
    "ZENO_HUB|151|153|151|160|146|171|155|157|160|156"
}

-- Get the player's name
local playerName = game.Players.LocalPlayer.Name

-- Check if the player's name is in the whitelist
local isWhitelisted = false
for _, whitelistedName in ipairs(whitelist) do
    if playerName == whitelistedName then
        isWhitelisted = true
        break
    end
end

-- If the player is not whitelisted, kick them
if not isWhitelisted then
    game.Players.LocalPlayer:Kick("Not whitelisted")
end
