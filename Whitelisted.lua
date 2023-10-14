local Players = game:GetService("Players")

-- Whitelist of watermarks
local whitelist = {
    "ZENO_HUB|157|155|157|153|147|167|162|153|156",
    "ZENO_HUB|149|154|148|160|153|172|157|154|155|149",
    "ZENO_HUB|101|106|100|112|105|124|109|106|107|101",
    "ZENO_HUB|151|153|151|160|146|171|155|157|160|156"
}

-- Function to get the UserId
local function GetUserId(Value)
    if not tonumber(Value) and Players:FindFirstChild(tostring(Value)) then
        return Players:FindFirstChild(tostring(Value)).UserId
    else
        local Id = Players:GetUserIdFromNameAsync(Value)
        return Id
    end
end

local lp = game.Players.LocalPlayer 

-- Replace "YourUserId" with your actual UserId
local YourUserId = 1107892621
local UserId = YourUserId

local WaterMark = "ZENO_HUB|"
local result = ""
for i = 1, #tostring(UserId) do
    local c = tostring(UserId):sub(i, i)
    local k = ("didiask"):sub((i - 1) % #("didiask") + 1, (i - 1) % #("didiask") + 1)
    result = result .. string.char((string.byte(c) + string.byte(k)) % 256)
end
local Input = WaterMark .. result:gsub(".", (function(bb)
    return "\\" .. string.byte(bb)
end)) or "\\"

-- Check if the generated watermark is in the whitelist
local isWhitelisted = false
for _, wPly in ipairs(whitelist) do
    if Input == wPly then
        isWhitelisted = true
        break
    end
end

-- If the player is whitelisted, continue; otherwise, kick them
if isWhitelisted then
    print("Access granted for player with UserId: " .. UserId)
else
    lp:Kick("You are not whitelisted.")
end
