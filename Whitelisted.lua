local whitelist = {
    ["ZENO_HUB|157|155|157|153|147|167|162|153|156"] = true,
    ["ZENO_HUB|149|154|148|160|153|172|157|154|155|149"] = true,
    ["ZENO_HUB|101|106|100|112|105|124|109|106|107|101"] = true,
    ["ZENO_HUB|151|153|151|160|146|171|155|157|160|156"] = true,
    ["ZENO_HUB|149|154|148|160|153|172|157|154|155|149"] = true
}

local playerId = tostring(game.Players.LocalPlayer.UserId)

local isWhitelisted = false
for key, _ in pairs(whitelist) do
    if playerId:find(key) then
        isWhitelisted = true
        break
    end
end

if not isWhitelisted then
    game.Players.LocalPlayer:Kick("Not whitelisted")
end
