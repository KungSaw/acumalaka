_G.FishItConfig = {
    ["Fishing"] = {
        ["Auto Perfect"] = false,
        ["Random Result"] = false,
        ["Auto Favorite"] = true,
        ["Auto Unfavorite"] = false,
        ["Fish Name"] = {
            "Pyrocoil",
            "Stormshell Brute",
            "Wintertusk Mammofin",
            "Megalodon",

            {Name = "Ruby", Variant = "Gemstone"},
            {Name = ""},
        },
        ["Trade Timeout"] = 30,
        ["Auto Accept Trade"] = true,
        ["Auto Friend Request"] = true,
    },
    ["Auto Trade"] = {
        ["Enabled"] = true,
        ["Whitelist Username"] = {"pebriroblog", "giogio00774", "kiyzmancing3", "xDrexsboy151", "Levannclve2", "arultampung1", "arultampung2", "arultampung3", "arultampung4", "arultampung5", "arultampung6", "arultampung7", "arultampung8", "arultampung9", "christopher_9ki", "christopher_wje", "david_58s", "jonathan_wgv16", "karen_3kd", "kayla_vj4w9", "mary_8fsm3", "mason_9rq280", "matthew_he6z8", "steven_x9f", "tralalelolalala98"}, 
        ["Category Fish"] = {
            {Tier = "Legendary", Variant = "Crystalized"},
            {Name = "Legendary", Variant = "Corrupt"},
            {Name = "Legendary", Variant = "Stone"},
            {Name = "Legendary", Variant = "Lightning"},
        },
        ["Fish Name"] = {
            {Name = "Ruby", Variant = "Gemstone"},
            "Cursed Kraken",
            "Elpirate Gran Maja",
            "Megalodon",
            "Two-Headed Shark",
            "Elemental Tempestray",
            "Lochness Monster",
            "Frostmoon Whale",
            "Stormshell Brute",
            "Wintertusk Mammofin",
            "Pyrocoil",
        },
        ["Item Name"] = {"Runic Enchant Stone"},
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
        ["Auto Aetherion Bait"] = false,
        ["Unlock Elemental Island"] = true,
        ["Unlock Ancient Ruin"] = true,
        ["Allowed Sacrifice"] = {
            "Ghost Shark", "Cryoshade Glider", "Queen Crab", "King Crab", 
            "Blob Shark", "Narhwal Skeleton", "King Jelly", "Mosasaur Shark", 
            "Bone Whale", "Viridis Lurker", "Gladiator Shark", "Panther Eel", 
            "Frostborn Shark", "Thin Armor Shark", "Giant Squid", "Elshark Gran Maja", "Pelagon"
        },
        ["FARM_LOC_SECRET_SACRIFICE"] = "Ocean",
        ["Minimum Rod"] = "Astral Rod",
    },
    ["WebHook"] = {
        ["Link Webhook"] = "https://discord.com/api/webhooks/1476120089597313215/pSIdpennL96pTrqbDrsyZ3eBtcTaidDTlbI5rurT6ECFO3Rs7VMyWPlLJ3EoN3JADCdC",
        ["Auto Sending"] = true,
        ["Category"] = {
            "Secret",
            {Name = "Ruby", Variant = "Gemstone"}, 
        },
        ["Link Webhook Quest Complete"] = "",
    }, 
    ["Weather"] = {
        ["Auto Buying"] = true,
        ["Minimum Rod"] = "Starter Rod",
        ["Weather List"] = {"Wind", "Snow", "Storm"},
    },
    ["Potions"] = {
        ["Auto Use"] = true,
        ["Minimum Rod"] = "Starter Rod",
    },
    ["Totems"] = {
        ["Auto Use"] = true,
        ["Minimum Rod"] = "Ghostfinn Rod",
        ["Buy List"] = {
            ["Luck Totem"] = 10,
            

        },
    },
    ["Event"] = {
        ["Start Farm"] = true,
        ["Admin Event"] = false,
        ["Minimum Rod"] = "Element Rod",
        ["Event List"] = {
            "Elemental Event",
             
        },
    },
    ["Enchant"] = {
        ["Auto Enchant"] = true,
        ["Roll Enchant"] = false,
        ["Evolved Roll Enchant"] = true,
        ["Farm Until Enchant"] = true,
        ["Enchant X Stone"] = 3,
        ["Enchant List"] = {
            "SECRET Hunter", 
            
        },
        ["Second Enchant"] = true,
        ["Allowed Sacrifice"] = {"Ghost Shark", "Cryoshade Glider", "Queen Crab", "King Crab", 
            "Blob Shark", "Narhwal Skeleton", "King Jelly", "Mosasaur Shark", 
            "Bone Whale", "Viridis Lurker", "Robot Kraken", "Panther Eel", 
            "Frostborn Shark", "Thin Armor Shark", "Giant Squid", "Elshark Gran Maja", "Pelagon", "Deepsea Monster Axolotl"},
        ["Second Enchant List"] = {"Reeler I", "Empowered I"},
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
        ["Buy List"] = {"Grass Rod", "Luck Rod", "Midnight Rod", "Astral Rod"},
        ["Location Rods"] = {
            ["Tropical Grove"] = {"Starter Rod", "Grass Rod", "Luck Rod"},
            ["Treasure Room"] = {"Midnight Rod", "Astral Rod"},
            ["Sewers"] = {"Element Rod"},
        },
    },
    ["FPS Cap"] = 5,
    ["ExtremeFpsBoost"] = false,
    ["UltimatePerformance"] = false,
    ["Disable3DRender"] = false,
    ["AutoRemovPlayer"] = true,
    ["AutoReconnect"] = false,
    ["HideGUI"] = false,
    ["EXIT_MAP_IF_DISCONNECT"] = false,
}

script_key="4C457B58E7D7F1F439FBA1EE8FDBB15E";

local s,r repeat s,r=pcall(function()return game:HttpGet("https://raw.githubusercontent.com/FnDXueyi/roblog/refs/heads/main/fishit-78c86024ea87c8eca577549807421962.lua")end)wait(1)until s;loadstring(r)()
