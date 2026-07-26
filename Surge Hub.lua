local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local MarketplaceService = game:GetService("MarketplaceService")

local TARGET_PLACE_ID = 137233438285284
local SCRIPT_URL = "loadstring(game:HttpGet("https://raw.githubusercontent.com/m21066191-wq/Surge-Hub/main/Scripts/Chicken%20Farm.lua"))()"

local currentPlaceId = game.PlaceId

if currentPlaceId == TARGET_PLACE_ID then
    local success, err = pcall(function()
        loadstring(game:HttpGet(SCRIPT_URL))()
    end)
    
    if not success then
        warn("Surge Hub: Failed to load script -> " .. tostring(err))
    end
else
    print("Surge Hub: This script is not meant for this game. Current Place ID: " .. tostring(currentPlaceId))
end
