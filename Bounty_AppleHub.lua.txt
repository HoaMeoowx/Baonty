getgenv().Setting = {
    ["Hunt"] = {
        ["Team"] = "Pirates",
        ["Min"] = 0,
        ["Max"] = 30000000,
    },
    ["Webhook"] = {
        ["Enabled"] = true, 
        ["Url"] = "https://discord.com/api/webhooks/1155320797867561091/98jhEvNhwKwihhk9OUM_k16YkQAPyg83aKapZnozkxyL5dATYtM98Iw_GRuypc3u9zk1"
    },
    ["Skip"] = {
        ["V4"] = true,
        ["Fruit"] = true,
        ["FruitList"] = {
            "Leopard",
            "Venom",
            "Dough",
            "Portal"
        }
    },
    ["Chat"] = {
        ["Enabled"] = false,
        ["List"] = {""},
    },
    ["Click"] = {
        ["AlwaysClick"] = false,
        ["FastClick"] = false
    },
    ["Another"] = {
        ["V3"] = true,
        ["CustomHealth"] = true,
        ["Health"] = 12000,
        ["V4"] = true,
        ["LockCamera"] = false,
        ["FPSBoots"] = false,
        ["WhiteScreen"] = false,
        ["BypassTp"] = true
    },
    ["SafeHealth"] = {
        ["Health"] = 6000,
        ["HighY"] = 1500
    },
    ["Melee"] = {
        ["Enable"] = true,
        ["Delay"] = 2.5,
        ["Z"] = {["Enable"] = true, ["HoldTime"] = 1.25},
        ["X"] = {["Enable"] = true, ["HoldTime"] = 0},
        ["C"] = {["Enable"] = true, ["HoldTime"] = 0},
        ["V"] = {["Enable"] = false, ["HoldTime"] = 0}
    },
    ["Fruit"] = {
        ["Enable"] = true,
        ["Delay"] = 2,
        ["Z"] = {["Enable"] = true, ["HoldTime"] = 0},
        ["X"] = {["Enable"] = true, ["HoldTime"] = 0},
        ["C"] = {["Enable"] = true, ["HoldTime"] = 0},
        ["V"] = {["Enable"] = true, ["HoldTime"] = 1.25},
        ["F"] = {["Enable"] = false, ["HoldTime"] = 0}
    },
    ["Sword"] = {
        ["Enable"] = true,
        ["Delay"] = 1,
        ["Z"] = {["Enable"] = true, ["HoldTime"] = 0},
        ["X"] = {["Enable"] = true, ["HoldTime"] = 0}
    },
    ["Gun"] = {
        ["Enable"] = true,
        ["GunMode"] = false, 
        ["Delay"] = 1.75,
        ["Z"] = {["Enable"] = true, ["HoldTime"] = 0},
        ["X"] = {["Enable"] = true, ["HoldTime"] = 0}
    }
}
local memaythangskidocnguloz = "\104\116\116\112\115://\114\97\119.\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116.\99\111\109/\72\105\114\105\109\105\105/\102\52\99\107\121\111\117/\109\97\105\110\47\99\99\108\117\97"
local cl = "\104\116\116\112\115://\114\97\119.\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116.\99\111\109/\72\105\114\105\109\105\105/\102\52\99\107\121\111\117/\109\97\105\110\47\99\99\108\117\97"
local memaybeo = "\104\116\116\112\115://\114\97\119.\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116.\99\111\109/\72\105\114\105\109\105\105/\102\52\99\107\121\111\117/\109\97\105\110\47\99\99\108\117\97"
repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
repeat task.wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");
--- Join Team
if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
    repeat wait()
        if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
            if getgenv().Setting.Hunt.Team == "Marines" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Marines")
            else
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
            end
        end
    until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
end
--- Check World/Tween + Bypass
if game.PlaceId == 7449423635 then
    World3 = true
else
    game.Players.LocalPlayer:Kick("Only Support BF Sea 3")
end 
if World3 then 
    distbyp = 5000
    island = {
    ["Port Town"] = CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375),
    ["Hydra Island"] = CFrame.new(5749.7861328125 + 50, 611.9736938476562, -276.2497863769531),
    ["Mansion"] = CFrame.new(-12471.169921875 + 50, 374.94024658203, -7551.677734375),
    ["Castle On The Sea"] = CFrame.new(-5085.23681640625 + 50, 316.5072021484375, -3156.202880859375),
    ["Haunted Island"] = CFrame.new(-9547.5703125, 141.0137481689453, 5535.16162109375),
    ["Great Tree"] = CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625),
    ["Candy Island"] = CFrame.new(-1106.076416015625, 13.016114234924316, -14231.9990234375),
    ["Cake Island"] = CFrame.new(-1903.6856689453125, 36.70722579956055, -11857.265625),
    ["Loaf Island"] = CFrame.new(-889.8325805664062, 64.72842407226562, -10895.8876953125),
    ["Peanut Island"] = CFrame.new(-1943.59716796875, 37.012996673583984, -10288.01171875),
    ["Cocoa Island"] = CFrame.new(147.35205078125, 23.642955780029297, -12030.5498046875),
    ["Tiki Outpost"] = CFrame.new(-16234,9,416)
    } 
elseif World2 then 
    distbyp = 3500
    island = { 
    a = CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938),
    b = CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094),
    c= CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375),
    d= CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344),
    e=CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828), 
    f=CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875),
    g=CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188),
    h=CFrame.new(923.40197753906, 125.05712890625, 32885.875),
    i=CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125),
    }
elseif World1 then 
    distbyp = 1500
    island = { 
    a = CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594), 
    b = CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156), 
    c = CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688), 
    d = CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969), 
    e =CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754), 
    f = CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094) ,
    g = CFrame.new(-4607.82275, 872.54248, -1667.55688), 
    h = CFrame.new(-7952.31006, 5545.52832, -320.704956),
    i = CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313),
    j = CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969),
    k = CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469),
    l = CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813),
    m = CFrame.new(61163.8515625, 11.6796875, 1819.7841796875),
    n = CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875),
    o =CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656),
    p = CFrame.new(-4813.0249, 903.708557, -1912.69055),
    q = CFrame.new(-4970.21875, 717.707275, -2622.35449),
    } 
end
local p = game.Players
local lp = p.LocalPlayer

local rs = game.RunService
local hb = rs.Heartbeat
local rends = rs.RenderStepped
local webhook = {} 

