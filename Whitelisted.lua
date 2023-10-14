-- Whitelist of watermarks
local whitelist = {
    ["ZENO_HUB|157|155|157|153|147|167|162|153|156"] = true,
    ["ZENO_HUB|149|154|148|160|153|172|157|154|155|149"] = true,
    ["ZENO_HUB|101|106|100|112|105|124|109|106|107|101"] = true,
    ["ZENO_HUB|151|153|151|160|146|171|155|157|160|156"] = true,
    -- Add other whitelisted watermarks here
    -- "ZENO_HUB|...", -- Add your whitelisted watermark here
}

local Players = game:GetService("Players")
local lp = game.Players.LocalPlayer

-- Function to get the watermark associated with the UserId
local function GetWatermarkForUserId(UserId)
    -- Logic to determine watermark based on UserId (replace with your logic)
    -- For this example, we'll just concatenate a default watermark with the UserId
    return "ZENO_HUB|101|106|100|112|105|124|109|106|107|101|" .. UserId
end

-- Get the watermark for the current user
local watermarkForCurrentUser = GetWatermarkForUserId(lp.UserId)

-- Check if the generated watermark is in the whitelist
local isWhitelisted = whitelist[watermarkForCurrentUser]

-- If the player is whitelisted, continue; otherwise, kick them
if isWhitelisted then
    print("Access granted for player with UserId: " .. lp.UserId)
else
    lp:Kick("You are not whitelisted.")
end
