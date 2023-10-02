# RobloxTopBarApp

by .ftgs#0000 (discord)

## Preview (.gif):
> <img src="https://cdn.discordapp.com/attachments/1137456381167935501/1158496270420295720/preview.gif?ex=651c753a&is=651b23ba&hm=2d4ea98194aa887fc9ed4f18992598493b00f87df710f195cf10e31da92ecbe0&" alt="preview">
## Script (Example):

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
