-- Get the local player's name
local name = game.Players.LocalPlayer.Name

-- Whitelist of allowed names
local whitelist = {
    "xperchx",
    "eyxiydz",
    "jhopeismehome17",
    "matias264735",
    "Jumbo_Martain20",
    "Cgy9l",
    "Havingagoodday31",
    "Kunnder2",
    "ggahcs3727",
    "bruh_ayo13",
    "kaashipro",
    "BeNokia0758",
    "Asadahmedf"
}

-- Wait until the local player is available
repeat
    wait()
until game.Players.LocalPlayer

-- Check if the player's name is in the whitelist
local isWhitelisted = false
for _, wPly in ipairs(whitelist) do
    if game.Players.LocalPlayer.Name == wPly then
        isWhitelisted = true
        print("Whitelisted user")
        -- Load the whitelist system API if the player is whitelisted
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Xeno01010/Zeno-Hub/main/WhiteList2", true))()
        break  -- Exit the loop since we found a match
    end
end

if not isWhitelisted then
    -- If not whitelisted, revert the player's name and kick them
    game.Players.LocalPlayer.Name = name
    game.Players.LocalPlayer:Kick("Not whitelisted")
end
