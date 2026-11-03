getgenv().VO_CONFIG = {
    -- === HUB / AUTH ===
    HubKey = "cN971JQ7GqrYR_pdP3yP-QGgsWhTISQh0Ns0XK9Rr5c",
    DeviceName = "VPS",

    -- === MAIN FARM (choose one mode) ===
    PotFarm = true,
    EggFarm = false,
    PetFarm = true, -- Third mode: farm pets from PetFarmList in order (natural task-aging)
    EggBuy = true, -- If true (default): buy an egg when none in inventory. If false: no target eggs -> switch to PotFarm
    KeepEggFarm = false, -- If true, will keep trying to hatch eggs even when no bucks
    KeepPetFarm = true, -- If true, will switch back when PetFarmList targets appear
    EggName = {"Egg Name"},  -- Priority order: first egg tried, then second, etc.
    PetFarmList = {
        "Normal Pinkypillar",
        "Normal Ms. Muffet",
        "Normal Budgie Witch",
        "Normal Princess Mare",
        "Normal Clumpty",
        "Normal Granny Wolf",
        "Normal Little Lamb",
        "Normal Crimson Cape"
    },
    Farm2DEvent = true,
    PrioritizePet = "2D Kitty",

    -- === HALLOWEEN 2026 EVENT ===
    AutoCandyCornPile = false,        -- Claim the Candy Corn Pile (requires the 1.25x Candy Multiplier gamepass)
    GhostClustersMinigame = true,     -- Ghost Gallery minigame (on unless set to false; farm tasks pause while it runs; drops Crypt Keys)
    HauntletMinigame = true,          -- Hauntlet 2 door-picking minigame (on unless set to false; farm tasks pause while it runs)
    SpotlightMinigame = true,         -- Spotlight circus candy corn minigame (on unless set to false; farm tasks pause while it runs)

    -- === PET PEN ===
    PetPen = true,
    CustomPenEggs = {"Fairytale Egg"},
    CustomPenPets = {
        "Normal Pinkypillar",
        "Normal Ms. Muffet",
        "Normal Budgie Witch",
        "Normal Princess Mare",
        "Normal Clumpty",
        "Normal Granny Wolf",
        "Normal Little Lamb",
        "Normal Crimson Cape"
    },
    PrioritizePetPenTypes = {"Egg", "Normal"},  -- "Egg", "Normal", "Neon" (empty = all)

    -- === PET RELEASER ===
    PetReleaser = true,
    ReleasePets = {
        "Pinkypillar",
        "Ms. Muffet",
        "Budgie Witch",
        "Princess Mare",
        "Clumpty",
        "Granny Wolf",
        "Little Lamb",
        "Crimson Cape"
    },       -- Whitelist: names to release (empty = all)
    ExcludeReleasePets = {}, -- Blacklist: base names or prefixed like ReleasePets ("Neon Dog", "Normal Cat", "Mega FG X")
    ReleaseTypes = {"Neon"},      -- "Mega", "Neon", "Normal" (empty = all)
    ReleaseRarities = {},   -- If ReleasePets non-empty: only used for pets NOT named in ReleasePets. If ReleasePets empty: filters all candidates.
    ExcludeRarities = {"Legendary"},   -- Blacklist rarities (pets on ReleasePets by name bypass this)

    -- === AGE PETS ===
    AgePets = true,
    AgePetsNames = {
        "Budgie Witch",
        "Princess Mare",
        "Clumpty",
        "Granny Wolf",
        "Little Lamb",
        "Crimson Cape"
    },
    AgePetsTypes = {"Normal"},  -- "Normal", "Neon", "ALL"

    -- === AUTO FUSE ===
    AutoFuse = true,
    AutoFuseBlacklist = {}, -- Pet names to never include in neon/mega fusion

    -- === BUY PETS ===
    BuyPets = true,
    BuyPetName = {"Crystal Egg", "Skelicorn", "Fairytale Egg"},  -- Loops in order, buys all of first pet then moves to next

    -- === STAR REWARDS SHOP ===
    BuyStarRewards = true,
    StarRewardBuyList = {"Gemstone Egg"},

    -- === BOXES ===
    BuyBoxes = false,
    BoxName = {"Box Name"},   -- Boxes to buy when BuyBoxes is true
    OpenBoxes = {"Box Name"}, -- Box names to open from inventory

    -- === LURE ===
    BaitName = "Bait Name",

    -- === AUTO TRADE ===
    AutoTrade = true,
    ReceiverUsernames = {
        "aaxstore10001",
        "RahmatRacing7791",
        "DadangSusanto9136",
        "AsepKnalpot6290",
        "RiniSekar2088",
        "JuanSitorus5190",
        "DedeGunawan4711",
        "RatnaYuki3619",
        "YantoBeni8801",
        "Tukimen9164",
        "Sarimi5183",
        "Kukumi7260",
        "Ruzuka9148",
        "Jajang7709",
        "Sendy5193"
    },
    TradeItemList = {
        pets = {"Crystal Egg", "Skelicorn", "Three Blind Mice", "Admin Abuse Egg"}
    }, -- Per category: { pets = {"Dog","Neon Cat"}, food = {}, toys = {}, ... } ? use "ALL" in a category to allow that whole category (pets still gated by TradePetType for bare names)
    TradePetType = {"ALL"},       -- Only applies to pets: "ALL", "Mega", "Neon", "Regular", "Neon_FG", "Regular_FG" ? not used for food/toys/etc.; inline prefixes on pet strings (e.g. "Mega Dog") bypass this

    -- === CASH TRANSFER ===
    CashTransfer = false,
    TransferMethods = {"mannequin"},  -- Current Methods: "mannequin"
    TransferAccount = "",

    -- === DISCORD WEBHOOK ===
    WebhookEnabled = false,
    WebhookURL = "",
    WebhookPets = {},  -- Pet names to send (empty = all)

    -- === ACCOUNT FEATURES (stop when Conditions met; FarmSync / FarmersV5 only) ===
    AccountFeatures = {
        Enabled = false,
        RequireAll = true, -- true = AND all conditions; false = OR any one
        Conditions = {
            -- { Type = "PetCount", PetName = "Mega Neon Dog", MinCount = 16 },
            -- { Type = "Currency", Currency = "money", MinAmount = 100000 },
            -- { Type = "SessionMinutes", MinMinutes = 180 },
        },
        ["Selected Tool"] = "FarmSync", -- or "FarmersV5"
        FarmSync = {
            DisableAccount = false,
            AutoChange = false,
            StartFolderId = "",
            EndFolderId = "",
            ConfigId = "",
        },
        FarmersV5 = {
            DisableAccount = false,
            APIKey = "",
            AutoSwap = false,
            AutoSwapOption = 1,
            AutoSwapCooldown = 100,
        },
    },

    ExtraOpti = true
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/voltrex2/VoHub/refs/heads/main/FARM"))()
