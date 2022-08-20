local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/python1111111111111/pololib/main/PoloLib.lua"))()

local window = library:CreateWindow("Moss Hub", "By corekid", Enum.Font.Arcade)
local Utility = window:CreateSection("Utility")
local MessageBox = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/NotificationGUI/main/source.lua"))()
local started = Instance.new("Sound", workspace)
started.SoundId = "rbxassetid://4239729823"
started:Play()
MessageBox.Show({Position = UDim2.new(0.5,0,0.5,0), Text = "Notification", Description = "Do you want to join the moss hub discord?", MessageBoxIcon = "Question", MessageBoxButtons = "YesNo", Result = function(res)
   if (res == "Yes") then
   	   setclipboard("https://discord.io/mosshub")
       MessageBox.Show({MessageBoxButtons = "OK", Description = "Discord invite copied to clipboard", Text = "Copied to clipboard!"})
   end
end})

-- Util Scripts
 
window:CreateButton("Velocity", Utility, function()
for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
    if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
    game:GetService("RunService").Heartbeat:connect(function()
    v.Velocity = Vector3.new(-30,0,0)
    end)
    end
    end
    
    game:GetService("StarterGui"):SetCore("SendNotification", { 
        Title = "Netless Loaded";
        Text = "8)";
        Icon = "rbxassetid://6792465953"})
    Duration = 16;



end)
window:CreateButton("Walk Speed", Utility, function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
end)

window:CreateButton("Reset", Utility, function()
pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Players.LocalPlayer.Character.Humanoid.Health = 0
while game.Players.LocalPlayer.Character.Humanoid.Health == 0 do
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end
end)
-- R6 Scripts 

local R6Scripts = window:CreateSection("R6 Scripts")

window:CreateButton("FE Punch", R6Scripts, function()
loadstring(game:HttpGet("https://pastebin.com/raw/YmjW2qU8"))()
end)

window:CreateButton("FE Krystal Dance", R6Scripts, function()
loadstring(game:HttpGet("https://paste.ee/r/WEpYy"))()
end)

window:CreateButton("FE Memeus", R6Scripts, function()
loadstring(game:HttpGet("https://paste.ee/r/vXNvV"))()
end)

local HatScripts = window:CreateSection("Hat Scripts")

window:CreateButton("FE Hat Clone (NW)", HatScripts, function()
loadstring(game:HttpGet("https://pastebin.com/raw/sz08ReqZ"))()
end)

local R15Scripts = window:CreateSection("R15 Scripts")

window:CreateButton("FE Big Boy (RTHRO)", R15Scripts, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/python1111111111111/pololib/main/big.lua"))()
end)