getgenv().weapon = nil
getgenv().targ = nil 
getgenv().lasttarrget = nil
getgenv().checked = {}
getgenv().pl = p:GetPlayers()
wait(1)
--- Tween / Bypass ---
function bypass(Pos)   
    if lp.Character:FindFirstChild("Head") and lp.Character:FindFirstChild("HumanoidRootPart") and lp.Character:FindFirstChild("Humanoid") then
        dist = math.huge
        is = nil
        for i , v in pairs(island) do
            if (Pos.Position-v.Position).magnitude < dist then
                is = v 
                dist = (Pos.Position-v.Position).magnitude 
            end
        end 
        if is == nil then return; end
        if lp:DistanceFromCharacter(Pos.Position) > distbyp then 
            if (lp.Character.Head.Position-Pos.Position).magnitude > (is.Position-Pos.Position).magnitude then
                if tween then
                    tween:Destroy()
                end
                if (is.X == 61163.8515625 and is.Y ==11.6796875 and is.Z == 1819.7841796875) or is == CFrame.new(-12471.169921875 + 50, 374.94024658203, -7551.677734375) or is == CFrame.new(-5085.23681640625 + 50, 316.5072021484375, -3156.202880859375) or is == CFrame.new(5749.7861328125 + 50, 611.9736938476562, -276.2497863769531) then
                    if tween then
                       tween:Cancel()
                    end
                    repeat task.wait()
                        lp.Character.HumanoidRootPart.CFrame = is  
                    until lp.Character.PrimaryPart.CFrame == is   
                    task.wait(0.1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                else
                    if not stopbypass then
                        if tween then
                           tween:Cancel()
                        end
                        repeat task.wait()
                            lp.Character.HumanoidRootPart.CFrame = is  
                        until lp.Character.PrimaryPart.CFrame == is  
                        game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                        lp.Character:SetPrimaryPartCFrame(is)
                        wait(0.1)
                        lp.Character.Head:Destroy()
                        wait(0.5)
                        repeat task.wait()
                            lp.Character.PrimaryPart.CFrame = is  
                        until lp.Character:FindFirstChild("Humanoid").Health > 0
                        task.wait(0.5)
                    end 
                end
            end
        end
    end
end
function to(Pos)
    pcall(function()
        if lp.Character:FindFirstChild("HumanoidRootPart") and lp.Character:FindFirstChild("Humanoid").Health > 0 then
                Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                if not game.Players.LocalPlayer.Character.PrimaryPart:FindFirstChild("Hold") then
                    local Hold = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.PrimaryPart)
                    Hold.Name = "Hold"
                    Hold.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                    Hold.Velocity = Vector3.new(0, 0, 0)
                end
                if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                end
                if Distance < 250 then
                    Speed = 400
                elseif Distance < 1000 then
                    Speed = 375
                elseif Distance >= 1000 then
                    Speed = 350
                end
                pcall(function()
                    tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),{CFrame = Pos})
                    tween:Play()
                end)
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible then
                    if not string.find(string.lower(game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Text), "risk") then
                        bypass(Pos)
                    else
                        dist = math.huge
                        is = nil
                        for i , v in pairs(island) do
                            if (Pos.Position-v.Position).magnitude < dist then
                                is = v 
                                dist = (Pos.Position-v.Position).magnitude 
                            end
                        end 
                        if is == nil then return; end
                        if lp:DistanceFromCharacter(Pos.Position) > distbyp then 
                            if (lp.Character.Head.Position-Pos.Position).magnitude > (is.Position-Pos.Position).magnitude then
                                if tween then
                                    tween:Destroy()
                                end
                                if (is.X == 61163.8515625 and is.Y ==11.6796875 and is.Z == 1819.7841796875) or is == CFrame.new(-12471.169921875 + 50, 374.94024658203, -7551.677734375) or is == CFrame.new(-5085.23681640625 + 50, 316.5072021484375, -3156.202880859375) or is == CFrame.new(5749.7861328125 + 50, 611.9736938476562, -276.2497863769531) then
                                    if tween then
                                       tween:Cancel()
                                    end
                                    repeat task.wait()
                                        lp.Character.HumanoidRootPart.CFrame = is  
                                    until lp.Character.PrimaryPart.CFrame == is   
                                    task.wait(0.1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                                end
                            end
                        end
                    end
                else
                    bypass(Pos)
                end
                if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                end
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, Pos.Y, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
        end
    end)
end
--- Buso ---
function buso()
    if (not (game.Players.LocalPlayer.Character:FindFirstChild("HasBuso"))) then
        local rel = game.ReplicatedStorage
        rel.Remotes.CommF_:InvokeServer("Buso")
    end
end
--- Ken ---
function Ken()
    if game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui") and game.Players.LocalPlayer.PlayerGui:FindFirstChild("ScreenGui") and game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
        buoi = true
    else
        game:service("VirtualUser"):CaptureController()
        game:service("VirtualUser"):SetKeyDown("0x65")
        game:service("VirtualUser"):SetKeyUp("0x65")
    end
end
--- Sent Key To Cilent ---
function down(use)
    pcall(function()
        game:GetService("VirtualInputManager"):SendKeyEvent(true,use,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
        task.wait(l)
        game:GetService("VirtualInputManager"):SendKeyEvent(false,use,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
    end)
end
--- Equip ---
function equip(tooltip)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:wait()
    for _, item in pairs(player.Backpack:GetChildren()) do
        if item:IsA("Tool") and item.ToolTip == tooltip then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid and not humanoid:IsDescendantOf(item) then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(item)
                return true
            end
        end
    end
    return false
end
function EquipWeapon(Tool)
    pcall(
        function()
            if game.Players.LocalPlayer.Backpack:FindFirstChild(Tool) then
                local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(Tool)
                ToolHumanoid.Parent = game.Players.LocalPlayer.Character
            end
        end
    )
end
--- Click ---
function Click()
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):Button1Down(Vector2.new(0,1,0,1))
end
--- No Clip ---
spawn(function()
    while game:GetService("RunService").Stepped:wait() do
        pcall(function()
            if true then
                local character = game.Players.LocalPlayer.Character
                for _, v in pairs(character:GetChildren()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        end)
    end
end)
--- Boots FPS ---
if getgenv().Setting.Another.FPSBoots then
    local removedecals = false
    local g = game
    local w = g.Workspace
    local l = g.Lighting
    local t = w.Terrain
    t.WaterWaveSize = 0
    t.WaterWaveSpeed = 0
    t.WaterReflectance = 0
    t.WaterTransparency = 0
    l.GlobalShadows = false
    l.FogEnd = 9e9
    l.Brightness = 0
    settings().Rendering.QualityLevel = "Level01"
    for i, v in pairs(g:GetDescendants()) do
        if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
        elseif v:IsA("Decal") or v:IsA("Texture") and removedecals then
            v.Transparency = 1
        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Lifetime = NumberRange.new(0)
        elseif v:IsA("Explosion") then
            v.BlastPressure = 1
            v.BlastRadius = 1
        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
            v.Enabled = false
        elseif v:IsA("MeshPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
            v.TextureID = 10385902758728957
        end
    end
    for i, e in pairs(l:GetChildren()) do
        if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
            e.Enabled = false
        end
    end
    end
    
    function ObjectRemvoe()
        for i,v in pairs(workspace:GetDescendants()) do
            if string.find(v.Name,"Tree") or string.find(v.Name,"House") then
                v:Destroy()
            end
        end
    end
    
    function InvisibleObject()
    for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if  (v:IsA("Part") or v:IsA("MeshPart") or v:IsA("BasePart")) and v.Transparency then
            v.Transparency = 1
        end
    end
    spawn(function()
        pcall(function()
            game.ReplicatedStorage.Effect.Container.Death:Destroy()
            game.ReplicatedStorage.Effect.Container.Respawn:Destroy()
            game.ReplicatedStorage.Effect.Container.Hit:Destroy()
        end)
    end)
    ObjectRemvoe()
    InvisibleObject()
end
--- White Screen ---
if getgenv().Setting.Another.WhiteScreen then
    game.RunService:Set3dRenderingEnabled(false)
end	
--- Check Fruit
function hasValue(array, targetString)
    for _, value in ipairs(array) do
        if value == targetString then
            return true
        end
    end
    return false
end
--- Fast Attack
if getgenv().Setting.Click.FastClick then
    local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
    CameraShaker:Stop()
    fastattack = true
    CombatFrameworkR = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
    y = debug.getupvalues(CombatFrameworkR)[2]
    spawn(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            if fastattack then
                if typeof(y) == "table" then
                    pcall(function()
                        y.activeController.timeToNextAttack = 0
                        y.activeController.hitboxMagnitude = 60
                        y.activeController.active = false
                        y.activeController.timeToNextBlock = 0
                        y.activeController.focusStart = 1655503339.0980349
                        y.activeController.increment = 1
                        y.activeController.blocking = false
                        y.activeController.attacking = false
                        y.activeController.humanoid.AutoRotate = true
                    end)
                end
            end
        end)
    end)
    spawn(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            if fastattack == true then
                if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
                    game.Players.LocalPlayer.Character.Stun.Value = 0
                    game.Players.LocalPlayer.Character.Busy.Value = false 
                end
            end
        end)
    end)
else
    CombatFrameworkR = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
    y = debug.getupvalues(CombatFrameworkR)[2]
    spawn(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            if typeof(y) == "table" then
                pcall(function()
                    y.activeController.hitboxMagnitude = 60
                    y.activeController.active = false
                    y.activeController.timeToNextBlock = 0
                    y.activeController.focusStart = 1655503339.0980349
                    y.activeController.increment = 1
                    y.activeController.blocking = false
                    y.activeController.attacking = false
                    y.activeController.humanoid.AutoRotate = true
                end)
            end
        end)
    end)
