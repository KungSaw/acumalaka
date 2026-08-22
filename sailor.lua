getgenv().VO_CONFIG = {
    DeviceName = "CRYSTALL",

    -- === MAIN FARM (choose one mode) ===
    PotFarm = true,
    EggFarm = false,
    PetFarm = true,
    KeepEggFarm = false,
    KeepPetFarm = true,
    EggName = {"Egg Name"},
    PetFarmList = {"Oakee", "Black Tiger", "Kakapo", "Mexican Wolf", "Black Rhino", "Pangolin", "Black-Footed Ferret", "Abyssinian Cat", "Ocelot", "Orangutan", "Parakeet", "Zebra", "Badger", "Corgi", "Ginger Cat", "Gold Mahi Mahi", "Grinmoire", "Orca", "Pomeranian", "Ribbon Seal", "Robot", "Starfish", "Swordfish", "Toucan"},
    PrioritizePet = "2D Kitty",

    -- === PET PEN ===
    PetPen = true,
    CustomPenEggs = {"Endangered Egg", "Pet Egg", "Cracked Egg", "Starter Egg"},
    CustomPenPets = {
        "Abyssinian Cat", "Badger", "Black Rhino",
        "Black-Footed Ferret", "Corgi",
        "Ginger Cat", "Grinmoire", "Mexican Wolf",
        "Oakee Knight", "Ocelot", "Orangutan", "Orca",
        "Pangolin", "Parakeet", "Pomeranian", "Ribbon Seal",
        "River Otter", "Robot", "Starfish", "Storm Condor", "Swordfish", "Toucan", "Zebra", "Oakee"
    },
    PrioritizePetPenTypes = {"Egg"},

    -- === PET RELEASER ===
    PetReleaser = true,
    ReleasePets = {},
    ExcludeReleasePets = {
        "Frostbite Bear",
        "Dragonfruit Fox",
        "Dango Penguins",
        "Silverback Gorilla",
        "Sushi Penguin",
        "Velocirooster",
        "2D Kitty",
        "Rainbow Trout",
        "Tealwood Monster",
        "Oakee Wizard", 
        "General Sheepdog",
        "Chihuahua"
    },
    ReleaseTypes = {"Neon", "Mega"},
    ReleaseRarities = {},
    ExcludeRarities = {},

    -- === AGE PETS ===
    AgePets = true,
    AgePetsNames = {
        "Abyssinian Cat", "Badger", "Black Rhino",
        "Black-Footed Ferret", "Corgi",
        "Ginger Cat", "Grinmoire", "Mexican Wolf",
        "Oakee Knight", "Ocelot", "Orangutan", "Orca",
        "Pangolin", "Parakeet", "Pomeranian", "Ribbon Seal",
        "River Otter", "Robot", "Starfish", "Storm Condor", "Swordfish", "Toucan", "Zebra"
    },
    AgePetsTypes = {"ALL"},

    -- === AUTO FUSE ===
    AutoFuse = true,
    AutoFuseBlacklist = {},

    -- === BUY PETS ===
    BuyPets = true,
    BuyPetName = {"Crystal Egg", "Tealwood Monster", "Endangered Egg"},

    -- === BOXES ===
    BuyBoxes = true,
    BoxName = "2D Box",
    OpenBoxes = true,

    -- === LURE ===
    BaitName = "Bait Name",

    -- === AUTO TRADE ===
    AutoTrade = false,
ReceiverUsernames = {
},
    TradeItemList = {
        pets = {"Crystal Egg"}
    },
    TradePetType = {"ALL"},

    -- === CASH TRANSFER ===
    CashTransfer = false,
    TransferMethods = {"mannequin"},
    TransferAccount = "",

    -- === DISCORD WEBHOOK ===
    WebhookEnabled = true,
    WebhookURL = "https://discord.com/api/webhooks/1422425905464348772/F-Fgz7wWxWP-qk1-c3T4z-N3ePkyEOJ2DhJE-7DDBukhIDokgtI8jqcbILUURveTVPGa",
    WebhookPets = {
        "Dragonfruit Fox",
        "Dango Penguins",
        "Silverback Gorilla",
        "Velocirooster",
        "Sushi Penguin",
        "Tealwood Monster",
        "Emberlight",
        "Rainbow Trout"
    },

    ExtraOpti = false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/voltrex2/VoHub/refs/heads/main/FARM"))()
