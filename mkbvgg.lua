-- Đặt ID nhạc mà bạn muốn phát
local musicID = "rbxassetid://6581614725"  -- Sử dụng ID nhạc bạn cung cấp

-- Hàm phát nhạc
function playMusic()
    local sound = Instance.new("Sound")  -- Tạo đối tượng âm thanh mới
    sound.SoundId = musicID  -- Gán ID nhạc
    sound.Parent = game.Workspace  -- Gán âm thanh vào Workspace để phát
    sound:Play()  -- Phát nhạc
end

-- Kiểm tra khi người chơi chạm vào vật phẩm
function onItemTouched(other)
    -- Kiểm tra nếu đối tượng va chạm là người chơi
    if other:IsA("Player") then
        -- Gọi hàm phát nhạc khi người chơi chạm vào vật phẩm
        playMusic()
    end
end

-- Lặp qua tất cả các vật phẩm trong game và đăng ký sự kiện va chạm
for _, item in pairs(workspace:GetDescendants()) do
    if item:IsA("BasePart") and item.Name == "Chest" then  -- Kiểm tra nếu vật phẩm là một Chest
        item.Touched:Connect(onItemTouched)  -- Đăng ký sự kiện Touched
    end
end