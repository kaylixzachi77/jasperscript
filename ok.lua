-- Simple Universal Script
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local SpeedButton = Instance.new("TextButton")
local FlyButton = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0, 150, 0, 100)
Frame.Position = UDim2.new(0.5, -75, 0.5, -50)
Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)

SpeedButton.Parent = Frame
SpeedButton.Size = UDim2.new(1, 0, 0.5, 0)
SpeedButton.Text = "Speed Hack (x2)"
SpeedButton.MouseButton1Click:Connect(function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 32
end)

FlyButton.Parent = Frame
FlyButton.Position = UDim2.new(0, 0, 0.5, 0)
FlyButton.Size = UDim2.new(1, 0, 0.5, 0)
FlyButton.Text = "Toggle Fly"
FlyButton.MouseButton1Click:Connect(function()
    local hum = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
    if hum then
        hum.PlatformStand = not hum.PlatformStand
    end
end)
