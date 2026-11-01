getgenv().VO_CONFIG = {
    -- === HUB / AUTH ===
    HubKey = "cN971JQ7GqrYR_pdP3yP-QGgsWhTISQh0Ns0XK9Rr5c",
    DeviceName = "telur enak",

    -- === MAIN FARM (choose one mode) ===
    PotFarm = true,
    EggFarm = false,
    PetFarm = true, -- Third mode: farm pets from PetFarmList in order (natural task-aging)
    KeepEggFarm = false, -- If true, will keep trying to hatch eggs even when no bucks
    KeepPetFarm = true, -- If true, will switch back when PetFarmList targets appear
    EggName = {"Egg Name"},  -- Priority order: first egg tried, then second, etc.
    PetFarmList = {}, -- Ordered pet names: age all non-FG of first name, then second, etc.; fallback if none available
    PrioritizePet = "",

    -- === PET PEN ===
    PetPen = true,
    CustomPenEggs = {"Fairytale Egg"},
    CustomPenPets = {"Normal Ant", "Normal Mouse"},
    PrioritizePetPenTypes = {"Normal"},  -- "Egg", "Normal", "Neon" (empty = all)

    -- === HALLOWEEN 2026 EVENT ===
    AutoCandyCornPile = false,        -- Claim the Candy Corn Pile (requires the 1.25x Candy Multiplier gamepass)
    AutoFeedStrayCat = true,         -- Feed the Stray Cat once per day/night cycle (uses any normal food)
    AutoCryptCoffins = true,         -- Rusty Keys on ladder coffins + Mummy Spider (also twig coffins until the nest is done)
    AutoPigeonNest = true,           -- Put Crypt Twigs into the Haunted Hotel nest (unlocks the Jacobin Pigeon)
    GhostClustersMinigame = true,    -- Ghost Gallery minigame (farm tasks are fully paused while it runs)
	HauntletMinigame = true,          -- Hauntlet 2 door-picking minigame (on unless set to false; farm tasks pause while it runs)

    -- === PET RELEASER ===
    PetReleaser = true,
    ReleasePets = {
        "Neon Ant",
        "Neon Mouse",
        "Normal Camel",
        "Normal Donkey",
        "Normal Poodle",
        "Normal Orangutan",
        "Normal Parakeet",
        "Normal Zebra",
        "Normal Corgi",
        "Normal Robot",
        "Normal Swordfish",
        "Normal Alicorn",
        "Normal Ancient Dragon",
        "Normal Dragonfly",
        "Normal Pinkypillar",
        "Normal Ms. Muffet",
        "Normal Budgie Witch",
        "Normal Princess Mare",
        "Normal Clumpty",
        "Normal Granny Wolf",
        "Normal Crimson Cape",
        "Normal Little Lamb",
        "Normal Bolt",
        "Normal Caramelgeist",
        "Normal Bobageist",
        "Normal Bubblegeist",
        "Normal Mummy Spider",
        "Normal Jacobin Pigeon",
        "Normal Jumpscare",
        "Normal Huntsman Robin",
        "Normal Three Blind Mice",
        "Pandaguin Glooptodog"
    },       -- Whitelist: names to release (empty = all)
    ExcludeReleasePets = {
        "Skelicorn",
        "Stray Cat Dragon"
    }, -- Blacklist: base names or prefixed like ReleasePets ("Neon Dog", "Normal Cat", "Mega FG X")
    ReleaseTypes = {"Normal", "Neon"},      -- "Mega", "Neon", "Normal" (empty = all)
    ReleaseRarities = {},   -- If ReleasePets non-empty: only used for pets NOT named in ReleasePets. If ReleasePets empty: filters all candidates.
    ExcludeRarities = {},   -- Blacklist rarities (pets on ReleasePets by name bypass this)

    -- === AGE PETS ===
    AgePets = true,
    AgePetsNames = { 
        "Normal Ant",
        "Normal Mouse"
    },
    AgePetsTypes = {
        "Normal"
    },  -- "Normal", "Neon", "ALL"

    -- === AUTO FUSE ===
    AutoFuse = true,
    AutoFuseBlacklist = {}, -- Pet names to never include in neon/mega fusion

    -- === BUY PETS ===
    BuyPets = true,
    BuyPetName = {"Fairytale Egg", "Crystal Egg", "Jacobin Pigeon"},  -- Loops in order, buys all of first pet then moves to next

    -- === STAR REWARDS SHOP ===
    BuyStarRewards = false,
    StarRewardBuyList = {"Gemstone Egg"},

    -- === BOXES ===
    BuyBoxes = false,
    BoxName = {"Box Name"},   -- Boxes to buy when BuyBoxes is true
    OpenBoxes = {"Box Name"}, -- Box names to open from inventory

    -- === LURE ===
    BaitName = "ice_dimension_2025_ice_soup_bait",

    -- === AUTO TRADE ===
    AutoTrade = false,
    ReceiverUsernames = {"tmroc7c07y"},
    TradeItemList = {
         pets = {"Crystal Egg"}
    }, -- Per category: { pets = {"Dog","Neon Cat"}, food = {}, toys = {}, ... } ? use "ALL" in a category to allow that whole category (pets still gated by TradePetType for bare names)
    TradePetType = {"ALL"},       -- Only applies to pets: "ALL", "Mega", "Neon", "Regular", "Neon_FG", "Regular_FG" ? not used for food/toys/etc.; inline prefixes on pet strings (e.g. "Mega Dog") bypass this

    -- === CASH TRANSFER ===
    CashTransfer = false,
    TransferMethods = {"mannequin"},  -- Current Methods: "mannequin"
    TransferAccount = "",

    -- === DISCORD WEBHOOK ===
    WebhookEnabled = false,
    WebhookURL = "https://discord.com/api/webhooks/1554752691559862302/dT9FEpxL-TbNfTnhcK7Tn-hOP4yKpEcvQq0s9U3wYmvSFWbYK5qWJfoQ3wWVTdlFrNgY",
    WebhookPets = {"Stray Cat Dragon"},  -- Pet names to send (empty = all)

    -- === ACCOUNT FEATURES (stop when Conditions met; FarmSync / FarmersV5 only) ===
    AccountFeatures = {
        Enabled = false,
        RequireAll = true, -- true = AND all conditions; false = OR any one
        Conditions = {
            -- { Type = "PetCount", PetName = "Mega Dog", MinCount = 16 },
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
