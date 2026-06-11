-- Kungsaw Fish It! Tracker
-- loadstring(game:HttpGet("RAW_URL"))()

local API_URL = "http://139.59.113.83:3001"

-- Config
local HEARTBEAT_INTERVAL = 30
local STATS_INTERVAL = 60

-- Services
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")

local LocalPlayer = Players.LocalPlayer

local function getPlayerName()
    return LocalPlayer.Name
end

local function getPlayerId()
    return LocalPlayer.UserId
end

-- Count items in backpack/inventory
local function countItem(itemName)
    local count = 0
    local backpack = LocalPlayer:FindFirstChild("Backpack")
    if backpack then
        for _, item in pairs(backpack:GetChildren()) do
            if item.Name == itemName then
                count = count + 1
            end
        end
    end
    local character = LocalPlayer.Character
    if character then
        for _, item in pairs(character:GetChildren()) do
            if item.Name == itemName then
                count = count + 1
            end
        end
    end
    return count
end

-- Get stats from player data
local function getPlayerStats()
    local stats = {
        evolved_enchant_stone = 0,
        secret_fish = 0,
        ghostfinn_rod = 0,
        element_rod = 0,
        diamond_rod = 0,
        runic = 0,
    }

    local data = LocalPlayer:FindFirstChild("Data") or LocalPlayer:FindFirstChild("PlayerData") or LocalPlayer:FindFirstChild("Stats")
    if data then
        local function tryGet(name)
            local v = data:FindFirstChild(name)
            if v then return v.Value end
            return 0
        end
        stats.evolved_enchant_stone = tryGet("EvolvedEnchantStone") or tryGet("Evolved Enchant Stone") or 0
        stats.secret_fish = tryGet("SecretFish") or tryGet("Secret Fish") or 0
        stats.ghostfinn_rod = tryGet("GhostfinnRod") or tryGet("Ghostfinn Rod") or tryGet("Ghostfinn") or 0
        stats.element_rod = tryGet("ElementRod") or tryGet("Element Rod") or tryGet("Element") or 0
        stats.diamond_rod = tryGet("DiamondRod") or tryGet("Diamond Rod") or tryGet("Diamond") or 0
        stats.runic = tryGet("Runic") or tryGet("RunicRod") or tryGet("Runic Rod") or 0
    end

    -- Fallback: check inventory
    if stats.ghostfinn_rod == 0 then stats.ghostfinn_rod = countItem("Ghostfinn Rod") + countItem("Ghostfinn") end
    if stats.element_rod == 0 then stats.element_rod = countItem("Element Rod") + countItem("Element") end
    if stats.diamond_rod == 0 then stats.diamond_rod = countItem("Diamond Rod") + countItem("Diamond") end
    if stats.runic == 0 then stats.runic = countItem("Runic") + countItem("Runic Rod") end

    return stats
end

-- HTTP helper
local function apiRequest(endpoint, data)
    local success, result = pcall(function()
        return request({
            Url = API_URL .. endpoint,
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json",
            },
            Body = HttpService:JSONEncode(data),
        })
    end)
    if success and result and result.StatusCode == 200 then
        return true
    end
    return false
end

-- Send heartbeat
local function sendHeartbeat()
    apiRequest("/api/report/heartbeat", {
        roblox_username = getPlayerName(),
        roblox_id = getPlayerId(),
    })
end

-- Send stats
local function sendStats()
    local stats = getPlayerStats()
    stats.roblox_username = getPlayerName()
    apiRequest("/api/report/stats", stats)
end

-- Main
print("[Kungsaw] Fish It! Tracker loaded")
print("[Kungsaw] Player: " .. getPlayerName())

sendHeartbeat()
wait(2)
sendStats()

spawn(function()
    while true do
        wait(HEARTBEAT_INTERVAL)
        sendHeartbeat()
    end
end)

spawn(function()
    while true do
        wait(STATS_INTERVAL)
        sendStats()
    end
end)

print("[Kungsaw] Running - Heartbeat/" .. HEARTBEAT_INTERVAL .. "s, Stats/" .. STATS_INTERVAL .. "s")
