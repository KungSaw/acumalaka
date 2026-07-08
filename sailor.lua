_G.FishItConfig = _G.FishItConfig or {
    ["Fishing"] = {
        ["Auto Perfect"] = false,
        ["Random Result"] = false,

        ["Auto Favorite"] = true,
        ["Auto Unfavorite"] = false,
        ["Fish Name"] = {
            "Sacred Guardian Squid",
            {Name = "Ruby", Variant = "Gemstone"},
            -- {Variant = "Leviathan Rage"}, -- Variant Only
            -- {Tier = "Secret", Variant = "Leviathan Rage"},  -- Tier + Variant
        },

        ["Auto Accept Trade"] = true,
        ["Auto Friend Request"] = true,
    },
    ["Auto Trade"] = {
        ["Enabled"] = true,
        ["Whitelist Username"] ={"StormChaserRePlayzD1", "RuneqePhoenixg146496", "Xz_HuntergeRocket6eC", "H0ll0w8MMagicj1878", "VortexHgZeroG126794", "SwitchpvZoomV1792", "XzRiftdAOblivion9zX1", "LegendKcClawG1140", "KingTVBlad3t1958", "XzByte7XBladeOzX1961"},
        ["Category Fish"] = {
            "Secret",
            -- {Tier = "Mythic", Variant = "Stone"}, -- Tier + Variant
        },
        ["Fish Name"] = {
           
            {Name = "Ruby", Variant = "Gemstone"},
            -- {Variant = "Leviathan Rage"}, -- Variant Only
        },
        ["Item Name"] = {
            "Evolved Enchant Stone", "Runic Enchant Stone",
        },
    },
    ["Farm Coin Only"] = {
        ["Enabled"] = false, -- Farm coins only [ cant buy rod, bait, enchant, weather ]
        ["Target"] = 190000,
    },
    ["Selling"] = {
        ["Auto Sell"] = true,
        ["Auto Sell Threshold"] = "Mythic",
        ["Auto Sell Every"] = 100,
    },
    ["Doing Quest"] = {
        ["Auto Ghostfinn Rod"] = true,
        ["Auto Element Rod"] = true,
        ["Auto Element Rod 2"] = false,
        ["Auto Diamond Rod"] = false,
        ["Unlock Ancient Ruin"] = false,
        ["Allowed Sacrifice"] = {
            "Gladiator Shark",
            "Cryoshade Glider",
            "Mosasaur Shark",
            "Queen Crab",
            "King Crab",
            "Giant Squid",
            "King Jelly",


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
        ["Item Name"] = {},
        ["Link Webhook"] = "",
        ["Link Webhook Quest Complete"] = "",
    },
    ["Weather"] = {
        ["Auto Buying"] = true,
        ["Minimum Rod"] = "Astral Rod",
        ["Weather List"] = {
            "Wind",
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
            ["Luck Totem"] = 1000,
            
            
        },
    },
    ["Event"] = {
        ["Start Farm"] = false,
        ["Minimum Rod"] = "Element Rod",
        ["Event List"] = {
            "Megalodon Hunt",
           
            
            
            
        },
    },
    ["Enchant"] = {
        ["Auto Enchant"] = true,
        ["Roll Enchant"] = false,
        ["Evolved Roll Enchant"] = true,
        ["Farm Until Enchant"] = true,
        ["Enchant After X Stone"] = 25,
        ["Enchant List"] = {
            "SECRET Hunter",
            
          
           
           
            
       
        },
        ["Second Enchant"] = false,
        ["Allowed Sacrifice"] = {
            "King Crab",
            "Queen Crab",

        },
        ["Second Enchant List"] = {
            "Reeler l",
            
            
        },
        ["Minimum Rod"] = "Element Rod",
    },
    ["Bait List"] = {
        ["Auto Buying"] = true,
        ["Buy List"] = {
            "Midnight Bait",
            "Corrupt Bait",
            "Aether Bait",
            "Singularity Bait",
            
        },
        ["Endgame"] = "Singularity Bait",
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
            ["Tropical Grove"] = {"Grass Rod", "Midnight Rod", "Astral Rod"},
            ["Underwater City"] = {"Ghostfinn Rod", "Element Rod", "Diamond Rod"},
            
        },
        ["Endgame"] = "",
    },

    ["ExtremeFpsBoost"] = false,
    ["UltimatePerformance"] = false,
    ["Disable3DRender"] = false,
    ["AutoRemovePlayer"] = true,

    ["AutoReconnect"] = false,
    ["HideGUI"] = false,
    ["EXIT_MAP_IF_DISCONNECT"] = false,
}

script_key="CBF8AE2FFFE0CD4FA0E654BA31B72774";

local s,r repeat s,r=pcall(function()return game:HttpGet("https://raw.githubusercontent.com/FnDXueyi/roblog/refs/heads/main/fishit-78c86024ea87c8eca577549807421962.lua")end)wait(1)until s;loadstring(r)()
