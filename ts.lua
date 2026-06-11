-- Kungsaw Fish It! Tracker v2
-- Auto-detect inventory locations + report stats
-- loadstring(game:HttpGet("RAW_URL"))()

local API_URL = "http://139.59.113.83:3001"
local HEARTBEAT_INTERVAL = 30
local STATS_INTERVAL = 60

local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer

local function getPlayerName()
    return LocalPlayer.Name
end

local function getPlayerId()
    return LocalPlayer.UserId
end

-- Deep search: find all ValueBase objects matching keywords anywhere under an instance
local function findValues(root, maxDepth)
    maxDepth = maxDepth or 5
    local found = {}
    local function scan(instance, depth)
        if depth > maxDepth then return end
        local ok, children = pcall(function() return instance:GetChildren() end)
        if not ok then return end
        for _, child in pairs(children) do
            if child:IsA("ValueBase") then
                pcall(function()
                    found[child:GetFullName()] = {name = child.Name, value = child.Value, path = child:GetFullName()}
                end)
            end
            scan(child, depth + 1)
        end
    end
    scan(root, 0)
    return found
end

-- Search for a value by keyword patterns (case insensitive)
local function searchValue(allValues, patterns)
    for _, entry in pairs(allValues) do
        local nameLower = entry.name:lower()
        for _, pattern in pairs(patterns) do
            if nameLower:find(pattern:lower()) then
                if type(entry.value) == "number" then
                    return entry.value
                elseif type(entry.value) == "string" then
                    local num = tonumber(entry.value)
                    if num then return num end
                end
            end
        end
    end
    return 0
end

-- Count items in Backpack + Character (tools)
local function countItems(patterns)
    local count = 0
    local sources = {}
    local backpack = LocalPlayer:FindFirstChild("Backpack")
    if backpack then table.insert(sources, backpack) end
    local character = LocalPlayer.Character
    if character then table.insert(sources, character) end
    
    for _, source in pairs(sources) do
        for _, item in pairs(source:GetChildren()) do
            local nameLower = item.Name:lower()
            for _, pattern in pairs(patterns) do
                if nameLower:find(pattern:lower()) then
                    count = count + 1
                    break
                end
            end
        end
    end
    return count
end

-- Main stats detection
local cachedValues = nil
local lastScanTime = 0

local function getPlayerStats()
    -- Re-scan values every 5 minutes or first time
    local now = tick()
    if not cachedValues or (now - lastScanTime) > 300 then
        cachedValues = {}
        -- Scan Player children (Data, leaderstats, Stats, etc)
        for _, child in pairs(LocalPlayer:GetChildren()) do
            if child:IsA("Folder") or child:IsA("Configuration") or child:IsA("Model") then
                local vals = findValues(child, 3)
                for k, v in pairs(vals) do cachedValues[k] = v end
            end
        end
        -- Scan ReplicatedStorage for player-specific data
        local playerFolder = ReplicatedStorage:FindFirstChild(LocalPlayer.Name) 
            or ReplicatedStorage:FindFirstChild(tostring(LocalPlayer.UserId))
        if playerFolder then
            local vals = findValues(playerFolder, 3)
            for k, v in pairs(vals) do cachedValues[k] = v end
        end
        -- Common data stores in ReplicatedStorage
        for _, name in pairs({"PlayerData", "GameData", "Data", "Inventory", "FishData"}) do
            local f = ReplicatedStorage:FindFirstChild(name)
            if f then
                local sub = f:FindFirstChild(LocalPlayer.Name) or f:FindFirstChild(tostring(LocalPlayer.UserId))
                if sub then
                    local vals = findValues(sub, 3)
                    for k, v in pairs(vals) do cachedValues[k] = v end
                end
            end
        end
        lastScanTime = now
        print("[Kungsaw] Scanned " .. (function() local c=0; for _ in pairs(cachedValues) do c=c+1 end; return c end)() .. " values")
    end

    local stats = {
        evolved_enchant_stone = searchValue(cachedValues, {"evolvedenchant", "evolved_enchant", "enchantstone", "enchant_stone", "evolvedstone"}),
        secret_fish = searchValue(cachedValues, {"secretfish", "secret_fish", "secretcaught", "secret_caught"}),
        ghostfinn_rod = searchValue(cachedValues, {"ghostfinn", "ghost_finn", "ghostfin"}),
        element_rod = searchValue(cachedValues, {"elementrod", "element_rod", "elementalrod"}),
        diamond_rod = searchValue(cachedValues, {"diamondrod", "diamond_rod"}),
        runic = searchValue(cachedValues, {"runic", "runicrod", "runic_rod"}),
    }

    -- Fallback: count tools in backpack
    if stats.ghostfinn_rod == 0 then stats.ghostfinn_rod = countItems({"ghostfinn", "ghostfin"}) end
    if stats.element_rod == 0 then stats.element_rod = countItems({"element"}) end
    if stats.diamond_rod == 0 then stats.diamond_rod = countItems({"diamond"}) end
    if stats.runic == 0 then stats.runic = countItems({"runic"}) end

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
    
    -- Debug print
    print("[Kungsaw] Stats sent - Stone:" .. stats.evolved_enchant_stone 
        .. " Fish:" .. stats.secret_fish 
        .. " Ghost:" .. stats.ghostfinn_rod 
        .. " Elem:" .. stats.element_rod 
        .. " Dia:" .. stats.diamond_rod 
        .. " Runic:" .. stats.runic)
end

-- Explorer: print what we find (one-time on startup)
local function printDiscovery()
    print("[Kungsaw] === Discovery ===")
    for path, entry in pairs(cachedValues or {}) do
        local nameLower = entry.name:lower()
        local keywords = {"enchant", "secret", "ghost", "element", "diamond", "runic", "fish", "rod", "stone", "evolved", "inventory", "item"}
        for _, kw in pairs(keywords) do
            if nameLower:find(kw) then
                print("[Kungsaw] FOUND: " .. entry.path .. " = " .. tostring(entry.value))
                break
            end
        end
    end
    print("[Kungsaw] === End Discovery ===")
end

-- Main
print("[Kungsaw] Fish It! Tracker v2 loaded")
print("[Kungsaw] Player: " .. getPlayerName())

sendHeartbeat()
wait(3)
sendStats()
printDiscovery()

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
