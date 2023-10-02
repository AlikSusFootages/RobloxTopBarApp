# RobloxTopBarApp

by .ftgs#0000 (discord)

## Preview (.gif):
> <img src="https://cdn.discordapp.com/attachments/1137456381167935501/1158495908850319370/27_33CFADC.gif?ex=651c74e4&is=651b2364&hm=49ef8d19ccd7f767768c565b44a610b29e4d0d95ca5ae2d0c32a3648ce390229&" alt="preview">

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
