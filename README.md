# RobloxTopBarApp

by .ftgs#0000 (discord)

## Preview (.gif):
> <img src="https://cdn.discordapp.com/attachments/810891979147313184/1158495225346523256/27_33CFADC.gif?ex=651c7441&is=651b22c1&hm=ce8def46518293b1182159e96489239af1e991b48152119fa99c715c1af40870&" alt="preview">

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
