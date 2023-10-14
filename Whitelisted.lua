local Players = game:GetService("Players")

-- Function to get the UserId
local function GetUserId(Value)
    if not tonumber(Value) and Players:FindFirstChild(tostring(Value)) then
        return Players:FindFirstChild(tostring(Value)).UserId
    else
        local Id = false
        local SuccessId, ReturnName = pcall(function()
            Players:GetNameFromUserIdAsync(Value)
            Id = Value
        end)
        local SuccessName, ReturnId = pcall(function()
            Id = Players:GetUserIdFromNameAsync(Value)
        end)
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

local whitelist = {
    -- Add other whitelisted watermarks here
}

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
