task.wait(3)

getgenv().VO_CONFIG = {
    -- === HUB / AUTH ===
    HubKey = "cN971JQ7GqrYR_pdP3yP-QGgsWhTISQh0Ns0XK9Rr5c",
    DeviceName = "PENTIL",

    -- === MAIN FARM (choose one mode) ===
    PotFarm = false,
    EggFarm = true,
    PetFarm = false, -- Third mode: farm pets from PetFarmList in order (natural task-aging)
    EggBuy = true, -- If true (default): buy an egg when none in inventory. If false: no target eggs -> switch to PotFarm
    KeepEggFarm = true, -- If true, will keep trying to hatch eggs even when no bucks
    KeepPetFarm = false, -- If true, will switch back when PetFarmList targets appear
    EggName = {"Cracked Egg", "Admin Abuse Egg"},  -- Target egg for Unicorn chance
    PetFarmList = {},
    Farm2DEvent = true,
    PrioritizePet = "2D Kitty",


    -- === PET PEN ===
    PetPen = true,
    CustomPenEggs = {"Cracked Egg", "Admin Abuse Egg"},
    CustomPenPets = {},
    PrioritizePetPenTypes = {"Egg"},  -- "Egg", "Normal", "Neon" (empty = all)

    -- === PET RELEASER ===
    PetReleaser = true,
    ReleasePets = {},       -- Whitelist: names to release (empty = all)
    ExcludeReleasePets = {}, -- Blacklist: base names or prefixed like ReleasePets ("Neon Dog", "Normal Cat", "Mega FG X")
    ReleaseTypes = {},      -- "Mega", "Neon", "Normal" (empty = all)
    ReleaseRarities = {"Common", "Uncommon", "Rare", "Ultra Rare", "Legendary"},   -- If ReleasePets non-empty: only used for pets NOT named in ReleasePets. If ReleasePets empty: filters all candidates.
    ExcludeRarities = {},   -- Blacklist rarities (pets on ReleasePets by name bypass this)

    -- === AGE PETS ===
    AgePets = false,
    AgePetsNames = {},
    AgePetsTypes = {"Normal"},  -- "Normal", "Neon", "ALL"

    -- === AUTO FUSE ===
    AutoFuse = true,
    AutoFuseBlacklist = {}, -- Pet names to never include in neon/mega fusion

    -- === BUY PETS ===
    BuyPets = true,
    BuyPetName = {"Cracked Egg", "Crystal Egg"},  -- Buy Crystal Eggs first, then Retired Eggs

    -- === STAR REWARDS SHOP ===
    BuyStarRewards = false,
    StarRewardBuyList = {},

    -- === BOXES ===
    BuyBoxes = false,
    BoxName = {"Box Name"},   -- Boxes to buy when BuyBoxes is true
    OpenBoxes = {"Box Name"}, -- Box names to open from inventory

    -- === LURE ===
    BaitName = "Cyclone Sponge Bait",
    LightningFarm = true,

    -- === AUTO TRADE ===
    AutoTrade = false,
    ReceiverUsernames = {},
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
