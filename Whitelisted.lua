-- Whitelist of watermarks
local whitelist = {
    ["ZENO_HUB|157|155|157|153|147|167|162|153|156"] = true,
    ["ZENO_HUB|149|154|148|160|153|172|157|154|155|149"] = true,
    ["ZENO_HUB|101|106|100|112|105|124|109|106|107|101"] = true,
    ["ZENO_HUB|151|153|151|160|146|171|155|157|160|156"] = true,
    -- Add other whitelisted watermarks here
}

local Players = game:GetService("Players")
local lp = game.Players.LocalPlayer

-- Function to generate watermark based on the UserId
local function GenerateWatermark(UserId)
    local WaterMark = "ZENO_HUB|"
    local result = ""

    -- Generate the watermark based on UserId
    for i = 1, #tostring(UserId) do
        local c = tostring(UserId):sub(i, i)
        local k = ("didiask"):sub((i - 1) % #("didiask") + 1, (i - 1) % #("didiask") + 1)
        result = result .. string.char((string.byte(c) + string.byte(k)) % 256)
    end

    return WaterMark .. result:gsub(".", function(bb)
        return "\\" .. string.byte(bb)
    end) or "\\"
end

-- Get the watermark for the current user
local watermarkForCurrentUser = GenerateWatermark(lp.UserId)

-- Check if the generated watermark is in the whitelist
local isWhitelisted = whitelist[watermarkForCurrentUser]

-- If the player is whitelisted, allow access; otherwise, kick them
if isWhitelisted then
    print("Access granted for player with UserId: " .. lp.UserId)
else
    lp:Kick("You are not whitelisted.")
end
