script_key = "xqImXRGIJbTKjNrfBjHmecAFzIgZTDiV"

getgenv().SailorPieceConfig = getgenv().SailorPieceConfig or {
    OpenChests = {
        "Common Chest",
        "Rare Chest",
        "Epic Chest",
        "Legendary Chest",
    },
    AutoAscend = true,
    AutoUpgradeAscend = true,
    Debug = false,
    Performance = {
        AutoRejoinIfHighRam = 4000,
        WebhookURL = "",
        FPSBoost = true,
        FPSLock = 25,
    },
    SkillTree = {
        Auto = true,
        Priority = {"Luck", "Damage", "CritChance", "CritDamage", "HP"},
    },
    AutoStrongestMelee = true,
    Reroll = {
        Trait = {
            Auto = true,
            TargetRarity = "Secret",
        },
        TargetRace = {"Kitsune"},
        TargetClan = {"Eminence", "Monarch"},
    },
    Artifact = {
        AutoEquip = true,
        AutoUpgrade = true,
        AutoDeleteTrash = true,
        UpgradeSet = {"Abyssal Crown Set"},
        UpgradeStopAt = 15,
        TrashRarities = {"Common", "Rare", "Epic"},
    },
}

-- Script Luarmor di thread sendiri
task.spawn(function()
    while true do
        local success, err = pcall(function()
            loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/1169527463a6fb002d07c345110bc0aa.lua"))()
        end)
        if success then break end
        warn("Luarmor Error: " .. tostring(err))
        task.wait(5)
    end
end)

-- Tunggu Luarmor load dulu
task.wait(3)

-- Script kamu di thread sendiri
task.spawn(function()
    while true do
        local success, err = pcall(function()
            loadstring(game:HttpGet("https://siganteng.store/api/script/u/ft_OAxXqM8qa9PTZ0SBJeSopwBjn14u4lXWhe_4XeFccIg"))()
        end)
        if success then break end
        warn("Script Error: " .. tostring(err))
        task.wait(5)
    end
end)
