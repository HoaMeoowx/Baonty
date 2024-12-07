-- Đặt ID nhạc mà bạn muốn phát
local musicID = "rbxassetid://6581614725"  -- Sử dụng ID nhạc bạn cung cấp

-- Hàm phát nhạc
function playMusic()
    local sound = Instance.new("Sound")  -- Tạo đối tượng âm thanh mới
    sound.SoundId = musicID  -- Gán ID nhạc
    sound.Parent = game.Workspace  -- Gán âm thanh vào Workspace để phát
    sound:Play()  -- Phát nhạc
end

-- Kiểm tra sự kiện người chơi nhận vật phẩm "Chest"
game.ReplicatedStorage:WaitForChild("ItemPickupEvent").OnServerEvent:Connect(function(player, item)
    -- Kiểm tra nếu vật phẩm là "Chest"
    if item and item.Name == "Chest" then
        -- Gọi hàm phát nhạc khi người chơi nhận Chest
        playMusic()
    end
end)