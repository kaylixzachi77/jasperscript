-- JasperScript Loader - Full UI
local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()

-- Iwasan ang pag-duplicate ng GUI kung sakaling na-execute ulit
if game.CoreGui:FindFirstChild("JasperMenu") then
    game.CoreGui.JasperMenu:Destroy()
end

-- Paggawa ng Main UI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "JasperMenu"
ScreenGui.Parent = game.CoreGui

local Frame = Instance.new("Frame")
Frame.Name = "MainFrame"
Frame.Size = UDim2.new(0, 200, 0, 200)
Frame.Position = UDim2.new(0.5, -100, 0.5, -100)
Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true
Frame.Parent = ScreenGui

-- Title
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0.2, 0)
Title.Text = "JASPER SCRIPT"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Title.Parent = Frame

-- Button 1: Speed
local SpeedBtn = Instance.new("TextButton")
SpeedBtn.Size = UDim2.new(0.8, 0, 0.2, 0)
SpeedBtn.Position = UDim2.new(0.1, 0, 0.3, 0)
SpeedBtn.Text = "Speed x2"
SpeedBtn.Parent = Frame

SpeedBtn.MouseButton1Click:Connect(function()
    Player.Character.Humanoid.WalkSpeed = 32
end)

-- Button 2: Infinite Jump
local JumpBtn = Instance.new("TextButton")
JumpBtn.Size = UDim2.new(0.8, 0, 0.2, 0)
JumpBtn.Position = UDim2.new(0.1, 0, 0.55, 0)
JumpBtn.Text = "Inf Jump: OFF"
JumpBtn.Parent = Frame

local InfJump = false
local UIS = game:GetService("UserInputService")

UIS.JumpRequest:Connect(function()
    if InfJump then
        Player.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
    end
end)

JumpBtn.MouseButton1Click:Connect(function()
    InfJump = not InfJump
    JumpBtn.Text = InfJump and "Inf Jump: ON" or "Inf Jump: OFF"
end)

-- Button 3: Close
local CloseBtn = Instance.new("TextButton")
CloseBtn.Size = UDim2.new(0.8, 0, 0.2, 0)
CloseBtn.Position = UDim2.new(0.1, 0, 0.8, 0)
CloseBtn.Text = "Close Menu"
CloseBtn.BackgroundColor3 = Color3.fromRGB(150, 50, 50)
CloseBtn.TextColor3 = Color3.new(1, 1, 1)
CloseBtn.Parent = Frame

CloseBtn.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)
