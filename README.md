# RobloxTopBarApp

> 👤 - By .ftgs#0000 (discord)

## 🖼️ - Preview (.gif):
> <img src="preview.gif" alt="preview">

<hr>

## 📜 - Script (Example):

```lua
local TopBarApp = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlikSusFootages/RobloxTopBarApp/main/src/file.lua"))()
 
TopBarApp:CreateTextWithIcon({ Icon = "rbxassetid://10723426722", Content = "Label" })
 
TopBarApp:CreateButtonTextWithIcon({ Icon = "rbxassetid://10709768114", Content = "Button", Callback = function()
    print("Button Clicked")
end })
 
TopBarApp:CreatePushButtonTextWithIcon({ Icon = "", Content = "Push Button", Callback = function() -- If icon = "" then the file icon is automatically placed
    print("Push Button Clicked")
end })
```
