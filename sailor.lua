return {
    SailorPieceConfig = {
        OpenChests = {"Common Chest","Rare Chest","Epic Chest","Legendary Chest"},
        AutoAscend = true,
        AutoUpgradeAscend = true,
        Debug = false,
        Performance = {
            AutoRejoinIfHighRam = 5000,
            WebhookURL = "",
            FPSBoost = true,
            FPSLock = 10,
        },
        SkillTree = {
            Auto = true,
            Priority = {"Luck","Damage","CritChance","CritDamage","HP"},
        },
        AutoStrongestMelee = true,
        Reroll = {
            Trait = {Auto = true, TargetRarity = "Secret"},
            TargetRace = {"Kitsune"},
            TargetClan = {"Eminence","Monarch"},
        },
        Artifact = {
            AutoEquip = true,
            AutoUpgrade = true,
            AutoDeleteTrash = true,
            UpgradeSet = {"Celestial Rupture"},
            UpgradeStopAt = 15,
            TrashRarities = {"Common","Rare","Epic"},
        },
    },

    AutoTradeConfig = {
        MainAccounts = {"mrrpacman"},
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
}
