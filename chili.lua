-- [[ HỆ THỐNG KEY SYSTEM - CHILI HUB V5 ]] --

local Link4M = "https://link4m.net/R8jhO" 
local MainScriptURL = "https://raw.githubusercontent.com/kadit9999/stealanegg/refs/heads/main/ChilliV5BaKhi.lua"
local CorrectKey = "CHILLIHUBV5-2026"

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")
local Title = Instance.new("TextLabel")

local KeyTextBox = Instance.new("TextBox")
local GetLinkBtn = Instance.new("TextButton")
local CheckKeyBtn = Instance.new("TextButton")
local SubTitle = Instance.new("TextLabel")

ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "ChiliV5KeySystem"

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 17, 26)
MainFrame.Position = UDim2.new(0.5, -180, 0.5, -130)
MainFrame.Size = UDim2.new(0, 360, 0, 260)
MainFrame.Active = true
MainFrame.Draggable = true

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = MainFrame

UIStroke.Parent = MainFrame
UIStroke.Color = Color3.fromRGB(255, 100, 50)
UIStroke.Thickness = 2

Title.Parent = MainFrame
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 15, 0, 15)
Title.Size = UDim2.new(1, -30, 0, 25)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "🌶️ CHILI HUB V5 - KEY SYSTEM"
Title.TextColor3 = Color3.fromRGB(255, 100, 50)
Title.TextSize = 18
Title.TextXAlignment = Enum.TextXAlignment.Left

KeyTextBox.Parent = MainFrame
KeyTextBox.BackgroundColor3 = Color3.fromRGB(25, 28, 40)
KeyTextBox.Position = UDim2.new(0, 15, 0, 55)
KeyTextBox.Size = UDim2.new(1, -30, 0, 40)
KeyTextBox.Font = Enum.Font.SourceSans
KeyTextBox.PlaceholderText = "Dán Key Chilli Hub V5 vào đây..."
KeyTextBox.Text = ""
KeyTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyTextBox.TextSize = 14

local KeyCorner = Instance.new("UICorner")
KeyCorner.CornerRadius = UDim.new(0, 8)
KeyCorner.Parent = KeyTextBox

GetLinkBtn.Parent = MainFrame
GetLinkBtn.BackgroundColor3 = Color3.fromRGB(255, 100, 50)
GetLinkBtn.Position = UDim2.new(0, 15, 0, 110)
GetLinkBtn.Size = UDim2.new(0, 160, 0, 40)
GetLinkBtn.Font = Enum.Font.SourceSansBold
GetLinkBtn.Text = "🔗 LẤY LINK KEY"
GetLinkBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
GetLinkBtn.TextSize = 14

local BtnCorner1 = Instance.new("UICorner")
BtnCorner1.CornerRadius = UDim.new(0, 8)
BtnCorner1.Parent = GetLinkBtn

CheckKeyBtn.Parent = MainFrame
CheckKeyBtn.BackgroundColor3 = Color3.fromRGB(45, 48, 65)
CheckKeyBtn.Position = UDim2.new(1, -175, 0, 110)
CheckKeyBtn.Size = UDim2.new(0, 160, 0, 40)
CheckKeyBtn.Font = Enum.Font.SourceSansBold
CheckKeyBtn.Text = "✔ KIỂM TRA KEY"
CheckKeyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CheckKeyBtn.TextSize = 14

local BtnCorner2 = Instance.new("UICorner")
BtnCorner2.CornerRadius = UDim.new(0, 8)
BtnCorner2.Parent = CheckKeyBtn

SubTitle.Parent = MainFrame
SubTitle.BackgroundTransparency = 1
SubTitle.Position = UDim2.new(0, 15, 0, 170)
SubTitle.Size = UDim2.new(1, -30, 0, 60)
SubTitle.Font = Enum.Font.SourceSans
SubTitle.Text = "Bấm 'LẤY LINK KEY' để vượt link Link4M.\nSau khi có Key, dán vào ô trên và bấm 'KIỂM TRA KEY'."
SubTitle.TextColor3 = Color3.fromRGB(150, 160, 180)
SubTitle.TextSize = 13
SubTitle.TextWrapped = true

GetLinkBtn.MouseButton1Click:Connect(function()
    setclipboard(Link4M)
    GetLinkBtn.Text = "✓ ĐÃ COPY LINK!"
    task.wait(2)
    GetLinkBtn.Text = "🔗 LẤY LINK KEY"
end)

CheckKeyBtn.MouseButton1Click:Connect(function()
    local userKey = string.gsub(KeyTextBox.Text, "%s+", "")
    
    if userKey == CorrectKey then
        CheckKeyBtn.Text = "✓ KEY CHÍNH XÁC!"
        CheckKeyBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 100)
        task.wait(1)
        
        ScreenGui:Destroy()
        loadstring(game:HttpGet(MainScriptURL))()
    else
        CheckKeyBtn.Text = "❌ SAI KEY CHILI!"
        CheckKeyBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
        task.wait(1.5)
        CheckKeyBtn.Text = "✔ KIỂM TRA KEY"
        CheckKeyBtn.BackgroundColor3 = Color3.fromRGB(45, 48, 65)
    end
end)
