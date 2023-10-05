# RobloxTopBarApp

> 👤 - By .ftgs#0000 (discord)

## 🖼️ - Preview (.gif):
> <img src="preview.gif" alt="preview">

<hr>

## 📜 - Script (Example):

```lua
local TopBarApp = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlikSusFootages/RobloxTopBarApp/main/src/file.lua"))()

-- Label --
 
TopBarApp:CreateTextWithIcon({ Icon = "rbxassetid://10723426722", Content = "Label" })

-- ^^^^^ --

-- Button --
 
TopBarApp:CreateButtonTextWithIcon({ Icon = "rbxassetid://10709768114", Content = "Button", Callback = function()
    print("Button Clicked")
end })

-- ^^^^^^ --

-- Push Button --
 
TopBarApp:CreatePushButtonTextWithIcon({ Icon = "", Content = "Push Button", Callback = function() -- If icon = "" then the file icon is automatically placed
    print("Push Button Clicked")
end })

-- ^^^^ ^^^^^^ --

-- Toggle --

TopBarApp:CreateToggleTextWithIcon({ Icon="", Content="Toggle", Callback = function(state) 
    if state then
        print("Toggle on")
    else
        print("Toggle off")
    end
end })

-- ^^^^^^ --

-- Push Toggle --
 
TopBarApp:CreatePushToggleTextWithIcon({ Icon="", Content="Push Toggle", Callback = function(state) 
    if state then
        print("Push Toggle on")
    else
        print("Push Toggle off")
    end
end })

-- ^^^^ ^^^^^^ --
```


### ChangeLogs:

- 1.0.0:
  - Script Release!
  - Added Buttons with icon
  - Added Push Buttons with icon

- 1.0.1:
  - Added Toggle with icon
  - Added Push Toggle with icon
