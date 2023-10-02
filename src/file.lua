 local topbar = {} 
  
 function topbar:CreateTextWithIcon(TextWithIconConfig) 
     TextWithIconConfig.Icon = TextWithIconConfig.Icon or ""
     TextWithIconConfig.Content = TextWithIconConfig.Content or "Content"
  
     local frame = Instance.new("Frame", game.CoreGui.TopBarApp.TopBarFrame.LeftFrame) 
     frame.LayoutOrder = 3 
     frame.BackgroundTransparency = 1 
     frame.Name = "__TopBarApp__TextWithIcon__"
  
     local TweenService = game:GetService("TweenService") 
  
     game.CoreGui.TopBarApp.TopBarFrame.LeftFrame.ChatIcon.Size = UDim2.new(0, 32, 1, 0) 
  
  
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
     text.Font = "Gotham"
     text.TextSize = 15 
     text.TextColor3 = Color3.fromRGB(255,255,255)
     
     frame.Size = UDim2.new(0, text.TextBounds.X + 30, 1, 0)
     
     if TextWithIconConfig.Icon == "" then
     
     else
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
  
     local anim = TweenService:Create(frame2, TweenInfo.new(0.5), {Position = UDim2.new(0, 0, 1, 0)}) 
  
     anim:Play() 
  
     local uicorner = Instance.new("UICorner", frame2) 
     uicorner.CornerRadius = UDim.new(0,8) 
 end 
 
 function topbar:CreateButtonTextWithIcon(ButtonTextWithIconConfig) 
     ButtonTextWithIconConfig.Icon = ButtonTextWithIconConfig.Icon or ""
     ButtonTextWithIconConfig.Content = ButtonTextWithIconConfig.Content or "Content"
     ButtonTextWithIconConfig.Callback = ButtonTextWithIconConfig.Callback or function() end
  
     local frame = Instance.new("Frame", game.CoreGui.TopBarApp.TopBarFrame.LeftFrame) 
     frame.LayoutOrder = 3 
     frame.BackgroundTransparency = 1 
     frame.Name = "__TopBarApp__ButtonTextWithIcon__"
  
     local TweenService = game:GetService("TweenService") 
  
     game.CoreGui.TopBarApp.TopBarFrame.LeftFrame.ChatIcon.Size = UDim2.new(0, 32, 1, 0) 
  
  
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
     text.Text = ButtonTextWithIconConfig.Content 
     text.Font = "Gotham"
     text.TextSize = 15 
     text.TextColor3 = Color3.fromRGB(255,255,255)
     
     frame.Size = UDim2.new(0, text.TextBounds.X + 30, 1, 0)
     
     if ButtonTextWithIconConfig.Icon == "" then
     
     else
         text.Size = UDim2.new(1, -12, 1, 0) 
         frame.Size = UDim2.new(0, text.TextBounds.X + 45, 1, 0)
     end
     
     if ButtonTextWithIconConfig.Content == "" then
         frame.Size = UDim2.new(0, 33, 1, 0)
     end
  
     local icon = Instance.new("ImageLabel", frame2) 
     icon.Size = UDim2.new(0, 15, 0, 15) 
     icon.Position = UDim2.new(0, 9, 0, 8) 
     icon.BackgroundTransparency = 1 
     icon.Image = ButtonTextWithIconConfig.Icon
     icon.ImageColor3 = Color3.fromRGB(255,255,255)
  
     local anim = TweenService:Create(frame2, TweenInfo.new(0.5), {Position = UDim2.new(0, 0, 1, 0)}) 
  
     anim:Play() 
  
     local uicorner = Instance.new("UICorner", frame2) 
     uicorner.CornerRadius = UDim.new(0,8) 
     
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
     
     frame2.MouseButton1Up:Connect(function()
         UNchangeColorButton:Play()
         UNchangeColorButtonText:Play()
         UNchangeColorButtonIcon:Play()
         UNchangeColorButtonTransparency:Play()
     end)
     
     frame2.MouseButton1Click:Connect(function()
         ButtonTextWithIconConfig.Callback()
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
  
     local TweenService = game:GetService("TweenService") 
  
     game.CoreGui.TopBarApp.TopBarFrame.LeftFrame.ChatIcon.Size = UDim2.new(0, 32, 1, 0) 
  
  
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
     text.Font = "Gotham"
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
  
  
     local anim = TweenService:Create(frame2, TweenInfo.new(0.5), {Position = UDim2.new(0, 0, 1, 0)}) 
  
     anim:Play() 
  
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
     
     frame2.MouseButton1Up:Connect(function()
         UNchangeColorButton:Play()
         UNchangeColorButtonText:Play()
         UNchangeColorButtonIcon:Play()
         UNchangeColorButtonTransparency:Play()
         UNchangeSizeButton:Play()
         UNchangeSizeButtonText:Play()
     end)
     
     frame2.MouseButton1Click:Connect(function()
         ButtonPushTextWithIconConfig.Callback()
     end)
 end 
 
 topbar:CreateTextWithIcon({ Icon = "rbxassetid://10747376722", Content = "Hey" })
 
 topbar:CreateButtonTextWithIcon({ Icon = "rbxassetid://10734898592", Content = "", Callback = function()
     print("hello")
 end })
 
 topbar:CreatePushButtonTextWithIcon({ Icon = "", Content = "bimbimbambam", Callback = function()
     print("BIMBIMBAMBAM")
 end })
 
 
