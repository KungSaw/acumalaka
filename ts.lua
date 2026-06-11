-- Kungsaw Fish It! Tracker v3
-- Multi-layer inventory detection: UI parsing + deep scan + module require
-- loadstring(game:HttpGet("https://raw.githubusercontent.com/KungSaw/acumalaka/refs/heads/main/ts.lua"))()

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

-- ============================================
-- METHOD 1: Deep scan ALL instances under Player (ValueBase objects)
-- ============================================
local function scanValueBases()
    local found = {}
    local function scan(instance, depth)
        if depth > 6 then return end
        local ok, children = pcall(function() return instance:GetChildren() end)
        if not ok then return end
        for _, child in pairs(children) do
            if child:IsA("ValueBase") then
                pcall(function()
                    found[#found + 1] = {name = child.Name:lower(), value = child.Value, path = child:GetFullName()}
                end)
            end
            scan(child, depth + 1)
        end
    end
    -- Scan Player children
    scan(LocalPlayer, 0)
    -- Scan ReplicatedStorage player-specific
    local pf = ReplicatedStorage:FindFirstChild(LocalPlayer.Name) or ReplicatedStorage:FindFirstChild(tostring(LocalPlayer.UserId))
    if pf then scan(pf, 0) end
    return found
end

-- ============================================
-- METHOD 2: Parse UI TextLabels in PlayerGui
-- Fish It! likely shows inventory counts in GUI
-- ============================================
local function scanPlayerGui()
    local found = {}
    local pg = LocalPlayer:FindFirstChild("PlayerGui")
    if not pg then return found end
    
    local function scanGui(instance, depth)
        if depth > 10 then return end
        local ok, children = pcall(function() return instance:GetChildren() end)
        if not ok then return end
        for _, child in pairs(children) do
            -- Look for TextLabels that might show item counts
            if child:IsA("TextLabel") or child:IsA("TextButton") then
                pcall(function()
                    local text = child.Text or ""
                    local name = child.Name:lower()
                    local parentName = child.Parent and child.Parent.Name:lower() or ""
                    local grandParentName = child.Parent and child.Parent.Parent and child.Parent.Parent.Name:lower() or ""
                    found[#found + 1] = {
                        name = name,
                        text = text,
                        parentName = parentName,
                        grandParentName = grandParentName,
                        path = child:GetFullName()
                    }
                end)
            end
            scanGui(child, depth + 1)
        end
    end
    scanGui(pg, 0)
    return found
end

-- ============================================
-- METHOD 3: Scan Backpack tools (rods)
-- ============================================
local function scanBackpack()
    local rods = {}
    local sources = {}
    local backpack = LocalPlayer:FindFirstChild("Backpack")
    if backpack then table.insert(sources, backpack) end
    local character = LocalPlayer.Character
    if character then table.insert(sources, character) end
    
    for _, source in pairs(sources) do
        for _, item in pairs(source:GetChildren()) do
            if item:IsA("Tool") then
                local nameLower = item.Name:lower()
                rods[#rods + 1] = {name = nameLower, fullName = item.Name, path = item:GetFullName()}
            end
        end
    end
    return rods
end

-- ============================================
-- METHOD 4: Try requiring known module patterns
-- ============================================
local function tryRequireModules()
    local data = {}
    
    -- Common patterns for game data modules
    local modulePaths = {
        {ReplicatedStorage, "Modules"},
        {ReplicatedStorage, "Shared"},
        {ReplicatedStorage, "Data"},
        {ReplicatedStorage, "packages"},
        {ReplicatedStorage, "Client"},
    }
    
    for _, pathInfo in pairs(modulePaths) do
        pcall(function()
            local root = pathInfo[1]:FindFirstChild(pathInfo[2])
            if root then
                for _, child in pairs(root:GetDescendants()) do
                    if child:IsA("ModuleScript") then
                        local nameLower = child.Name:lower()
                        if nameLower:find("inventory") or nameLower:find("data") or nameLower:find("player") or nameLower:find("fish") or nameLower:find("rod") or nameLower:find("stat") then
                            data[#data + 1] = {name = child.Name, path = child:GetFullName(), className = "ModuleScript"}
                        end
                    end
                end
            end
        end)
    end
    return data
end

-- ============================================
-- METHOD 5: Scan _G and shared tables
-- ============================================
local function scanGlobals()
    local data = {}
    pcall(function()
        if _G then
            for k, v in pairs(_G) do
                if type(v) == "table" then
                    data[#data + 1] = {key = tostring(k), type = "table", size = #v}
                elseif type(v) == "number" or type(v) == "string" then
                    data[#data + 1] = {key = tostring(k), type = type(v), value = tostring(v)}
                end
            end
        end
    end)
    pcall(function()
        if shared then
            for k, v in pairs(shared) do
                if type(v) == "table" then
                    data[#data + 1] = {key = "shared." .. tostring(k), type = "table", size = #v}
                end
            end
        end
    end)
    pcall(function()
        if getgenv then
            for k, v in pairs(getgenv()) do
                if type(v) == "table" and tostring(k):lower():find("fish") then
                    data[#data + 1] = {key = "getgenv()." .. tostring(k), type = "table"}
                end
            end
        end
    end)
    return data
end

-- ============================================
-- MASTER DISCOVERY (run once, print everything)
-- ============================================
local function runDiscovery()
    print("\n[Kungsaw] ========== DISCOVERY v3 ==========")
    
    -- ValueBases
    print("\n[Kungsaw] --- VALUE BASES (keyword matches) ---")
    local values = scanValueBases()
    local keywords = {"enchant", "secret", "ghost", "element", "diamond", "runic", "fish", "rod", "stone", "evolved", "inventory", "item", "catch", "rare", "legend", "mythic", "tier"}
    local valueMatches = 0
    for _, entry in pairs(values) do
        for _, kw in pairs(keywords) do
            if entry.name:find(kw) then
                print("[Kungsaw] VALUE: " .. entry.path .. " = " .. tostring(entry.value))
                valueMatches = valueMatches + 1
                break
            end
        end
    end
    print("[Kungsaw] Total value matches: " .. valueMatches .. " (scanned " .. #values .. " total)")
    
    -- Backpack/Tools
    print("\n[Kungsaw] --- BACKPACK TOOLS ---")
    local rods = scanBackpack()
    for _, rod in pairs(rods) do
        print("[Kungsaw] TOOL: " .. rod.fullName .. " @ " .. rod.path)
    end
    print("[Kungsaw] Total tools: " .. #rods)
    
    -- PlayerGui text with keywords
    print("\n[Kungsaw] --- PLAYERGUI TEXTS (keyword matches) ---")
    local guiTexts = scanPlayerGui()
    local guiMatches = 0
    for _, entry in pairs(guiTexts) do
        local searchIn = entry.name .. " " .. entry.parentName .. " " .. entry.grandParentName .. " " .. entry.text:lower()
        for _, kw in pairs(keywords) do
            if searchIn:find(kw) then
                print("[Kungsaw] GUI: " .. entry.path .. " | Name=" .. entry.name .. " | Text='" .. entry.text:sub(1, 50) .. "'")
                guiMatches = guiMatches + 1
                break
            end
        end
    end
    print("[Kungsaw] Total GUI matches: " .. guiMatches .. " (scanned " .. #guiTexts .. " total)")
    
    -- Modules
    print("\n[Kungsaw] --- MODULESCRIPTS (interesting) ---")
    local modules = tryRequireModules()
    for _, m in pairs(modules) do
        print("[Kungsaw] MODULE: " .. m.path)
    end
    
    -- Globals
    print("\n[Kungsaw] --- GLOBALS ---")
    local globals = scanGlobals()
    for _, g in pairs(globals) do
        print("[Kungsaw] GLOBAL: " .. g.key .. " [" .. g.type .. "]" .. (g.value and (" = " .. g.value) or ""))
    end
    
    -- Player direct children structure
    print("\n[Kungsaw] --- PLAYER CHILDREN ---")
    for _, child in pairs(LocalPlayer:GetChildren()) do
        print("[Kungsaw] " .. child.Name .. " [" .. child.ClassName .. "] (" .. #child:GetChildren() .. " children)")
    end
    
    -- ReplicatedStorage top-level
    print("\n[Kungsaw] --- REPLICATED STORAGE TOP ---")
    for _, child in pairs(ReplicatedStorage:GetChildren()) do
        print("[Kungsaw] RS: " .. child.Name .. " [" .. child.ClassName .. "] (" .. #child:GetChildren() .. " children)")
    end
    
    print("\n[Kungsaw] ========== END DISCOVERY ==========")
    print("[Kungsaw] PASTE THE OUTPUT ABOVE TO FIX TRACKER")
end

-- ============================================
-- STATS COLLECTION (uses what we find)
-- ============================================
local function getPlayerStats()
    local stats = {
        evolved_enchant_stone = 0,
        secret_fish = 0,
        ghostfinn_rod = 0,
        element_rod = 0,
        diamond_rod = 0,
        runic = 0,
    }
    
    -- Try ValueBase scan
    local values = scanValueBases()
    for _, entry in pairs(values) do
        local n = entry.name
        if (n:find("evolvedenchant") or n:find("evolved_enchant") or n:find("enchantstone") or n:find("enchant_stone")) and type(entry.value) == "number" then
            stats.evolved_enchant_stone = entry.value
        elseif (n:find("secretfish") or n:find("secret_fish") or n:find("secretcaught")) and type(entry.value) == "number" then
            stats.secret_fish = entry.value
        elseif (n:find("ghostfinn") or n:find("ghostfin")) and type(entry.value) == "number" then
            stats.ghostfinn_rod = entry.value
        elseif (n:find("elementrod") or n:find("element_rod") or n:find("elementalrod")) and type(entry.value) == "number" then
            stats.element_rod = entry.value
        elseif (n:find("diamondrod") or n:find("diamond_rod")) and type(entry.value) == "number" then
            stats.diamond_rod = entry.value
        elseif (n:find("runic")) and type(entry.value) == "number" then
            stats.runic = entry.value
        end
    end
    
    -- Fallback: count rods in backpack by name
    local rods = scanBackpack()
    for _, rod in pairs(rods) do
        if rod.name:find("ghostfinn") or rod.name:find("ghostfin") then
            stats.ghostfinn_rod = stats.ghostfinn_rod + 1
        elseif rod.name:find("element") then
            stats.element_rod = stats.element_rod + 1
        elseif rod.name:find("diamond") then
            stats.diamond_rod = stats.diamond_rod + 1
        elseif rod.name:find("runic") then
            stats.runic = stats.runic + 1
        end
    end
    
    return stats
end

-- ============================================
-- HTTP
-- ============================================
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

local function sendHeartbeat()
    apiRequest("/api/report/heartbeat", {
        roblox_username = getPlayerName(),
        roblox_id = getPlayerId(),
    })
end

local function sendStats()
    local stats = getPlayerStats()
    stats.roblox_username = getPlayerName()
    apiRequest("/api/report/stats", stats)
    
    print("[Kungsaw] Stats sent - Stone:" .. stats.evolved_enchant_stone 
        .. " Fish:" .. stats.secret_fish 
        .. " Ghost:" .. stats.ghostfinn_rod 
        .. " Elem:" .. stats.element_rod 
        .. " Dia:" .. stats.diamond_rod 
        .. " Runic:" .. stats.runic)
end

-- ============================================
-- MAIN
-- ============================================
print("[Kungsaw] Fish It! Tracker v3 loaded")
print("[Kungsaw] Player: " .. getPlayerName())

-- Wait for game to fully load
if not game:IsLoaded() then
    game.Loaded:Wait()
end
wait(5) -- Extra wait for data replication

sendHeartbeat()
wait(2)
runDiscovery() -- Print everything we find
wait(1)
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
print("[Kungsaw] IMPORTANT: Check Discovery output above and send it back if stats are still 0")
