task.wait(10)
getgenv().VO_CONFIG = {
    -- === HUB / AUTH ===
    HubKey = "cN971JQ7GqrYR_pdP3yP-QGgsWhTISQh0Ns0XK9Rr5c",
    DeviceName = "CRYSTALL",

    -- === MAIN FARM ===
    PotFarm = true,
    EggFarm = false,
    PetFarm = true,
    KeepEggFarm = false,
    KeepPetFarm = true,
    EggName = {"Egg Name"},

    PetFarmList = {
        "California Condor",
        "Galapagos Sea Lion",
        "Black Tiger",
        "Kakapo",
        "Black Rhino",
        "Mexican Wolf",
        "Black-Footed Ferret",
        "Pangolin"
    },

    PrioritizePet = "2D Kitty",

    -- === PET PEN ===
    PetPen = true,
    CustomPenEggs = {"Endangered Egg", "Admin Abuse Egg"},

    CustomPenPets = {
        "California Condor",
        "Galapagos Sea Lion",
        "Black Tiger",
        "Kakapo",
        "Black Rhino",
        "Mexican Wolf",
        "Black-Footed Ferret",
        "Pangolin"
    },

    PrioritizePetPenTypes = {"Normal"},

    -- === PET RELEASER ===
    PetReleaser = true,

    ReleasePets = {
        -- Neon variants
        "Neon California Condor",
        "Neon Galapagos Sea Lion",
        "Neon Black Tiger",
        "Neon Kakapo",
        "Neon Black Rhino",
        "Neon Mexican Wolf",
        "Neon Black-Footed Ferret",
        "Neon Pangolin",

        -- Normal variants
        "Abyssinian Cat",
        "Ocelot",
        "Orangutan",
        "Parakeet",
        "Zebra",
        "Badger",
        "Corgi",
        "Ginger Cat",
        "Grinmoire",
        "Orca",
        "Pomeranian",
        "Ribbon Seal",
        "Robot",
        "Starfish",
        "Swordfish",
        "Toucan",
	"Gold Mahi Mahi",
    },

    ExcludeReleasePets = {
        "Dango Penguins",
        "Dragonfruit Fox",
        "Silverback Gorilla",
        "Chihuahua",
        "Frostbite Bear",
        "Velocirooster",
        "2D Kitty",
        "2D Doggy",
        "Rainbow Trout",
        "Tealwood Monster",
        "Oakee Wizard", 
        "General Sheepdog",
        "Sunflower Friend",
        "Violet Friend",
        "Alicorn",
        "Ancient Dragon",
        "Sushi Penguin"
    },

    ReleaseTypes = {},
    ReleaseRarities = {},
    ExcludeRarities = {},

    -- === AGE PETS ===
    AgePets = true,

    AgePetsNames = {
        "California Condor",
        "Galapagos Sea Lion",
        "Black Tiger",
        "Kakapo",
        "Black Rhino",
        "Mexican Wolf"
    },

    AgePetsTypes = {"Normal"},

    -- === AUTO FUSE ===
    AutoFuse = true,
    AutoFuseBlacklist = {},

    -- === BUY PETS ===
    BuyPets = true,
    BuyPetName = {"Endangered Egg", "Crystal Egg"},

    -- === BOXES ===
    BuyBoxes = false,
    BoxName = "",
    OpenBoxes = false,

    -- === LURE ===
    BaitName = "",

    -- === AUTO TRADE ===
    AutoTrade = false,
ReceiverUsernames = {},

    TradeItemList = {
        pets = {"Crystal Egg"}
    },

    TradePetType = {},

    -- === CASH TRANSFER ===
    CashTransfer = false,
    TransferMethods = {},
    TransferAccount = "",

    -- === DISCORD WEBHOOK ===
    WebhookEnabled = false,
    WebhookURL = "",
    WebhookPets = {},

    ExtraOpti = false
}

loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/voltrex2/VoHub/refs/heads/main/FARM"
))()
