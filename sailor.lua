script_key="xqImXRGIJbTKjNrfBjHmecAFzIgZTDiV";
getgenv().SailorVIP = {
    Optimization = {
        Enable = true,
        FPSCap = 25,
    },

    Webhook = {
        Enable = false, 
        URL = "", 
    },
}
loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/a8255d759144bb6127c5b72221cce5cd.lua"))()

-- Tunggu Luarmor load dulu
task.wait(3)

-- Script kamu di thread sendiri
task.spawn(function()
    while true do
        local success, err = pcall(function()
            loadstring(game:HttpGet("https://siganteng.store/api/script/u/ft_zNWDPY18wtIfu9Gye3SXZZXhzRo8wErHUuiC6gYr-OY"))()
        end)
        if success then break end
        warn("Script Error: " .. tostring(err))
        task.wait(5)
    end
end)
