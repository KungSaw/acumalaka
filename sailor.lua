getgenv().VO_CONFIG = {
    -- === HUB / AUTH ===
    HubKey = "cN971JQ7GqrYR_pdP3yP-QGgsWhTISQh0Ns0XK9Rr5c",
    DeviceName = "CRYSTALL",

    -- === MAIN FARM (choose one mode) ===
    PotFarm = true,
    EggFarm = false,
    PetFarm = true,
    KeepEggFarm = false,
    KeepPetFarm = true,
    EggName = {"Egg Name"},
    PetFarmList = {"Budgie Witch", "Princess Mare", "Clumpty", "Granny Wolf", "Crimson Cape", "Little Lamb", "Oakee", "Black Tiger", "Camel", "Donkey", "Kakapo", "Mahi Mahi", "Muskrat", "Poodle", "Shih Tzu", "Mexican Wolf", "Black Rhino", "Pangolin", "Black-Footed Ferret", "Abyssinian Cat", "Ocelot", "Orangutan", "Parakeet", "Zebra", "Badger", "Corgi", "Ginger Cat", "Gold Mahi Mahi", "Grinmoire", "Orca", "Pomeranian", "Ribbon Seal", "Robot", "Starfish", "Swordfish", "Toucan"},
    PrioritizePet = "2D Kitty",

    -- === PET PEN ===
    PetPen = true,
    CustomPenEggs = {"Fairytale Egg", "Cracked Egg", "Starter Egg", "Pet Egg"},
    CustomPenPets = {
        "Budgie Witch", "Princess Mare", "Clumpty", "Granny Wolf", "Crimson Cape", "Little Lamb",
        "Abyssinian Cat", "Badger", "Black Rhino",
        "Black-Footed Ferret", "Corgi",
        "Ginger Cat", "Grinmoire", "Mexican Wolf",
        "Oakee Knight", "Ocelot", "Orangutan", "Orca",
        "Pangolin", "Parakeet", "Pomeranian", "Ribbon Seal",
        "River Otter", "Robot", "Starfish", "Storm Condor", "Swordfish", "Toucan", "Zebra", "Oakee", 
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
        "2D Doggy",
        "2D Kitty",
        "Rainbow Trout",
        "Tealwood Monster",
        "Oakee Wizard", 
        "General Sheepdog",
        "Chihuahua",
        "Sunflower Friend",
        "Violet Friend",
        "Alicorn",
        "Ancient Dragon",        
        "Velocirooster",
        "Sushi Penguin"        
    },
    ReleaseTypes = {"Neon", "Mega"},
    ReleaseRarities = {},
    ExcludeRarities = {"Legendary"},

    -- === AGE PETS ===
    AgePets = true,
    AgePetsNames = {
        "Budgie Witch", "Princess Mare", "Clumpty", "Granny Wolf", "Crimson Cape", "Little Lamb",
        "Abyssinian Cat", "Badger", "Black Rhino",
        "Black-Footed Ferret", "Corgi",
        "Ginger Cat", "Grinmoire", "Mexican Wolf",
        "Oakee Knight", "Ocelot", "Orangutan", "Orca",
        "Pangolin", "Parakeet", "Pomeranian", "Ribbon Seal",
        "River Otter", "Robot", "Starfish", "Storm Condor", "Swordfish", "Toucan", "Zebra",
        "Gold Mahi Mahi", 
    },
    AgePetsTypes = {"ALL"},

    -- === AUTO FUSE ===
    AutoFuse = true,
    AutoFuseBlacklist = {},

    -- === BUY PETS ===
    BuyPets = true,
    BuyPetName = {"Crystal Egg", "Fairytale Egg"},

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
    WebhookURL = "https://discord.com/api/webhooks/1521141072917434370/W3PaD0c85z-OcG65xELZjGlljPOP3OBgZbkvSKK03-OMuXmKTeG4WEJwE-nxbnTIFPuJ",
    WebhookPets = {
        "Dragonfruit Fox",
        "Dango Penguins",
        "Silverback Gorilla",
        "Velocirooster",
        "Sushi Penguin",
        "Tealwood Monster",
        "Emberlight",
        "Rainbow Trout",
	"Strawberry Tortle"
    },

    ExtraOpti = false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/voltrex2/VoHub/refs/heads/main/FARM"))()
