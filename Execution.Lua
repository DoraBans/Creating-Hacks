local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/lolpoppyus/Roblox-Lua/master/Pop%20UI%20Lib", true))()
local Players = game:GetService("Players")

local b = library:Tab("Best Things")

b:Label("vape v5x.01")

b:Button("No fall", function()
		local Player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local part = Instance.new("Part")
part.Size = Vector3.new(100, 0.01, 100)
part.Shape = Enum.PartType.Block
part.Color = Color3.new(1, 0, 0)
part.Anchored = true
part.CanCollide = true
part.Parent = game.Workspace

while true do
    local rootPart = character:FindFirstChild("HumanoidRootPart")
    if rootPart then
        part.Position = rootPart.Position - Vector3.new(0, 5, 0)
    end
    wait(0.1)
end
end)
b:Button("Aim",function()
		local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

local camera = game.Workspace.CurrentCamera
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local aimPart = Instance.new("Part")
aimPart.Size = Vector3.new(0.2, 0.2, 0.2)
aimPart.Anchored = true
aimPart.CanCollide = false
aimPart.Transparency = 1
aimPart.Parent = game.Workspace

mouse.Move:Connect(function()
    local targetPosition = mouse.Hit.p
    local direction = (targetPosition - camera.CFrame.p).unit
    local ray = Ray.new(camera.CFrame.p, direction * 1000)
    local part, position = game.Workspace:FindPartOnRay(ray, character)

    if part then
        aimPart.Position = position
    end
end)

mouse.Button1Down:Connect(function()
    -- Handle shooting logic here
end)
end)
b:Button("➤Esp (Best way to Win)",function()
    local function createBoxAroundPlayer(player)
    local character = player.Character
    if character then
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            local rootPart = character:FindFirstChild("HumanoidRootPart")
            if rootPart then
                local box = Instance.new("Part")
                box.Size = Vector3.new(4, 8, 4) -- Adjust size as needed
                box.Color = Color3.new(1, 0, 0) -- Red color, adjust as needed
                box.Transparency = 0.5
                box.Anchored = true
                box.CanCollide = false
                box.CFrame = rootPart.CFrame
                box.Parent = workspace
            end
        end
    end
end

game.Players.PlayerAdded:Connect(function(player)
    createBoxAroundPlayer(player)
end)

for _, player in ipairs(game.Players:GetPlayers()) do
    createBoxAroundPlayer(player)
end
end)

b:Button("NameTags (Top for Esp)",function()
  local nameTag = Instance.new("BillboardGui")
nameTag.Name = "NameTag"
nameTag.Size = UDim2.new(0, 100, 0, 50)
nameTag.StudsOffset = Vector3.new(0, 3, 0)
nameTag.Adornee = nil
nameTag.AlwaysOnTop = true
nameTag.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

local nameLabel = Instance.new("TextLabel")
nameLabel.Name = "NameLabel"
nameLabel.Size = UDim2.new(1, 0, 1, 0)
nameLabel.BackgroundTransparency = 1
nameLabel.TextColor3 = Color3.new(1, 1, 1)
nameLabel.TextStrokeTransparency = 0.5
nameLabel.TextScaled = true
nameLabel.Font = Enum.Font.SourceSansBold
nameLabel.Parent = nameTag

local function updateNameTag()
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character
    if character then
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            local head = character:FindFirstChild("Head")
            if head then
                local headPos, onScreen = workspace.CurrentCamera:WorldToScreenPoint(head.Position)
                if onScreen then
                    nameTag.Adornee = head
                    nameTag.Enabled = true
                    nameTag.Position = UDim2.new(0, headPos.X, 0, headPos.Y)
                    nameLabel.Text = player.Name
                    local teamColor = player.TeamColor.Color
                    nameLabel.TextColor3 = teamColor
                else
                    nameTag.Enabled = false
                end
            end
        end
    end
end

game:GetService("RunService").RenderStepped:Connect(updateNameTag)
end)

b:Button("Track Players Camera (Think useless)",function()
    local Players = game:GetService("Players")
local Cameras = {}
local CurrentCameraIndex = 1

local function CreateCamera()
    local newCamera = Instance.new("Camera")
    newCamera.Parent = game.Workspace
    table.insert(Cameras, newCamera)
end

local function SwitchCamera()
    CurrentCameraIndex = CurrentCameraIndex % #Cameras + 1
    game.Workspace.CurrentCamera = Cameras[CurrentCameraIndex]
end

local function TrackPlayers()
    for _, player in ipairs(Players:GetPlayers()) do
        local character = player.Character
        if character and character:IsDescendantOf(game.Workspace) then
            local camera = game.Workspace.CurrentCamera
            local viewport = camera:WorldToViewportPoint(character.HumanoidRootPart.Position)
            if viewport.Z > 0 and viewport.X > 0 and viewport.X < 1 and viewport.Y > 0 and viewport.Y < 1 then
            end
        end
    end
end

CreateCamera()

local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local buttonFrame = Instance.new("Frame")
buttonFrame.Size = UDim2.new(0, 200, 0, 50)
buttonFrame.Position = UDim2.new(0.5, -100, 0.8, 0)
buttonFrame.Parent = playerGui

local button1 = Instance.new("TextButton")
button1.Size = UDim2.new(0.45, 0, 1, 0)
button1.Position = UDim2.new(0, 0, 0, 0)
button1.Text = "See Camera from " .. Players.LocalPlayer.Name .. " Click to see"
button1.Parent = buttonFrame

local button2 = button1:Clone()
button2.Position = UDim2.new(0.55, 0, 0, 0)
button2.Parent = buttonFrame

button1.MouseButton1Click:Connect(SwitchCamera)
button2.MouseButton1Click:Connect(SwitchCamera)

game:GetService("RunService").RenderStepped:Connect(TrackPlayers)
end)

b:Button("HealthBar",function()
		loadstring(game:Httpget:("https://raw.githubusercontent.com/DoraBans/Orion/main/Code.lua"))(); true
end)

b:Button("Find a script by Using Discord library (Please use by your Game)",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DoraBans/Orion/main/Discord-Game-Entcrypter.lua"))(); true
end)
b:Button("Coming soon",function()
    
end)
