task.spawn(function()
 script_key="xqImXRGIJbTKjNrfBjHmecAFzIgZTDiV";
getgenv().SailorVIP = {
    Optimization = {
        Enable = true, -- On/Off toàn bộ optimization script
        FPSCap = 10, -- Số FPS cần lock (ví dụ: 10, 15, 30, 60)
    },

    Webhook = {
        Enable = true, -- On/Off gửi webhook thông báo crate
        URL = "", 
    },
}
loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/a8255d759144bb6127c5b72221cce5cd.lua"))()
end)

-- Eksekusi Script 2 (Siganteng) dengan sistem Auto-Retry
task.spawn(function()
    while true do
        local success, err = pcall(function()
            loadstring(game:HttpGet("https://siganteng.store/api/script/u/ft_OAxXqM8qa9PTZ0SBJeSopwBjn14u4lXWhe_4XeFccIg"))()
        end)

        if success then 
            break -- Kalau sukses, hentikan looping
        end

        warn("Script Siganteng gagal dimuat, mencoba lagi dalam 5 detik... Error: " .. tostring(err))
        task.wait(5)
    end
end)
