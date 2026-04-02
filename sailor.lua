script_key="xqImXRGIJbTKjNrfBjHmecAFzIgZTDiV";

-- CONFIG 1 (Main Script)
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
        AutoRejoinIfHighRam = 5000,
        WebhookURL = "",
        FPSBoost = false,
        FPSLock = 10,
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
        UpgradeSet = {"Celestial Rupture"},
        UpgradeStopAt = 15,
        TrashRarities = {"Common", "Rare", "Epic"},
    },
}

-- CONFIG 2 (Auto Trade)
getgenv().AutoTradeConfig = {
    MainAccounts = {
        "mrrpacman",
    },
    Items = {
        "Race Reroll",
        "Clan Reroll",
        "Mythical Chest",
        "Aura Crate",
        "Cosmetic Crate",
        "Trait Reroll",
        "Upper Seal",
    },
}

-- LOAD SCRIPT 1 (pakai retry biar stabil)
task.spawn(function()
    while true do
        local success = pcall(function()
            loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/1169527463a6fb002d07c345110bc0aa.lua"))()
        end)
        if success then break end
        task.wait(5)
    end
end)

-- LOAD SCRIPT 2
task.spawn(function()
    pcall(function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/75c7fe88bf77410a404199a69629aae3.lua"))()
    end)
end)
