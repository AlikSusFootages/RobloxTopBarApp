local TweenService = game:GetService("TweenService") 

local topbar = {} 

if game.CoreGui.TopBarApp.TopBarFrame:FindFirstChild("UnibarLeftFrame") then else
    game.CoreGui.TopBarApp.TopBarFrame.LeftFrame.ChatIcon.Size = UDim2.new(0, 32, 1, 0) 
    
    function topbar:CreateTextWithIcon(TextWithIconConfig) 
        TextWithIconConfig.Icon = TextWithIconConfig.Icon or ""
        TextWithIconConfig.Content = TextWithIconConfig.Content or "Content"
        
        local frame = Instance.new("Frame", game.CoreGui.TopBarApp.TopBarFrame.LeftFrame) 
        frame.LayoutOrder = 3 
        frame.BackgroundTransparency = 1 
        frame.Name = "__TopBarApp__TextWithIcon__"
        
        
        local frame2 = Instance.new("TextLabel", frame) 
        frame2.Size = UDim2.new(1, 0, 0, 32) 
        frame2.BorderSizePixel = 0 
        frame2.AnchorPoint = Vector2.new(0, 1) 
        frame2.Position = UDim2.new(0,0,0,0) 
        frame2.BackgroundColor3 = Color3.fromRGB(0,0,0) 
        frame2.BackgroundTransparency = 0.5 
        frame2.TextColor3 = Color3.fromRGB(255,255,255) 
        frame2.Text = "" 
        frame2.TextSize = 15
        
        local text = Instance.new("TextLabel", frame2) 
        text.Size = UDim2.new(1, 0, 1, 0) 
        text.AnchorPoint = Vector2.new(1,0) 
        text.Position = UDim2.new(1,0,0,0) 
        text.BackgroundTransparency = 1 
        text.Text = TextWithIconConfig.Content 
        text.Font = "BuilderSansMedium"
        text.TextSize = 15 
        text.TextColor3 = Color3.fromRGB(255,255,255)
        
        frame.Size = UDim2.new(0, text.TextBounds.X + 38, 1, 0)
        
        if TextWithIconConfig.Icon ~= "" then
            text.Size = UDim2.new(1, -12, 1, 0) 
            frame.Size = UDim2.new(0, text.TextBounds.X + 45, 1, 0)
        end
        
        if TextWithIconConfig.Content == "" then
            frame.Size = UDim2.new(0, 33, 1, 0)
        end
        
        local icon = Instance.new("ImageLabel", frame2) 
        icon.Size = UDim2.new(0, 15, 0, 15) 
        icon.Position = UDim2.new(0, 9, 0, 8) 
        icon.BackgroundTransparency = 1 
        icon.Image = TextWithIconConfig.Icon
        
        local uicorner = Instance.new("UICorner", frame2) 
        uicorner.CornerRadius = UDim.new(0,8) 
        
        TweenService:Create(frame2, TweenInfo.new(0.5), {Position = UDim2.new(0, 0, 1, 0)}):Play() 
    end 
    
    function topbar:CreateButtonTextWithIcon(ButtonTextWithIconConfig) 
        ToggleTextWithIconConfig.Icon = ToggleTextWithIconConfig.Icon or ""
        ToggleTextWithIconConfig.Content = ToggleTextWithIconConfig.Content or "Content"
        ToggleTextWithIconConfig.Callback = ToggleTextWithIconConfig.Callback or function() end
        
        local frame = Instance.new("Frame", game.CoreGui.TopBarApp.TopBarFrame.LeftFrame) 
        frame.LayoutOrder = 3 
        frame.BackgroundTransparency = 1 
        frame.Name = "__TopBarApp__ButtonTextWithIcon__"
        
        local frame2 = Instance.new("TextButton", frame) 
        frame2.Size = UDim2.new(1, 0, 0, 32) 
        frame2.BorderSizePixel = 0 
        frame2.AnchorPoint = Vector2.new(0, 1) 
        frame2.Position = UDim2.new(0,0,0,0) 
        frame2.BackgroundColor3 = Color3.fromRGB(0,0,0) 
        frame2.BackgroundTransparency = 0.5 
        frame2.TextColor3 = Color3.fromRGB(255,255,255) 
        frame2.Text = "" 
        frame2.TextSize = 15
        frame2.AutoButtonColor = false
        
        local text = Instance.new("TextLabel", frame2) 
        text.Size = UDim2.new(1, 0, 1, 0) 
        text.AnchorPoint = Vector2.new(1,0) 
        text.Position = UDim2.new(1,0,0,0) 
        text.BackgroundTransparency = 1 
        text.Text = ToggleTextWithIconConfig.Content 
        text.Font = "BuilderSansMedium"
        text.TextSize = 15 
        text.TextColor3 = Color3.fromRGB(255,255,255)
        
        frame.Size = UDim2.new(0, text.TextBounds.X + 38, 1, 0)
        
        if ToggleTextWithIconConfig.Icon ~= "" then
            text.Size = UDim2.new(1, -12, 1, 0) 
            frame.Size = UDim2.new(0, text.TextBounds.X + 45, 1, 0)
        end
        
        if ToggleTextWithIconConfig.Content == "" then
            frame.Size = UDim2.new(0, 33, 1, 0)
        end
        
        local icon = Instance.new("ImageLabel", frame2) 
        icon.Size = UDim2.new(0, 15, 0, 15) 
        icon.Position = UDim2.new(0, 9, 0, 8) 
        icon.BackgroundTransparency = 1 
        icon.Image = ToggleTextWithIconConfig.Icon
        icon.ImageColor3 = Color3.fromRGB(255,255,255)
        
        TweenService:Create(frame2, TweenInfo.new(0.5), {Position = UDim2.new(0, 0, 1, 0)}):Play() 
        
        local uicorner = Instance.new("UICorner", frame2) 
        uicorner.CornerRadius = UDim.new(0,8) 
        
        
        
        frame2.MouseButton1Down:Connect(function()
            TweenService:Create(frame2, TweenInfo.new(0.1), {BackgroundColor3 = Color3.fromRGB(233,233,233)}):Play()
            TweenService:Create(frame2, TweenInfo.new(0.1), {BackgroundTransparency = 0}):Play()
            TweenService:Create(text, TweenInfo.new(0.1), {TextColor3 = Color3.fromRGB(10,10,10)}):Play()
            TweenService:Create(icon, TweenInfo.new(0.1), {ImageColor3 = Color3.fromRGB(10,10,10)}):Play()
        end)
        
        frame2.MouseButton1Up:Connect(function()
            TweenService:Create(frame2, TweenInfo.new(0.1), {BackgroundColor3 = Color3.fromRGB(0,0,0)}):Play()
            TweenService:Create(frame2, TweenInfo.new(0.1), {BackgroundTransparency = 0.5}):Play()
            TweenService:Create(text, TweenInfo.new(0.1), {TextColor3 = Color3.fromRGB(255,255,255)}):Play()
            TweenService:Create(icon, TweenInfo.new(0.1), {ImageColor3 = Color3.fromRGB(255,255,255)}):Play()
        end)
        
        frame2.MouseButton1Click:Connect(function()
            spawn(function()
                pcall(ToggleTextWithIconConfig.Callback)
            end)
        end)
    end 
    
    function topbar:CreatePushButtonTextWithIcon(ButtonPushTextWithIconConfig) 
        ButtonPushTextWithIconConfig.Icon = ButtonPushTextWithIconConfig.Icon or "rbxassetid://10723374641"
        ButtonPushTextWithIconConfig.Content = ButtonPushTextWithIconConfig.Content or "Content"
        ButtonPushTextWithIconConfig.Callback = ButtonPushTextWithIconConfig.Callback or function() end
        
        local frame = Instance.new("Frame", game.CoreGui.TopBarApp.TopBarFrame.LeftFrame) 
        frame.LayoutOrder = 3 
        frame.BackgroundTransparency = 1 
        frame.Name = "__TopBarApp__PushButtonTextWithIcon__"
        
        local frame2 = Instance.new("TextButton", frame) 
        frame2.Size = UDim2.new(1, 0, 0, 32) 
        frame2.BorderSizePixel = 0 
        frame2.AnchorPoint = Vector2.new(0, 1) 
        frame2.Position = UDim2.new(0,0,0,0) 
        frame2.BackgroundColor3 = Color3.fromRGB(0,0,0) 
        frame2.BackgroundTransparency = 0.5 
        frame2.TextColor3 = Color3.fromRGB(255,255,255) 
        frame2.Text = "" 
        frame2.TextSize = 15
        frame2.AutoButtonColor = false
        frame2.ClipsDescendants = true
        
        local text = Instance.new("TextLabel", frame2) 
        text.Size = UDim2.new(1, -12, 1, 0) 
        text.AnchorPoint = Vector2.new(0,0) 
        text.Position = UDim2.new(2.3,0,0,0) 
        text.BackgroundTransparency = 1 
        text.Text = ButtonPushTextWithIconConfig.Content 
        text.Font = "BuilderSansMedium"
        text.TextSize = 15 
        text.TextColor3 = Color3.fromRGB(255,255,255)
        
        frame.Size = UDim2.new(0, 33, 1, 0)
        
        local icon = Instance.new("ImageLabel", frame2) 
        icon.Size = UDim2.new(0, 15, 0, 15) 
        icon.Position = UDim2.new(0, 9, 0, 8) 
        icon.BackgroundTransparency = 1 
        icon.Image = ButtonPushTextWithIconConfig.Icon
        icon.ImageColor3 = Color3.fromRGB(255,255,255)
        
        if ButtonPushTextWithIconConfig.Icon == "" then
            icon.Image = "rbxassetid://10723374641"
            frame.Size = UDim2.new(0, 33, 1, 0)
        else
            text.Size = UDim2.new(1, -12, 1, 0) 
            frame.Size = UDim2.new(0, 33, 1, 0)
        end
        
        if ButtonPushTextWithIconConfig.Content == "" then
            frame.Size = UDim2.new(0, 33, 1, 0)
        end
        
        
        local anim = TweenService:Create(frame2, TweenInfo.new(0.5), {Position = UDim2.new(0, 0, 1, 0)}):Play() 
        
        local uicorner = Instance.new("UICorner", frame2) 
        uicorner.CornerRadius = UDim.new(0,8) 
        
        
        
        frame2.MouseButton1Down:Connect(function()
            TweenService:Create(frame2, TweenInfo.new(0.1), {BackgroundColor3 = Color3.fromRGB(233,233,233)}):Play()
            TweenService:Create(frame2, TweenInfo.new(0.1), {BackgroundTransparency = 0}):Play()
            TweenService:Create(text, TweenInfo.new(0.1), {TextColor3 = Color3.fromRGB(10,10,10)}):Play()
            TweenService:Create(icon, TweenInfo.new(0.1), {ImageColor3 = Color3.fromRGB(10,10,10)}):Play()
            TweenService:Create(frame, TweenInfo.new(0.1), {Size = UDim2.new(0, text.TextBounds.X + 45, 1, 0)}):Play()
            TweenService:Create(text, TweenInfo.new(0.1), {Position = UDim2.new(0, 17, 0, 0)}):Play()
        end)
        
        frame2.MouseButton1Up:Connect(function()
            TweenService:Create(frame2, TweenInfo.new(0.1), {BackgroundColor3 = Color3.fromRGB(0,0,0)}):Play()
            TweenService:Create(frame2, TweenInfo.new(0.1), {BackgroundTransparency = 0.5}):Play()
            TweenService:Create(text, TweenInfo.new(0.1), {TextColor3 = Color3.fromRGB(255,255,255)}):Play()
            TweenService:Create(icon, TweenInfo.new(0.1), {ImageColor3 = Color3.fromRGB(255,255,255)}):Play()
            TweenService:Create(frame, TweenInfo.new(0.1), {Size = UDim2.new(0, 33, 1, 0)}):Play()
            TweenService:Create(text, TweenInfo.new(0.1), {Position = UDim2.new(2.3,0, 0, 0)}):Play()
        end)
        
        frame2.MouseButton1Click:Connect(function()
            spawn(function()
                pcall(ButtonPushTextWithIconConfig.Callback)
            end)
        end)
    end 
    
    function topbar:CreateToggleTextWithIcon(ToggleTextWithIconConfig) 
        ToggleTextWithIconConfig.Icon = ToggleTextWithIconConfig.Icon or ""
        ToggleTextWithIconConfig.Content = ToggleTextWithIconConfig.Content or "Content"
        ToggleTextWithIconConfig.Callback = ToggleTextWithIconConfig.Callback or function() end
        
        local frame = Instance.new("Frame", game.CoreGui.TopBarApp.TopBarFrame.LeftFrame) 
        frame.LayoutOrder = 3 
        frame.BackgroundTransparency = 1 
        frame.Name = "__TopBarApp__ToggleTextWithIcon__"
        
        local frame2 = Instance.new("TextButton", frame) 
        frame2.Size = UDim2.new(1, 0, 0, 32) 
        frame2.BorderSizePixel = 0 
        frame2.AnchorPoint = Vector2.new(0, 1) 
        frame2.Position = UDim2.new(0,0,0,0) 
        frame2.BackgroundColor3 = Color3.fromRGB(0,0,0) 
        frame2.BackgroundTransparency = 0.5 
        frame2.TextColor3 = Color3.fromRGB(255,255,255) 
        frame2.Text = "" 
        frame2.TextSize = 15
        frame2.AutoButtonColor = false
        
        local text = Instance.new("TextLabel", frame2) 
        text.Size = UDim2.new(1, 0, 1, 0) 
        text.AnchorPoint = Vector2.new(1,0) 
        text.Position = UDim2.new(1,0,0,0) 
        text.BackgroundTransparency = 1 
        text.Text = ToggleTextWithIconConfig.Content 
        text.Font = "BuilderSansMedium"
        text.TextSize = 15 
        text.TextColor3 = Color3.fromRGB(255,255,255)
        
        frame.Size = UDim2.new(0, text.TextBounds.X + 38, 1, 0)
        
        if ToggleTextWithIconConfig.Icon == "" then
            
            else
                text.Size = UDim2.new(1, -12, 1, 0) 
                frame.Size = UDim2.new(0, text.TextBounds.X + 45, 1, 0)
        end
        
        if ToggleTextWithIconConfig.Content == "" then
            frame.Size = UDim2.new(0, 33, 1, 0)
        end
        
        local icon = Instance.new("ImageLabel", frame2) 
        icon.Size = UDim2.new(0, 15, 0, 15) 
        icon.Position = UDim2.new(0, 9, 0, 8) 
        icon.BackgroundTransparency = 1 
        icon.Image = ToggleTextWithIconConfig.Icon
        icon.ImageColor3 = Color3.fromRGB(255,255,255)
        
        local anim = TweenService:Create(frame2, TweenInfo.new(0.5), {Position = UDim2.new(0, 0, 1, 0)}) 
        
        anim:Play() 
        
        local uicorner = Instance.new("UICorner", frame2) 
        uicorner.CornerRadius = UDim.new(0,8) 
        
        -- uhhh wtf
        
        local changeColorButton = TweenService:Create(frame2, TweenInfo.new(0.1), {BackgroundColor3 = Color3.fromRGB(233,233,233)})
        local changeColorButtonTransparency = TweenService:Create(frame2, TweenInfo.new(0.1), {BackgroundTransparency = 0})
        local changeColorButtonText = TweenService:Create(text, TweenInfo.new(0.1), {TextColor3 = Color3.fromRGB(10,10,10)})
        local changeColorButtonIcon = TweenService:Create(icon, TweenInfo.new(0.1), {ImageColor3 = Color3.fromRGB(10,10,10)})
        
        local UNchangeColorButton = TweenService:Create(frame2, TweenInfo.new(0.1), {BackgroundColor3 = Color3.fromRGB(0,0,0)})
        local UNchangeColorButtonTransparency = TweenService:Create(frame2, TweenInfo.new(0.1), {BackgroundTransparency = 0.5})
        local UNchangeColorButtonText = TweenService:Create(text, TweenInfo.new(0.1), {TextColor3 = Color3.fromRGB(255,255,255)})
        local UNchangeColorButtonIcon = TweenService:Create(icon, TweenInfo.new(0.1), {ImageColor3 = Color3.fromRGB(255,255,255)})
        
        frame2.MouseButton1Down:Connect(function()
            changeColorButton:Play()
            changeColorButtonText:Play()
            changeColorButtonIcon:Play()
            changeColorButtonTransparency:Play()
        end)
        
        local toggled = false
        
        frame2.MouseButton1Click:Connect(function()
            if toggled == false then
                changeColorButton:Play()
                changeColorButtonText:Play()
                changeColorButtonIcon:Play()
                changeColorButtonTransparency:Play()
                
                toggled = not toggled
                spawn(function()
                    pcall(ToggleTextWithIconConfig.Callback, toggled)
                end)
            else
                UNchangeColorButton:Play()
                UNchangeColorButtonText:Play()
                UNchangeColorButtonIcon:Play()
                UNchangeColorButtonTransparency:Play()
                
                toggled = false
                spawn(function()
                    pcall(ToggleTextWithIconConfig.Callback, toggled)
                end)
            end
        end)
    end 
    
    function topbar:CreatePushToggleTextWithIcon(TogglePushTextWithIconConfig) 
        TogglePushTextWithIconConfig.Icon = TogglePushTextWithIconConfig.Icon or "rbxassetid://10723374641"
        TogglePushTextWithIconConfig.Content = TogglePushTextWithIconConfig.Content or "Content"
        TogglePushTextWithIconConfig.Callback = TogglePushTextWithIconConfig.Callback or function() end
        
        local frame = Instance.new("Frame", game.CoreGui.TopBarApp.TopBarFrame.LeftFrame) 
        frame.LayoutOrder = 3 
        frame.BackgroundTransparency = 1 
        frame.Name = "__TopBarApp__PushToggleTextWithIcon__"
        
        local frame2 = Instance.new("TextButton", frame) 
        frame2.Size = UDim2.new(1, 0, 0, 32) 
        frame2.BorderSizePixel = 0 
        frame2.AnchorPoint = Vector2.new(0, 1) 
        frame2.Position = UDim2.new(0,0,0,0) 
        frame2.BackgroundColor3 = Color3.fromRGB(0,0,0) 
        frame2.BackgroundTransparency = 0.5 
        frame2.TextColor3 = Color3.fromRGB(255,255,255) 
        frame2.Text = "" 
        frame2.TextSize = 15
        frame2.AutoButtonColor = false
        frame2.ClipsDescendants = true
        
        local text = Instance.new("TextLabel", frame2) 
        text.Size = UDim2.new(1, -12, 1, 0) 
        text.AnchorPoint = Vector2.new(0,0) 
        text.Position = UDim2.new(2.3,0,0,0) 
        text.BackgroundTransparency = 1 
        text.Text = TogglePushTextWithIconConfig.Content 
        text.Font = "BuilderSansMedium"
        text.TextSize = 15 
        text.TextColor3 = Color3.fromRGB(255,255,255)
        
        frame.Size = UDim2.new(0, 33, 1, 0)
        
        local icon = Instance.new("ImageLabel", frame2) 
        icon.Size = UDim2.new(0, 15, 0, 15) 
        icon.Position = UDim2.new(0, 9, 0, 8) 
        icon.BackgroundTransparency = 1 
        icon.Image = TogglePushTextWithIconConfig.Icon
        icon.ImageColor3 = Color3.fromRGB(255,255,255)
        
        if TogglePushTextWithIconConfig.Icon == "" then
            icon.Image = "rbxassetid://10723374641"
            frame.Size = UDim2.new(0, 33, 1, 0)
        else
            text.Size = UDim2.new(1, -12, 1, 0) 
            frame.Size = UDim2.new(0, 33, 1, 0)
        end
        
        if TogglePushTextWithIconConfig.Content == "" then
            frame.Size = UDim2.new(0, 33, 1, 0)
        end
        
        
        TweenService:Create(frame2, TweenInfo.new(0.5), {Position = UDim2.new(0, 0, 1, 0)}):Play() 
        
        local uicorner = Instance.new("UICorner", frame2) 
        uicorner.CornerRadius = UDim.new(0,8) 
        
        local changeColorButton = TweenService:Create(frame2, TweenInfo.new(0.1), {BackgroundColor3 = Color3.fromRGB(233,233,233)})
        local changeColorButtonTransparency = TweenService:Create(frame2, TweenInfo.new(0.1), {BackgroundTransparency = 0})
        local changeColorButtonText = TweenService:Create(text, TweenInfo.new(0.1), {TextColor3 = Color3.fromRGB(10,10,10)})
        local changeColorButtonIcon = TweenService:Create(icon, TweenInfo.new(0.1), {ImageColor3 = Color3.fromRGB(10,10,10)})
        local changeSizeButton = TweenService:Create(frame, TweenInfo.new(0.1), {Size = UDim2.new(0, text.TextBounds.X + 45, 1, 0)})
        local changeSizeButtonText = TweenService:Create(text, TweenInfo.new(0.1), {Position = UDim2.new(0, 17, 0, 0)})
        
        local UNchangeColorButton = TweenService:Create(frame2, TweenInfo.new(0.1), {BackgroundColor3 = Color3.fromRGB(0,0,0)})
        local UNchangeColorButtonTransparency = TweenService:Create(frame2, TweenInfo.new(0.1), {BackgroundTransparency = 0.5})
        local UNchangeColorButtonText = TweenService:Create(text, TweenInfo.new(0.1), {TextColor3 = Color3.fromRGB(255,255,255)})
        local UNchangeColorButtonIcon = TweenService:Create(icon, TweenInfo.new(0.1), {ImageColor3 = Color3.fromRGB(255,255,255)})
        local UNchangeSizeButton = TweenService:Create(frame, TweenInfo.new(0.1), {Size = UDim2.new(0, 33, 1, 0)})
        local UNchangeSizeButtonText = TweenService:Create(text, TweenInfo.new(0.1), {Position = UDim2.new(2.3,0, 0, 0)})
        
        frame2.MouseButton1Down:Connect(function()
            changeColorButton:Play()
            changeColorButtonText:Play()
            changeColorButtonIcon:Play()
            changeColorButtonTransparency:Play()
            changeSizeButton:Play()
            changeSizeButtonText:Play()
        end)
        
        local toggled = false 
        
        frame2.MouseButton1Click:Connect(function()
            if toggled == false then
                changeColorButton:Play()
                changeColorButtonText:Play()
                changeColorButtonIcon:Play()
                changeColorButtonTransparency:Play()
                changeSizeButton:Play()
                changeSizeButtonText:Play()
                
                toggled = not toggled
                spawn(function()
                    pcall(TogglePushTextWithIconConfig.Callback, toggled)
                end)
                
            else
                UNchangeColorButton:Play()
                UNchangeColorButtonText:Play()
                UNchangeColorButtonIcon:Play()
                UNchangeColorButtonTransparency:Play()
                UNchangeSizeButton:Play()
                UNchangeSizeButtonText:Play()
                
                toggled = false
                spawn(function()
                    pcall(TogglePushTextWithIconConfig.Callback, toggled)
                end)
            end
        end)
    end
end
return topbar