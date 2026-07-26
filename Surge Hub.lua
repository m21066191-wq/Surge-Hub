local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local MarketplaceService = game:GetService("MarketplaceService")

local TARGET_PLACE_ID_1 = 137233438285284
local TARGET_PLACE_ID_2 = 537413528

local currentPlaceId = game.PlaceId

if currentPlaceId == TARGET_PLACE_ID_1 then
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/m21066191-wq/Surge-Hub/main/Scripts/Chicken%20Farm.lua"))()
    end)
    
    if not success then
        warn("Surge Hub: Failed to load script -> " .. tostring(err))
    end
elseif currentPlaceId == TARGET_PLACE_ID_2 then
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/m21066191-wq/Surge-Hub/main/Scripts/Build%20a%20Boat.lua"))()
    end)
    
    if not success then
        warn("Surge Hub: Failed to load script -> " .. tostring(err))
    end
else
    print("Surge Hub: This script is not meant for this game. Current Place ID: " .. tostring(currentPlaceId))
end
