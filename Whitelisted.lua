-- Whitelist of watermarks
local whitelist = {
    ["ZENO_HUB|157|155|157|153|147|167|162|153|156"] = true,
    ["ZENO_HUB|149|154|148|160|153|172|157|154|155|149"] = true,
    ["ZENO_HUB|101|106|100|112|105|124|109|106|107|101"] = true,
    ["ZENO_HUB|151|153|151|160|146|171|155|157|160|156"] = true,
    -- Add other whitelisted watermarks here
}

local function GetUserId(Value)
    if not tonumber(Value) and Players:FindFirstChild(tostring(Value)) then
        return Players:FindFirstChild(tostring(Value)).UserId
    else
        local Id = false
        local SuccesId, ReturnName = pcall(function()
            Players:GetNameFromUserIdAsync(Value)
            Id = Value
        end)
        local SuccesName, ReturnId = pcall(function()
            Id = Players:GetUserIdFromNameAsync(Value)
        end)
        return Id
    end
end

local lp = game.Players.LocalPlayer 
local UserId = GetUserId(lp) 

local WaterMark  = "ZENO_HUB|"
local result = ""
for i = 1, #tostring(UserId) do
local c = tostring(UserId):sub(i, i)
local k = ("didiask"):sub((i - 1) % #("didiask") + 1, (i - 1) % #("didiask") + 1)
result = result .. string.char((string.byte(c) + string.byte(k)) % 256)
end
local Input=WaterMark..result:gsub(".",(function(bb)
return "\\"..string.byte(bb)
end)) or "\\"

For _, wPly in ipairs(whitelist) do - - add list with ids
if Input == wPly then
return --LOAD SCRIPT HERE
end
end
