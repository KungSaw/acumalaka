

loadstring(game:HttpGet("https://raw.githubusercontent.com/FnDXueyi/list/refs/heads/main/game"))()
_G.FishItConfig = _G.FishItConfig or {
    ["Fishing"] = {
        ["Auto Perfect"] = false,
        ["Random Result"] = false,

        ["Auto Favorite"] = true,
        ["Auto Unfavorite"] = false,
        ["Fish Name"] = {
            "Sacred Guardian Squid",
            {Name = "Ruby", Variant = "Gemstone"},
            {Name = "Eggy Enchant Stone", Variant = ""},
        },

        ["Auto Accept Trade"] = true,
        ["Auto Friend Request"] = false,
        ["Auto Egg Exchange"] = false,
    },
    ["Auto Trade"] = {
        ["Enabled"] = true,
        ["Whitelist Username"] = {"evelynclara22", "mrrpacman", "clarabelle730", "bontotevelyn", "ELxSaveSaw", "graceneonmagic89"},
        ["Category Fish"] = {
            "Secret",
        },
        ["Fish Name"] = {
            "",
            {Name = "Ruby", Variant = "Gemstone"},
        },
        ["Item Name"] = {
            "Evolved Enchant Stone",
            "Eggy Enchant Stone",
        },
    },
    ["Farm Coin Only"] = {
        ["Enabled"] = false,
        ["Target"] = 190000,
    },
    ["Selling"] = {
        ["Auto Sell"] = true,
        ["Auto Sell Threshold"] = "Mythic",
        ["Auto Sell Every"] = 50,
    },
    ["Doing Quest"] = {
        ["Auto Ghostfinn Rod"] = true,
        ["Auto Element Rod"] = true,
        ["Auto Element Rod 2"] = false,
        ["Auto Diamond Rod"] = false,
        ["Unlock Ancient Ruin"] = false,
        ["Allowed Sacrifice"] = {
            "King Crab",
            "Queen Crab",
            "Bone Whale",
            "Gladiator Shark",
            "King Jelly",
            "Mosasaur Shark",
        },
        ["FARM_LOC_SECRET_SACRIFICE"] = "Treasure Room",

        ["Minimum Rod"] = "Astral Rod",
    },
    ["WebHook"] = {
    ["Auto Sending"] = true,
    ["Category"] = {
        "Secret",
        {Name = "Ruby", Variant = "Gemstone"},
    },
    ["Item Name"] = {
        "Evolved Enchant Stone",
    },
    ["Link Webhook"] = "",
        ["Link Webhook Quest Complete"] = "https://discord.com/api/webhooks/1472600840018596005/CwgnFtj19DNKVNus0Rkg5ybzUKET4cObpaUFHDpxFkbu2qUK9ugj08BdEoBEUcABpF6i",
    },
    ["Weather"] = {
        ["Auto Buying"] = true,
        ["Minimum Rod"] = "Astral Rod",
        ["Weather List"] = {
            "Wind",
            "Cloudy",
            "Storm",
        },
    },
    ["Potions"] = {
        ["Auto Use"] = true,
        ["Minimum Rod"] = "Astral Rod",
    },
    ["Totems"] = {
        ["Auto Use"] = true,
        ["Minimum Rod"] = "Ghostfinn Rod",
        ["Buy List"] = {
            ["Mutation Totem"] = 100,
            "Mutation Totem",
        },
    },
    ["Event"] = {
        ["Start Farm"] = false,
        ["Minimum Rod"] = "Ghostfinn Rod",
        ["Event List"] = {
            "Megalodon Hunt",
        },
    },
    ["Enchant"] = {
        ["Auto Enchant"] = false,
        ["Roll Enchant"] = false,
        ["Evolved Roll Enchant"] = false,
        ["Enchant List"] = {
            "Reeler II",
            "Reeler I",
            "Empowered I",
            "SECRET Hunter",
        },
        ["Second Enchant"] = false,
        ["Allowed Sacrifice"] = {
            "Cryoshade Glider",
            "Giant Squid",
            "Panther Eel",
            "King Crab",
            "Queen Crab",
        },
        ["Second Enchant List"] = {
            "Perfection",
            "Reeler I",
            "Empowered I",
        },
        ["Minimum Rod"] = "Element Rod",
    },
    ["Bait List"] = {
        ["Auto Buying"] = true,
        ["Buy List"] = {
            "Midnight Bait",
            "Chroma Bait",
            "Floral Bait",
            "Singularity Bait",
        },
        ["Endgame"] = "Floral Bait",
    },
    ["Rod List"] = {
        ["Auto Buying"] = true,
        ["Buy List"] = {
            "Grass Rod",
            "Midnight Rod",
            "Astral Rod",
            "Ares Rod",
        },
        ["Location Rods"] = {
            ["Fisherman Island"] = {"Starter Rod"},
            ["Tropical Grove"] = {"Grass Rod", "Midnight Rod"},
            ["Treasure Room"] = {"Element Rod", "Ghostfinn Rod", "Ares Rod", "Astral Rod"},
        },
        ["Endgame"] = "",
    },

    ["ExtremeFpsBoost"] = false,
    ["UltimatePerformance"] = true,
    ["Disable3DRender"] = true,
    ["AutoRemovePlayer"] = true,

    ["AutoReconnect"] = false,
    ["HideGUI"] = false,
    ["EXIT_MAP_IF_DISCONNECT"] = true,
}