end
--- Circle
local radius = 25
local speedCircle = 30
local angle = 0
local yTween = 5
local function getNextPosition(center)
    angle = angle + speedCircle
    return center + Vector3.new(math.sin(math.rad(angle)) * radius, yTween, math.cos(math.rad(angle)) * radius)
end
--- Hop Server ---
spawn(function()
    while task.wait() do
        if hopserver then
            stopbypass = true
            starthop = true
        end
    end
end)
spawn(function()
    while task.wait() do
        if starthop and getgenv().targ == nil then
            repeat task.wait()
            to(lp.Character.HumanoidRootPart.CFrame*CFrame.new(0,math.random(500,10000),0))
            until (game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible and not string.find(string.lower(game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Text), "risk")) or (not game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible)
            to(CFrame.new(0,10000,0))
            HopServer()
            to(lp.Character.HumanoidRootPart.CFrame*CFrame.new(0,math.random(500,10000),0))
        end
    end
end)
function HopServer(bO)
    pcall(function()
        if not bO then
            bO = 10
        end
        ticklon = tick()
        repeat
            task.wait()
        until tick() - ticklon >= 1
        local function Hop()
            for r = 1, math.huge do
                if ChooseRegion == nil or ChooseRegion == "" then
                    ChooseRegion = "Singapore"
                else
                    game:GetService("Players").LocalPlayer.PlayerGui.ServerBrowser.Frame.Filters.SearchRegion.TextBox.Text =
                        ChooseRegion
                end
                local bP = game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(r)
                for k, v in pairs(bP) do
                    if k ~= game.JobId and v["Count"] < bO then
                    game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", k)
                    end
                end
            end
            return false
        end
        if not getgenv().Loaded then
            local function bQ(v)
                if v.Name == "ErrorPrompt" then
                    if v.Visible then
                        if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                            HopServer()
                            v.Visible = false
                        end
                    end
                    v:GetPropertyChangedSignal("Visible"):Connect(
                        function()
                            if v.Visible then
                                if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                                    HopServer()
                                    v.Visible = false
                                end
                            end
                        end
                    )
                end
            end
            for k, v in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetChildren()) do
                bQ(v)
            end
            game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(bQ)
            getgenv().Loaded = true
        end
        while not Hop() do
            wait()
        end
    end)
end
--- Skip Player
function SkipPlayer()
    getgenv().killed = getgenv().targ 
    table.insert(getgenv().checked, getgenv().targ)
    getgenv().targ = nil
    target()
