getgenv().ATConfig = {
    -- ## General
    HubKey = "cN971JQ7GqrYR_pdP3yP-QGgsWhTISQh0Ns0XK9Rr5c",
    MainAccUsername = {
        "ELxSaveSaw",
        "evelynclara22",
        "clarabelle730",
        "cinderelasaw1",
        "doktersaw2",
        "awiu325",
        "awi4377",
        "bontotevelyn"
    },
    PetsToTrade = {"Crystal Egg"},
    TradePetType = {"ALL"}, -- Choose any combination: "ALL", "Mega", "Neon", "Regular", "Neon_FG", "Regular_FG"
    ForceReceiver = false, -- If true, any account the script is executed on will be treated as a receiver
    PreventGameLoad = false,
    
    buyPet = false,
    PetName = {"Dog", "Cat"}, -- Pet Names to Trade/Buy (priority order: buys all of first pet, then all of second, etc.)
    Quantity = 0, -- Set to 0 if you want to buy ALL

    buyBoxes = false,
    boxName = "Kelp Raider Box",
    openBoxes = true,

    transferBait = false,
    baitName = "Shiver Cone Bait", -- [ Shiver Cone Bait / Subzero Popsicle Bait ]

    SmartBuy = false,

    AgePets = false,
    AgeNeons = true, -- Enable if u want to make megas
    useTinyAgePotion = true,
    PetsToAge = {"Dog"},
    autoFuse = true, -- Auto Convert to Neon/Mega

    TradeTimeout = false, -- If true, closes game if trade is confirming for more than 150 seconds

    AccountFeatures = {
        ["LeaveServer"] = true, -- Leave server when transfer is completed
        ["LeaveDelay"] = 20, -- Delay in seconds to wait before leaving

        ["Selected Tool"] = "FarmSync", -- "FarmSync" or "FarmersV5"
        ["FarmSync"] = {
            DisableAccount = false,
            AutoChange = false,
            StartFolderId = "",
            EndFolderId = "",
            ConfigId = ""
        },
        ["FarmersV5"] = {
            DisableAccount = false,
            APIKey = "",
        }
    },

    -- ### Custom Trade List
    CustomTradeList = {
        ["pets"] = {
            ["Trade"] = {},
            ["Ignore"] = {}
        },
        ["food"] = {
            ["Trade"] = {},
            ["Ignore"] = {}
        },
        ["pet_accessories"] = {
            ["Trade"] = {},
            ["Ignore"] = {}
        },
        ["toys"] = {
            ["Trade"] = {},
            ["Ignore"] = {}
        },
        ["transport"] = {
            ["Trade"] = {},
            ["Ignore"] = {}
        },
        ["gifts"] = {
            ["Trade"] = {},
            ["Ignore"] = {}
        },
        ["strollers"] = {
            ["Trade"] = {},
            ["Ignore"] = {}
        },
        ["stickers"] = {
            ["Trade"] = {},
            ["Ignore"] = {}
        }
    }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/voltrex2/VoHub/refs/heads/main/UTILITY_SCRIPT"))()
