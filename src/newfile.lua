local Icons = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/src/Icons.lua"))().assets

--local unibar = game:GetService("Players").LocalPlayer.PlayerGui.TopbarStandard.Holders.Left
local unibar = game.CoreGui.TopBarApp.TopBarFrame

local Parentframe 

if game.CoreGui.TopBarApp.TopBarFrame:FindFirstChild("TopBarAppV2") then
    
    Parentframe = unibar.TopBarAppV2

else
    
    Parentframe = Instance.new("Frame", unibar)
    Parentframe.Size = UDim2.new(1,0,1,2)
    Parentframe.Position = UDim2.new(0,88,0,0)
    Parentframe.BackgroundTransparency = 1
    Parentframe.Name = "TopBarAppV2"
    
    local UIListLayout = Instance.new("UIListLayout", Parentframe)
    UIListLayout.FillDirection = "Horizontal"
    UIListLayout.Padding = UDim.new(0,12)
    UIListLayout.SortOrder = "LayoutOrder"
    UIListLayout.VerticalAlignment = "Bottom"
    UIListLayout.HorizontalAlignment = "Left"
    
end


local topbar = {}

local function GetIcon(Name) 
    if Name ~= nil and Icons["lucide-" .. Name] then 
        return Icons["lucide-" .. Name] 
    end 
    return nil 
end

do
    local UnibarMenu = game.CoreGui.TopBarApp.UnibarLeftFrame.UnibarMenu
    
    unibar.Position = UDim2.new(0, UnibarMenu.Size.X.Offset + 12, 0, 0)
    
    UnibarMenu:GetPropertyChangedSignal("Size"):Connect(function()
        unibar.Position = UDim2.new(0, UnibarMenu.Size.X.Offset + 12, 0, 0)
    end)
end

function topbar:CreateTextWithIcon(TextWithIconConfig)
    TextWithIconConfig.Icon = TextWithIconConfig.Icon or ""
    TextWithIconConfig.Content = TextWithIconConfig.Content or "Content"
    TextWithIconConfig.Order = TextWithIconConfig.Order or 20
    
    local Frame = Instance.new("TextLabel", Parentframe)
    Frame.BackgroundColor3 = Color3.fromRGB(0,0,0)
    Frame.BackgroundTransparency = 0.3
    Frame.Size = UDim2.new(0,0,0,44)
    Frame.Text = TextWithIconConfig.Content
    Frame.AutomaticSize = "X"
    Frame.Font = "BuilderSans"
    Frame.TextSize = 20
    Frame.TextColor3 = Color3.new(1,1,1)
    Frame.LayoutOrder = TextWithIconConfig.Order
    
    local UICorner = Instance.new("UICorner", Frame)
    UICorner.CornerRadius = UDim.new(1,1)
    
    local UIPadding = Instance.new("UIPadding", Frame)
    UIPadding.PaddingLeft = UDim.new(0,16)
    UIPadding.PaddingRight = UDim.new(0,16)
    
    if TextWithIconConfig.Icon ~= "" then
        local ImageLabel = Instance.new("ImageLabel", Frame)
        ImageLabel.Image = GetIcon(TextWithIconConfig.Icon)
        ImageLabel.Size = UDim2.new(0,26,0,26)
        ImageLabel.Position = UDim2.new(0,-37,0.5,0)
        ImageLabel.AnchorPoint = Vector2.new(0,0.5)
        ImageLabel.BackgroundTransparency = 1
        
        UIPadding.PaddingLeft = UDim.new(0,47)
    end
end
--[[
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
]]

-- example

local TopbarApp = topbar
TopbarApp:CreateTextWithIcon({
    Icon = "user",
    Content = "example muhahaha",
    Order = 20
})