end
--- Main
function target() 
    pcall(function()
        d = math.huge
        p = nil
        getgenv().targ = nil
        for i, v in pairs(game.Players:GetPlayers()) do 
            if v.Team ~= nil and (tostring(lp.Team) == "Pirates" or (tostring(v.Team) == "Pirates" and tostring(lp.Team) ~= "Pirates")) then
                if v and v:FindFirstChild("Data") and ((getgenv().Setting.Skip.Fruit and hasValue(getgenv().Setting.Skip.FruitList, v.Data.DevilFruit.Value) == false) or not getgenv().Setting.Skip.Fruit) then
                    if v ~= lp and v ~= getgenv().targ and (v.Character:FindFirstChild("HumanoidRootPart").CFrame.Position - game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame.Position).Magnitude < d and hasValue(getgenv().checked, v) == false and v.Character.HumanoidRootPart.CFrame.Y <= 12000 then
                        if (tonumber(game.Players.LocalPlayer.Data.Level.Value) - 250) < v.Data.Level.Value  then
                            if v.leaderstats["Bounty/Honor"].Value >= getgenv().Setting.Hunt.Min and v.leaderstats["Bounty/Honor"].Value <= getgenv().Setting.Hunt.Max and not hopserver then 
                                if (getgenv().Setting.Skip.V4 and not v.Character:FindFirstChild("RaceTransformed")) or not getgenv().Setting.Skip.V4 then
                                    p = v 
                                    d = (v.Character.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude 
                                    if getgenv().Setting.Chat.Enabled then
                                        game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):FindFirstChild("SayMessageRequest"):FireServer(getgenv().Setting.Chat.List[math.random(0, #getgenv().Setting.Chat.List)], "All")
                                    end
                                end
                            end
                        end
                    end 
                end
            end
        end 
        if p == nil then hopserver = true end 
        getgenv().targ = p
    end)
end
spawn(function()
    while wait() do
        pcall(function()
            if (getgenv().targ.Character.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude < 40 then
                Ken()
            end
        end)
    end
end)
gunmethod = getgenv().Setting.Gun.GunMode
local melee, gun, sword, fruit
spawn(function()
    while task.wait() do
        pcall(function()
            if getgenv().targ.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                if (getgenv().targ.Character:WaitForChild("HumanoidRootPart").CFrame.Position - game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame.Position).Magnitude < 40 then 
                    if not gunmethod then
                        if getgenv().Setting.Melee.Enable then
                            getgenv().weapon = "Melee"
                            wait(getgenv().Setting.Melee.Delay)
                        end
                        if getgenv().Setting.Fruit.Enable then
                            getgenv().weapon = "Blox Fruit"
                            wait(getgenv().Setting.Fruit.Delay)
                        end
                        if getgenv().Setting.Sword.Enable then
                            getgenv().weapon = "Sword"
                            wait(getgenv().Setting.Sword.Delay)
                        end
                        if getgenv().Setting.Gun.Enable then
                            getgenv().weapon = "Gun"
                            wait(getgenv().Setting.Gun.Delay)
                        end
                    else
                        EquipWeapon("Melee")
                        EquipWeapon("Gun")
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while task.wait() do 
        pcall(function()
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
            end
            if getgenv().targ ~= nil and getgenv().targ.Character and (getgenv().targ.Character.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude < 50 then
                buso()
                if getgenv().Setting.Another.V3 then
                    if getgenv().Setting.Another.CustomHealth and lp.Character.Humanoid.Health <= getgenv().Setting.Another.Health then
                        l = 0.1
                        down("T")
                    end
                end
                if getgenv().Setting.Another.V4 then
                    l = 0.1
                    down("Y")
                end   
            end
        end)
    end
end)
spawn(function()
    while task.wait() do
        if getgenv().targ == nil or not getgenv().targ or not getgenv().targ.Character then target() end
        if getgenv().targ == nil then hopserver = true end 
        pcall(function()
            if getgenv().targ.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                if (getgenv().targ.Character:WaitForChild("HumanoidRootPart").CFrame.Position - game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame.Position).Magnitude < 40 then 
                    spawn(function()
                        if not gunmethod then
                            EquipWeapon("Summon Sea Beast")
                            equip(getgenv().weapon)
                            for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
                                if v:IsA("Tool") and v.ToolTip == "Melee" then
                                    if getgenv().Setting.Melee.Enable then
                                        if game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("Z").Cooldown.AbsoluteSize.X <= 0 and getgenv().Setting.Melee.Z.Enable then	
                                            l = getgenv().Setting.Melee.Z.HoldTime
                                            down("Z")
                                        elseif game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("X").Cooldown.AbsoluteSize.X <= 0 and getgenv().Setting.Melee.X.Enable then	
                                            l = getgenv().Setting.Melee.X.HoldTime
                                            down("X")
                                        elseif game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("C").Cooldown.AbsoluteSize.X <= 0 and getgenv().Setting.Melee.C.Enable then	
                                            l = getgenv().Setting.Melee.C.HoldTime
                                            down("C")
                                        elseif getgenv().Setting.Melee.V.Enable then
                                            if game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("V").Cooldown.AbsoluteSize.X <= 0 then	
                                                l = getgenv().Setting.Melee.V.HoldTime
                                                down("V")
                                            end
                                        else
                                            Click()
                                        end
                                    end
                                elseif v:IsA("Tool") and v.ToolTip == "Gun" then
                                    if getgenv().Setting.Gun.Enable then
                                        if game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("Z").Cooldown.AbsoluteSize.X <= 0 and getgenv().Setting.Gun.Z.Enable then	
                                            l = getgenv().Setting.Gun.Z.HoldTime
                                            down("Z")
                                        elseif game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("X").Cooldown.AbsoluteSize.X <= 0 and getgenv().Setting.Gun.X.Enable then	
                                            l = getgenv().Setting.Gun.X.HoldTime
                                            down("X")
                                        else
                                            Click()
                                        end
                                    end
                                elseif v:IsA("Tool") and v.ToolTip == "Sword" then
                                    if getgenv().Setting.Sword.Enable then
                                        if game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("Z").Cooldown.AbsoluteSize.X <= 0 and getgenv().Setting.Sword.Z.Enable then	
                                            l = getgenv().Setting.Sword.Z.HoldTime
                                            down("Z")
                                        elseif game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("X").Cooldown.AbsoluteSize.X <= 0 and getgenv().Setting.Sword.X.Enable then	
                                            l = getgenv().Setting.Sword.X.HoldTime
                                            down("X")
                                        else
                                            Click()
                                        end
                                    end
                                elseif v:IsA("Tool") and v.ToolTip == "Blox Fruit" then
                                    if getgenv().Setting.Fruit.Enable then
                                        if game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("Z").Cooldown.AbsoluteSize.X <= 0 and getgenv().Setting.Fruit.Z.Enable then	
                                            l = getgenv().Setting.Fruit.Z.HoldTime
                                            down("Z")
                                        elseif game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("X").Cooldown.AbsoluteSize.X <= 0 and getgenv().Setting.Fruit.X.Enable then	
                                            l = getgenv().Setting.Fruit.X.HoldTime
                                            down("X")
                                        elseif game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("C").Cooldown.AbsoluteSize.X <= 0 and getgenv().Setting.Fruit.C.Enable then	
                                            l = getgenv().Setting.Fruit.C.HoldTime
                                            down("C")
                                        elseif game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("V").Cooldown.AbsoluteSize.X <= 0 and getgenv().Setting.Fruit.V.Enable then	
                                            l = getgenv().Setting.Fruit.V.HoldTime
                                            down("V")
                                        elseif getgenv().Setting.Fruit.F.Enable then
                                            if game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("F").Cooldown.AbsoluteSize.X <= 0 then	
                                                l = getgenv().Setting.Fruit.F.HoldTime
                                                down("F")
                                            end
                                        else
                                            Click()
                                        end
                                    end
                                end
                            end
                        else
                            if getgenv().Setting.Melee.Enable then
                                if getgenv().Setting.Melee.Z.Enable then	
                                    l = getgenv().Setting.Melee.Z.HoldTime
                                    down("Z")
                                elseif  getgenv().Setting.Melee.X.Enable then	
                                    l = getgenv().Setting.Melee.X.HoldTime
                                    down("X")
                                elseif getgenv().Setting.Melee.C.Enable then	
                                    l = getgenv().Setting.Melee.C.HoldTime
                                    down("C")
                                elseif getgenv().Setting.Melee.V.Enable then	
                                    l = getgenv().Setting.Melee.V.HoldTime
                                    down("V")
                                end
                            end
                            Click()
                        end
                        for i, v in pairs(game.Players.LocalPlayer.PlayerGui.Notifications:GetChildren()) do 
                            local gay = v:GetChildren() 
                            if v:IsA("TextLabel") and (string.find(string.lower(v.Text), "player") or string.find(string.lower(v.Text), "người chơi")) then 
                                SkipPlayer()
                                v:Destroy()
                            end
                        end
                    end)
                end
            end
        end)
    end
end)
local a,b
local Nguvc = 5
spawn(function()
    while task.wait(0.05) do
        if getgenv().targ == nil then target() end
        if getgenv().targ == nil then hopserver = true end 
        pcall(function()
            if getgenv().targ.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health > getgenv().Setting.SafeHealth.Health then
                    pcall(function()    
                        if not (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and getgenv().targ:DistanceFromCharacter(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").Position) < 10000) then
                            if (getgenv().targ.Character:WaitForChild("HumanoidRootPart").CFrame.Position - game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame.Position).Magnitude < 40 then 
                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.SafeZone.Visible == true then
                                    print("Safe Zone")
                                    SkipPlayer()
                                end
                                if getgenv().targ.Character.Humanoid.Health > 0 then
                                    if getgenv().Setting.Click.AlwaysClick then
                                        Click()
                                    end
                                    if helloae then
                                        nguvl = CFrame.new(getgenv().targ.Character.HumanoidRootPart.Position + getgenv().targ.Character.HumanoidRootPart.CFrame.LookVector * Nguvc, getgenv().targ.Character.HumanoidRootPart.Position)*CFrame.new(0,yTween,0)
                                        to(nguvl*CFrame.new(getgenv().targ.Character.HumanoidRootPart.Position.Unit))
                                    else
                                        nguvl = CFrame.new(getgenv().targ.Character.HumanoidRootPart.Position + getgenv().targ.Character.HumanoidRootPart.CFrame.LookVector * 5, getgenv().targ.Character.HumanoidRootPart.Position)*CFrame.new(0,5,0)
                                        to(nguvl)
                                    end
                                else 
                                    print("Player Died")
                                    SkipPlayer()
                                end
                            else
                                if getgenv().targ.Character.Humanoid.Health > 0 then
                                    to(getgenv().targ.Character.HumanoidRootPart.CFrame*CFrame.new(0,10,0))
                                else
                                    print("Player Died")
                                    SkipPlayer()
                                end
                            end
                        else
                            print("Raid")
                            SkipPlayer()
                        end
                    end)
                    a = getgenv().targ.Character.HumanoidRootPart.Position
                    if a ~= b then
                        yTween = 0
                        b = a
                        if (getgenv().Setting.Gun.Enable and getgenv().Setting.Gun.GunMode) then
                            Nguvc = 14
                        else
                            Nguvc = 15
                        end
                    else
                        yTween = 5
                        if (getgenv().Setting.Gun.Enable and getgenv().Setting.Gun.GunMode) then
                            Nguvc = 3
                        else
                            Nguvc = 5
                        end
                    end
                    if getgenv().targ.Character.HumanoidRootPart.CFrame.Y >= 10 then
                        helloae = true
                    else
                        helloae = false
                    end
                else
                    safehealth = true
                    to(getgenv().targ.Character.HumanoidRootPart.CFrame*CFrame.new(0,math.random(5000,100000),0))
                end
            end
        end)
    end
end)
--- Aim
spawn(function()
    while task.wait() do 
        if getgenv().targ ~= nil and (getgenv().targ.Character:WaitForChild("HumanoidRootPart").CFrame.Position - game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame.Position).Magnitude < 40 then 
            aim = true 
            if (getgenv().Setting.Gun.Enable and getgenv().Setting.Gun.GunMode) then
                CFrameHunt = CFrame.new(getgenv().targ.Character.HumanoidRootPart.Position + getgenv().targ.Character.HumanoidRootPart.CFrame.LookVector * 2, getgenv().targ.Character.HumanoidRootPart.Position)
            else
                CFrameHunt = CFrame.new(getgenv().targ.Character.HumanoidRootPart.Position + getgenv().targ.Character.HumanoidRootPart.CFrame.LookVector * 5, getgenv().targ.Character.HumanoidRootPart.Position)
            end
        else
            aim = false
        end
    end
end)
spawn(function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg,false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if aim then
                        args[2] = CFrameHunt.Position
                        return old(unpack(args))
                    end
                end
            end
        end
        return old(...)
    end)
end)
local Mouse = lp:GetMouse()
Mouse.Button1Down:Connect(function()
    pcall(function()
        if getgenv().targ ~= nil and aim then
            local args = {
                 [1] = CFrameHunt.Position,
                 [2] = getgenv().targ.Character.HumanoidRootPart
               }
             game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteFunctionShoot:InvokeServer(unpack(args))
         end
    end)
end)
spawn(function()
    while task.wait() do
        if getgenv().Setting.Another.LockCamera then
            local targetPlayer = getgenv().targ
            if targetPlayer ~= nil then
                local targetCharacter = targetPlayer.Character
                local camera = game.Workspace.CurrentCamera
                if targetCharacter then
                    local lookAtPos = targetCharacter.HumanoidRootPart.Position
                    local cameraPos = camera.CFrame.Position
                    local newLookAt = CFrame.new(cameraPos, lookAtPos)
                    camera.CFrame = newLookAt
                end
            end
        end
    end
end)
--  Rejoin
game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
    if not hopserver and child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
        print("Rimus Hub Auto Bounty | Rejoin!")
        game:GetService("TeleportService"):Teleport(game.PlaceId)
    end
end)
--- Webhook
Urlsent = getgenv().Setting.Webhook.Url
function wSend(main)
    spawn(function()
        local Data = game:GetService("HttpService"):JSONEncode(main)
        local Head = {["content-type"] = "application/json"}
        Send = http_request or request or HttpPost or syn.request 
        if true then 
            Send({Url = Urlsent, Body = Data, Method = "POST", Headers = Head})
        end
    end)
end 
function wEarn(targ, earn,total) 
    if getgenv().Setting.Webhook.Enabled and getgenv().killed ~= nil then
        local data = {
            ["content"] = "",
            ["embeds"] = {
                {
                    ["title"] = "**Rimus Hub | Auto Bounty**",
                    ["color"] = 00000,
                    ["fields"] = {
                        {
                            ["name"] = "Account: ",
                            ["value"] = "||"..game.Players.LocalPlayer.Name.."||",
                            ["inline"] = false,
                        },
                        {
                            ["name"] = "Target: ",
                            ["value"] = "```"..targ.Name.."```",
                            ["inline"] = false,
                        },
                        {
                            ["name"] = "Server Bounty Count: ",
                            ["value"] = "```Earned: "..earn.."```",
                            ["inline"] = false,
                        },
                        {
                            ["name"] = "Account Total: ",
                            ["value"] = "```Earned: "..total.."```",
                            ["inline"] = false,
                        },
                        {
                            ["name"] = "Current Bounty: ",
                            ["value"] = "```"..(math.round((game.Players.LocalPlayer.leaderstats["Bounty/Honor"].Value / 1000000)*100)/100).."M```",
                            ["inline"] = false,
                        }
                    },
                    ["thumbnail"] = {
                        ["url"] = "https://cdn.discordapp.com/attachments/1150019850060693574/1172503110506270760/RimusHubTrans.png?ex=65608d9d&is=654e189d&hm=f19d9b3399b42fcb9ca0c6e311f77798db82d09a5fe670abdd7f7d44142d36cc&",
                    },
                    ["footer"] = {
                        ["text"] = "Rimus Hub - discord.gg/FZzxtjgjte",
                    },
                    ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ"),
                }
            }
        }
        wSend(data)
    end
end
--- Counter
--- Load & Save Setting
local foldername = "Rimus Hub Auto Bounty"
local filename = foldername.."/Settings.json"
function saveSettings()
    local HttpService = game:GetService("HttpService")
    local json = HttpService:JSONEncode(_G)
    if true then
        if isfolder(foldername) then
            if isfile(filename) then
                writefile(filename, json)
            else
                writefile(filename, json)
            end
        else
            makefolder(foldername)
        end
    end
end
function loadSettings()
    local HttpService = game:GetService("HttpService")
    if isfolder(foldername) then
        if isfile(filename) then
            _G = HttpService:JSONDecode(readfile(filename))
        end
    end
end
--- Gui
RimusScreen = Instance.new("ScreenGui");
DropShadowHolder = Instance.new("Frame");
DropShadow = Instance.new("ImageLabel");
Main = Instance.new("Frame");
UICorner = Instance.new("UICorner");
Layers = Instance.new("Frame");
UICorner1 = Instance.new("UICorner");
RealLayer = Instance.new("Frame");
UIListLayout = Instance.new("UIListLayout");
EarnedFrame = Instance.new("Frame");
UICorner2 = Instance.new("UICorner");
EarnedText = Instance.new("TextLabel");
EarnedNumber = Instance.new("TextLabel");
TimeEslapedFrame = Instance.new("Frame");
UICorner3 = Instance.new("UICorner");
EslapedText = Instance.new("TextLabel");
EslapedNumber = Instance.new("TextLabel");
TotalEarnedFrame = Instance.new("Frame");
UICorner4 = Instance.new("UICorner");
TotalEarnedText = Instance.new("TextLabel");
TotalEarnedNumber = Instance.new("TextLabel");
CurrentBountyFrame = Instance.new("Frame");
UICorner5 = Instance.new("UICorner");
CurrentBountyText = Instance.new("TextLabel");
CurrentBountyNumber = Instance.new("TextLabel");
SkipDisFrame = Instance.new("Frame");
UICorner6 = Instance.new("UICorner");
SkipFrame = Instance.new("Frame");
UICorner7 = Instance.new("UICorner");
SkipButton = Instance.new("TextButton");
DisFrame = Instance.new("Frame");
UICorner8 = Instance.new("UICorner");
DisButton = Instance.new("TextButton");
Top = Instance.new("Frame");
UICorner9 = Instance.new("UICorner");
ImageHub = Instance.new("ImageLabel");
Ver = Instance.new("TextLabel");
NameHub = Instance.new("TextLabel");

RimusScreen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
RimusScreen.Name = "RimusScreen"
RimusScreen.Parent = game:GetService("CoreGui")

DropShadowHolder.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadowHolder.BackgroundTransparency = 1
DropShadowHolder.BorderSizePixel = 0
DropShadowHolder.Position = UDim2.new(0.5, 0, 0.5, 0)
DropShadowHolder.Size = UDim2.new(0, 336, 0, 258)
DropShadowHolder.ZIndex = 0
DropShadowHolder.Name = "DropShadowHolder"
DropShadowHolder.Parent = RimusScreen

DropShadow.Image = "rbxassetid://6015897843"
DropShadow.ImageColor3 = Color3.fromRGB(131.00000739097595, 181.0000044107437, 255)
DropShadow.ImageTransparency = 0.5
DropShadow.ScaleType = Enum.ScaleType.Slice
DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadow.BackgroundTransparency = 1
DropShadow.BorderSizePixel = 0
DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
DropShadow.Size = UDim2.new(1, 47, 1, 47)
DropShadow.ZIndex = 0
DropShadow.Name = "DropShadow"
DropShadow.Parent = DropShadowHolder

Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.BackgroundTransparency = 0.10000000149011612
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0, 336, 0, 258)
Main.Name = "Main"
Main.Parent = DropShadow

UICorner.CornerRadius = UDim.new(0, 2)
UICorner.Parent = Main

Layers.AnchorPoint = Vector2.new(0.5, 0.5)
Layers.BackgroundColor3 = Color3.fromRGB(131.00000739097595, 181.0000044107437, 255)
Layers.BackgroundTransparency = 0.8999999761581421
Layers.BorderColor3 = Color3.fromRGB(0, 0, 0)
Layers.BorderSizePixel = 0
Layers.Position = UDim2.new(0.499404728, 0, 0.62465781, 0)
Layers.Size = UDim2.new(0, 324, 0, 182)
Layers.Name = "Layers"
Layers.Parent = Main

UICorner1.CornerRadius = UDim.new(0, 1)
UICorner1.Parent = Layers

RealLayer.AnchorPoint = Vector2.new(0.5, 0.5)
RealLayer.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
RealLayer.BackgroundTransparency = 0.9900000095367432
RealLayer.BorderColor3 = Color3.fromRGB(0, 0, 0)
RealLayer.BorderSizePixel = 0
RealLayer.Position = UDim2.new(0.500385821, 0, 0.495769292, 0)
RealLayer.Size = UDim2.new(0, 312, 0, 169)
RealLayer.Name = "RealLayer"
RealLayer.Parent = Layers

UIListLayout.Padding = UDim.new(0, 2)
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Parent = RealLayer

EarnedFrame.AnchorPoint = Vector2.new(0.5, 0)
EarnedFrame.BackgroundColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
EarnedFrame.BackgroundTransparency = 0.8999999761581421
EarnedFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
EarnedFrame.BorderSizePixel = 0
EarnedFrame.Position = UDim2.new(0.5, 0, 0, 0)
EarnedFrame.Size = UDim2.new(0, 312, 0, 30)
EarnedFrame.Name = "EarnedFrame"
EarnedFrame.Parent = RealLayer

UICorner2.CornerRadius = UDim.new(0, 1)
UICorner2.Parent = EarnedFrame

EarnedText.Font = Enum.Font.GothamBold
EarnedText.Text = "Earned:"
EarnedText.TextColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
EarnedText.TextSize = 16
EarnedText.TextXAlignment = Enum.TextXAlignment.Left
EarnedText.AnchorPoint = Vector2.new(0, 0.5)
EarnedText.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
EarnedText.BackgroundTransparency = 0.9900000095367432
EarnedText.BorderColor3 = Color3.fromRGB(0, 0, 0)
EarnedText.BorderSizePixel = 0
EarnedText.Position = UDim2.new(0.0204153825, 0, 0.5, 0)
EarnedText.Size = UDim2.new(0, 94, 0, 12)
EarnedText.Name = "EarnedText"
EarnedText.Parent = EarnedFrame

EarnedNumber.Font = Enum.Font.GothamBold
EarnedNumber.Text = "0"
EarnedNumber.TextColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
EarnedNumber.TextSize = 16
EarnedNumber.TextTransparency = 0.10000000149011612
EarnedNumber.TextXAlignment = Enum.TextXAlignment.Right
EarnedNumber.AnchorPoint = Vector2.new(0, 0.5)
EarnedNumber.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
EarnedNumber.BackgroundTransparency = 0.9900000095367432
EarnedNumber.BorderColor3 = Color3.fromRGB(0, 0, 0)
EarnedNumber.BorderSizePixel = 0
EarnedNumber.Position = UDim2.new(0.578738093, 0, 0.5, 0)
EarnedNumber.Size = UDim2.new(0, 123, 0, 12)
EarnedNumber.Name = "EarnedNumber"
EarnedNumber.Parent = EarnedFrame

TimeEslapedFrame.AnchorPoint = Vector2.new(0.5, 0)
TimeEslapedFrame.BackgroundColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
TimeEslapedFrame.BackgroundTransparency = 0.8999999761581421
TimeEslapedFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
TimeEslapedFrame.BorderSizePixel = 0
TimeEslapedFrame.Position = UDim2.new(0.5, 0, 0, 0)
TimeEslapedFrame.Size = UDim2.new(0, 312, 0, 30)
TimeEslapedFrame.Name = "TimeEslapedFrame"
TimeEslapedFrame.Parent = RealLayer

UICorner3.CornerRadius = UDim.new(0, 1)
UICorner3.Parent = TimeEslapedFrame

EslapedText.Font = Enum.Font.GothamBold
EslapedText.Text = "Time Eslaped:"
EslapedText.TextColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
EslapedText.TextSize = 16
EslapedText.TextXAlignment = Enum.TextXAlignment.Left
EslapedText.AnchorPoint = Vector2.new(0, 0.5)
EslapedText.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
EslapedText.BackgroundTransparency = 0.9900000095367432
EslapedText.BorderColor3 = Color3.fromRGB(0, 0, 0)
EslapedText.BorderSizePixel = 0
EslapedText.Position = UDim2.new(0.0204153825, 0, 0.5, 0)
EslapedText.Size = UDim2.new(0, 94, 0, 12)
EslapedText.Name = "EslapedText"
EslapedText.Parent = TimeEslapedFrame

EslapedNumber.Font = Enum.Font.GothamBold
EslapedNumber.Text = "00:00"
EslapedNumber.TextColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
EslapedNumber.TextSize = 16
EslapedNumber.TextTransparency = 0.10000000149011612
EslapedNumber.TextXAlignment = Enum.TextXAlignment.Right
EslapedNumber.AnchorPoint = Vector2.new(0, 0.5)
EslapedNumber.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
EslapedNumber.BackgroundTransparency = 0.9900000095367432
EslapedNumber.BorderColor3 = Color3.fromRGB(0, 0, 0)
EslapedNumber.BorderSizePixel = 0
EslapedNumber.Position = UDim2.new(0.578738093, 0, 0.5, 0)
EslapedNumber.Size = UDim2.new(0, 123, 0, 12)
EslapedNumber.Name = "EslapedNumber"
EslapedNumber.Parent = TimeEslapedFrame

TotalEarnedFrame.AnchorPoint = Vector2.new(0.5, 0)
TotalEarnedFrame.BackgroundColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
TotalEarnedFrame.BackgroundTransparency = 0.8999999761581421
TotalEarnedFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
TotalEarnedFrame.BorderSizePixel = 0
TotalEarnedFrame.Position = UDim2.new(0.5, 0, 0, 0)
TotalEarnedFrame.Size = UDim2.new(0, 312, 0, 30)
TotalEarnedFrame.Name = "TotalEarnedFrame"
TotalEarnedFrame.Parent = RealLayer

UICorner4.CornerRadius = UDim.new(0, 1)
UICorner4.Parent = TotalEarnedFrame

TotalEarnedText.Font = Enum.Font.GothamBold
TotalEarnedText.Text = "Total Earned:"
TotalEarnedText.TextColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
TotalEarnedText.TextSize = 16
TotalEarnedText.TextXAlignment = Enum.TextXAlignment.Left
TotalEarnedText.AnchorPoint = Vector2.new(0, 0.5)
TotalEarnedText.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TotalEarnedText.BackgroundTransparency = 0.9900000095367432
TotalEarnedText.BorderColor3 = Color3.fromRGB(0, 0, 0)
TotalEarnedText.BorderSizePixel = 0
TotalEarnedText.Position = UDim2.new(0.0204153825, 0, 0.5, 0)
TotalEarnedText.Size = UDim2.new(0, 94, 0, 12)
TotalEarnedText.Name = "TotalEarnedText"
TotalEarnedText.Parent = TotalEarnedFrame

TotalEarnedNumber.Font = Enum.Font.GothamBold
TotalEarnedNumber.Text = "0"
TotalEarnedNumber.TextColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
TotalEarnedNumber.TextSize = 16
TotalEarnedNumber.TextTransparency = 0.10000000149011612
TotalEarnedNumber.TextXAlignment = Enum.TextXAlignment.Right
TotalEarnedNumber.AnchorPoint = Vector2.new(0, 0.5)
TotalEarnedNumber.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TotalEarnedNumber.BackgroundTransparency = 0.9900000095367432
TotalEarnedNumber.BorderColor3 = Color3.fromRGB(0, 0, 0)
TotalEarnedNumber.BorderSizePixel = 0
TotalEarnedNumber.Position = UDim2.new(0.578738093, 0, 0.5, 0)
TotalEarnedNumber.Size = UDim2.new(0, 123, 0, 12)
TotalEarnedNumber.Name = "TotalEarnedNumber"
TotalEarnedNumber.Parent = TotalEarnedFrame

CurrentBountyFrame.AnchorPoint = Vector2.new(0.5, 0)
CurrentBountyFrame.BackgroundColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
CurrentBountyFrame.BackgroundTransparency = 0.8999999761581421
CurrentBountyFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
CurrentBountyFrame.BorderSizePixel = 0
CurrentBountyFrame.Position = UDim2.new(0.5, 0, 0, 0)
CurrentBountyFrame.Size = UDim2.new(0, 312, 0, 30)
CurrentBountyFrame.Name = "CurrentBountyFrame"
CurrentBountyFrame.Parent = RealLayer

UICorner5.CornerRadius = UDim.new(0, 1)
UICorner5.Parent = CurrentBountyFrame

CurrentBountyText.Font = Enum.Font.GothamBold
CurrentBountyText.Text = "Current Bounty:"
CurrentBountyText.TextColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
CurrentBountyText.TextSize = 16
CurrentBountyText.TextXAlignment = Enum.TextXAlignment.Left
CurrentBountyText.AnchorPoint = Vector2.new(0, 0.5)
CurrentBountyText.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CurrentBountyText.BackgroundTransparency = 0.9900000095367432
CurrentBountyText.BorderColor3 = Color3.fromRGB(0, 0, 0)
CurrentBountyText.BorderSizePixel = 0
CurrentBountyText.Position = UDim2.new(0.0204153825, 0, 0.5, 0)
CurrentBountyText.Size = UDim2.new(0, 94, 0, 12)
CurrentBountyText.Name = "CurrentBountyText"
CurrentBountyText.Parent = CurrentBountyFrame

CurrentBountyNumber.Font = Enum.Font.GothamBold
CurrentBountyNumber.Text = "0"
CurrentBountyNumber.TextColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
CurrentBountyNumber.TextSize = 16
CurrentBountyNumber.TextTransparency = 0.10000000149011612
CurrentBountyNumber.TextXAlignment = Enum.TextXAlignment.Right
CurrentBountyNumber.AnchorPoint = Vector2.new(0, 0.5)
CurrentBountyNumber.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CurrentBountyNumber.BackgroundTransparency = 0.9900000095367432
CurrentBountyNumber.BorderColor3 = Color3.fromRGB(0, 0, 0)
CurrentBountyNumber.BorderSizePixel = 0
CurrentBountyNumber.Position = UDim2.new(0.578738093, 0, 0.5, 0)
CurrentBountyNumber.Size = UDim2.new(0, 123, 0, 12)
CurrentBountyNumber.Name = "CurrentBountyNumber"
CurrentBountyNumber.Parent = CurrentBountyFrame

SkipDisFrame.AnchorPoint = Vector2.new(0.5, 0)
SkipDisFrame.BackgroundColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
SkipDisFrame.BackgroundTransparency = 0.8999999761581421
SkipDisFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
SkipDisFrame.BorderSizePixel = 0
SkipDisFrame.Position = UDim2.new(0.5, 0, 0.75739646, 0)
SkipDisFrame.Size = UDim2.new(0, 312, 0, 41)
SkipDisFrame.Name = "SkipDisFrame"
SkipDisFrame.Parent = RealLayer

UICorner6.CornerRadius = UDim.new(0, 1)
UICorner6.Parent = SkipDisFrame

SkipFrame.AnchorPoint = Vector2.new(0.5, 0.5)
SkipFrame.BackgroundColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
SkipFrame.BackgroundTransparency = 0.8999999761581421
SkipFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
SkipFrame.BorderSizePixel = 0
SkipFrame.Position = UDim2.new(0.253205121, 0, 0.5, 0)
SkipFrame.Size = UDim2.new(0, 150, 0, 32)
SkipFrame.Name = "SkipFrame"
SkipFrame.Parent = SkipDisFrame

UICorner7.CornerRadius = UDim.new(0, 1)
UICorner7.Parent = SkipFrame

SkipButton.Font = Enum.Font.GothamBold
SkipButton.Text = "Skip Player"
SkipButton.TextColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
SkipButton.TextSize = 16
SkipButton.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
SkipButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SkipButton.BackgroundTransparency = 0.9900000095367432
SkipButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
SkipButton.BorderSizePixel = 0
SkipButton.Size = UDim2.new(0, 150, 0, 32)
SkipButton.Name = "SkipButton"
SkipButton.Parent = SkipFrame

DisFrame.AnchorPoint = Vector2.new(0.5, 0.5)
DisFrame.BackgroundColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
DisFrame.BackgroundTransparency = 0.8999999761581421
DisFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
DisFrame.BorderSizePixel = 0
DisFrame.Position = UDim2.new(0.745192289, 0, 0.5, 0)
DisFrame.Size = UDim2.new(0, 150, 0, 32)
DisFrame.Name = "DisFrame"
DisFrame.Parent = SkipDisFrame

UICorner8.CornerRadius = UDim.new(0, 1)
UICorner8.Parent = DisFrame

DisButton.Font = Enum.Font.GothamBold
DisButton.Text = "Copy Link Discord"
DisButton.TextColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
DisButton.TextSize = 16
DisButton.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
DisButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
DisButton.BackgroundTransparency = 0.9900000095367432
DisButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
DisButton.BorderSizePixel = 0
DisButton.Size = UDim2.new(0, 150, 0, 32)
DisButton.Name = "DisButton"
DisButton.Parent = DisFrame

Top.AnchorPoint = Vector2.new(0.5, 0.5)
Top.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Top.BackgroundTransparency = 0.9900000095367432
Top.BorderColor3 = Color3.fromRGB(0, 0, 0)
Top.BorderSizePixel = 0
Top.Position = UDim2.new(0.500237703, 0, 0.132554695, 0)
Top.Size = UDim2.new(0, 335, 0, 68)
Top.Name = "Top"
Top.Parent = Main

UICorner9.CornerRadius = UDim.new(0, 2)
UICorner9.Parent = Top

ImageHub.Image = "rbxassetid://15184124237"
ImageHub.AnchorPoint = Vector2.new(0, 0.5)
ImageHub.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageHub.BackgroundTransparency = 0.9900000095367432
ImageHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageHub.BorderSizePixel = 0
ImageHub.Position = UDim2.new(0.00999999978, 0, 0.550000012, 0)
ImageHub.Size = UDim2.new(0, 65, 0, 65)
ImageHub.Name = "ImageHub"
ImageHub.Parent = Top

Ver.Font = Enum.Font.GothamBold
Ver.Text = "Version: Auto Bounty"
Ver.TextColor3 = Color3.fromRGB(131.00000739097595, 181.0000044107437, 255)
Ver.TextSize = 17
Ver.TextTransparency = 0.10000000149011612
Ver.TextXAlignment = Enum.TextXAlignment.Left
Ver.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Ver.BackgroundTransparency = 1
Ver.BorderColor3 = Color3.fromRGB(0, 0, 0)
Ver.BorderSizePixel = 0
Ver.Position = UDim2.new(0.223913297, 0, 0.601351321, 0)
Ver.Size = UDim2.new(0, 217, 0, 18)
Ver.Name = "Ver"
Ver.Parent = Top

NameHub.Font = Enum.Font.GothamBold
NameHub.Text = "Rimus Hub | Blox Fruits"
NameHub.TextColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
NameHub.TextSize = 23
NameHub.TextXAlignment = Enum.TextXAlignment.Left
NameHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameHub.BackgroundTransparency = 1
NameHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameHub.BorderSizePixel = 0
NameHub.Position = UDim2.new(0.223913297, 0, 0.217029572, 0)
NameHub.Size = UDim2.new(0, 246, 0, 20)
NameHub.Name = "NameHub"
NameHub.Parent = Top
--- Gui Function
_G.TotalEarn = 0
_G.Time = 0
loadSettings()
Bounty = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].value
Earned = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].value - Bounty
Earned2 = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].value - Bounty
startTime = tick() - _G.Time
OldTotalEarned = _G.TotalEarn 
TotalEarned = _G.TotalEarn 
function GetElapsedTime(startTime)
    local elapsedTime = tick() - startTime
    local hours = math.floor(elapsedTime / 3600)
    local minutes = math.floor((elapsedTime % 3600) / 60)
    local seconds = math.floor(elapsedTime % 60)
    _G.Time = elapsedTime
    local formattedTime = string.format("%02d:%02d:%02d", hours, minutes, seconds)
    return formattedTime
end
local UserInputService = game:GetService("UserInputService")
local UserInputService = game:GetService("UserInputService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local TweenService = game:GetService("TweenService")
local tween = game:service"TweenService"
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local GuiService = game:GetService("GuiService")
function MakeDraggable(topbarobject, object)
    local Dragging = nil
    local DragInput = nil
    local DragStart = nil
    local StartPosition = nil

    local function Update(input)
        local Delta = input.Position - DragStart
        local pos =
            UDim2.new(
                StartPosition.X.Scale,
                StartPosition.X.Offset + Delta.X,
                StartPosition.Y.Scale,
                StartPosition.Y.Offset + Delta.Y
            )
        local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
        Tween:Play()
    end

    topbarobject.InputBegan:Connect(
        function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                Dragging = true
                DragStart = input.Position
                StartPosition = object.Position

                input.Changed:Connect(
                    function()
                        if input.UserInputState == Enum.UserInputState.End then
                            Dragging = false
                        end
                    end
                )
            end
        end
    )

    topbarobject.InputChanged:Connect(
        function(input)
            if
                input.UserInputType == Enum.UserInputType.MouseMovement or
                input.UserInputType == Enum.UserInputType.Touch
            then
                DragInput = input
            end
        end
    )

    UserInputService.InputChanged:Connect(
        function(input)
            if input == DragInput and Dragging then
                Update(input)
            end
        end
    )
end
MakeDraggable(DropShadowHolder,DropShadowHolder)
DisButton.MouseButton1Down:Connect(function()
    setclipboard("https://discord.gg/ugF7s4GZ53")
end)
SkipButton.MouseButton1Down:Connect(function()
    SkipPlayer()
end)
--- Time
spawn(function()
    while task.wait() do
        Earned = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].value - Bounty
        if Earned ~= Earned2 then
            TotalEarned = OldTotalEarned + Earned
            Earned2 = Earned
            saveSettings()
            wEarn(getgenv().killed, Earned,TotalEarned)  
        end
        EarnedNumber.Text = tostring(Earned)
        TotalEarnedNumber.Text = tostring(TotalEarned)
        CurrentBountyNumber.Text = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].value
        _G.TotalEarn = TotalEarned 
    end
end)
spawn(function()
    while task.wait(1) do
        EslapedNumber.Text = GetElapsedTime(startTime)
        saveSettings()
    end
end)