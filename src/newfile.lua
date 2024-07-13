local unibar = game:GetService("Players").LocalPlayer.PlayerGui.TopbarStandard.Holders.Left

local frame = Instance.new("TextButton", unibar)
frame.BackgroundColor3 = Color3.fromRGB(0,0,0)
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(0,44,0,44)
frame.AutoButtonColor = false
frame.Text = ""

local uicorner= Instance.new("UICorner", frame)
uicorner.CornerRadius = UDim.new(1,1)

local frame2 = Instance.new("Frame", frame)
frame2.Size = UDim2.new(1,-8,1,-8)
frame2.Position = UDim2.new(0.5,0,0.5,0)
frame2.AnchorPoint = Vector2.new(0.5,0.5)
frame2.BackgroundColor3 = Color3.fromRGB(255,255,255)
frame2.BackgroundTransparency = 0.9
frame2.Visible = false

local uicorner2 = Instance.new("UICorner", frame2)
uicorner2.CornerRadius = UDim.new(1,0)

local image = Instance.new("ImageLabel", frame)
image.Size = UDim2.new(0,30,0,30)
image.BackgroundTransparency = 1
image.Position = UDim2.new(0.5,0,0.5,0)
image.AnchorPoint = Vector2.new(0.5,0.5)

frame.MouseEnter:Connect(function()
    frame2.Visible = true
end)

frame.MouseLeave:Connect(function()
    frame2.Visible = false
end)