local whitelist = {
    ["ZENO_HUB|157|155|157|153|147|167|162|153|156"] = true,
}

-- Check if a key is in the whitelist
local function isWhitelisted(key)
    return whitelist[key]
end

-- Example usage:
local keyToCheck = "ZENO_HUB|157|155|157|153|147|167|162|153|156"
if isWhitelisted(keyToCheck) then
    print("Key is whitelisted")
else
    print("Key is not whitelisted")
end
