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
     -- Common Pet
		"Pinkypillar",
		"Ms. Muffet",
		"California Condor",
		"Galapagos Sea Lion",

       -- Uncommon Pet
		"Black Tiger",
		"Kakapo",
		"Princess Mare",
		"Budgie Witch",

        -- Rare Pet
		"Mexican Wolf",
		"Black Rhino",
		"Clumpty",
		"Granny Wolf",

        -- Ultra-Rare Pet
        "Black-Footed Ferret",
		"Crimson Cape",
		"Little Lamb",
        "Pangolin",
    },

    PrioritizePet = "2D Kitty",

    -- === PET PEN ===
    PetPen = true,
    CustomPenEggs = {"Fairytale Egg"},

    CustomPenPets = {
        -- Ultra-Rare Pet
        "Black-Footed Ferret",
		"Pangolin",
		"Crimson Cape",
		"Little Lamb",

        -- Rare Pet
		"Mexican Wolf",
		"Black Rhino",
		"Clumpty",
		"Granny Wolf",

        -- Uncommon Pet
		"Black Tiger",
		"Kakapo",
		"Princess Mare",
		"Budgie Witch",

        -- Common Pet
		"Pinkypillar",
		"Ms. Muffet",
		"California Condor",
		"Galapagos Sea Lion"
    },

    PrioritizePetPenTypes = {"Egg"},

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
		"Neon Pinkypillar",
		"Neon Ms. Muffet",
		"Neon Princess Mare",
		"Neon Budgie Witch",
		"Neon Clumpty",
		"Neon Granny Wolf",
		"Neon Crimson Cape",
		"Neon Little Lamb",

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
        "Blue Whale",
        "Sea Turtle",
        "Dragonfly",
        "Kiwi Kiwi",
        "Huntsman Robin",
        "Three Blind Mice"
    },

    ReleaseTypes = {},
    ReleaseRarities = {},
    ExcludeRarities = {"Legendary"},

    -- === AGE PETS ===
    AgePets = true,

    AgePetsNames = {
        -- Ultra-Rare Pet
        "Black-Footed Ferret",
		"Pangolin",
		"Crimson Cape",
		"Little Lamb",

        -- Rare Pet
		"Mexican Wolf",
		"Black Rhino",
		"Clumpty",
		"Granny Wolf",

        -- Uncommon Pet
		"Black Tiger",
		"Kakapo",
		"Princess Mare",
		"Budgie Witch",

        -- Common Pet
		"Pinkypillar",
		"Ms. Muffet",
		"California Condor",
		"Galapagos Sea Lion"
    },

    AgePetsTypes = {"Normal"},

    -- === AUTO FUSE ===
    AutoFuse = true,
    AutoFuseBlacklist = {},

    -- === BUY PETS ===
    BuyPets = true,
    BuyPetName = {"Fairytale Egg", "Crystal Egg"},

    -- === BOXES ===
    BuyBoxes = true,
    BoxName = "2D Box",
    OpenBoxes = true,

    -- === LURE ===
    BaitName = "ice_dimension_2025_ice_soup_bait",

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
