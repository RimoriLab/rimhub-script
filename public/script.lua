-- SCRIPT FINAL (GUI KEY + GUI UTAMA FULL)

local player = game:GetService("Players").LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- GUI KEY
local keyGui = Instance.new("ScreenGui")
keyGui.Name = "KeyGui"
keyGui.ResetOnSpawn = false
keyGui.Parent = playerGui

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 320, 0, 170)
mainFrame.Position = UDim2.new(0.5, -160, 0.5, -85)
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
mainFrame.BorderSizePixel = 0
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = keyGui

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0, 30)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "🔑 Enter Access Key"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 18
titleLabel.Parent = mainFrame

local keyInput = Instance.new("TextBox")
keyInput.Size = UDim2.new(0.9, 0, 0, 30)
keyInput.Position = UDim2.new(0.05, 0, 0.35, 0)
keyInput.PlaceholderText = "Enter your key here..."
keyInput.Text = ""
keyInput.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
keyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
keyInput.Font = Enum.Font.Gotham
keyInput.TextSize = 16
keyInput.Parent = mainFrame

local submitBtn = Instance.new("TextButton")
submitBtn.Size = UDim2.new(0.4, -5, 0, 30)
submitBtn.Position = UDim2.new(0.05, 0, 0.65, 0)
submitBtn.Text = "Submit"
submitBtn.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
submitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
submitBtn.Font = Enum.Font.GothamBold
submitBtn.TextSize = 16
submitBtn.Parent = mainFrame

local getKeyBtn = Instance.new("TextButton")
getKeyBtn.Size = UDim2.new(0.5, -5, 0, 30)
getKeyBtn.Position = UDim2.new(0.5, 0, 0.65, 0)
getKeyBtn.Text = "Get Key"
getKeyBtn.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
getKeyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
getKeyBtn.Font = Enum.Font.GothamBold
getKeyBtn.TextSize = 16
getKeyBtn.Parent = mainFrame

local instruction = Instance.new("TextLabel")
instruction.Size = UDim2.new(1, 0, 0, 20)
instruction.Position = UDim2.new(0, 0, 1, -20)
instruction.BackgroundTransparency = 1
instruction.Text = ""
instruction.TextColor3 = Color3.fromRGB(255, 255, 255)
instruction.Font = Enum.Font.Gotham
instruction.TextSize = 14
instruction.Parent = mainFrame

getKeyBtn.MouseButton1Click:Connect(function()
    local url = "https://loot-link.com/s?dL8DXHKC"
    if setclipboard then
        setclipboard(url)
        pcall(function()
            game.StarterGui:SetCore("SendNotification", {
                Title = "Link Copied!",
                Text = "Paste the link in your browser to get the key.",
                Duration = 5
            })
        end)
    else
        warn("Clipboard not supported on this executor.")
    end
end)

-- GUI UTAMA BARU
function createMainGUI()
    local mainGui = Instance.new("ScreenGui")
    mainGui.Name = "MainGui"
    mainGui.ResetOnSpawn = false
    mainGui.Parent = playerGui

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 300, 0, 400)
    frame.Position = UDim2.new(0.5, -150, 0.5, -200)
    frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    frame.BorderSizePixel = 0
    frame.Active = true
    frame.Draggable = true
    frame.Parent = mainGui

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, -70, 0, 30)
    title.Position = UDim2.new(0, 10, 0, 0)
    title.BackgroundTransparency = 1
    title.Text = "Rimhub | CAJT"
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.Font = Enum.Font.GothamBold
    title.TextSize = 20
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.Parent = frame

    local minimizeBtn = Instance.new("TextButton")
    minimizeBtn.Size = UDim2.new(0, 25, 0, 25)
    minimizeBtn.Position = UDim2.new(1, -60, 0, 3)
    minimizeBtn.Text = "-"
    minimizeBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    minimizeBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
    minimizeBtn.Font = Enum.Font.GothamBold
    minimizeBtn.TextSize = 18
    minimizeBtn.Parent = frame

    local closeBtn = Instance.new("TextButton")
    closeBtn.Size = UDim2.new(0, 25, 0, 25)
    closeBtn.Position = UDim2.new(1, -30, 0, 3)
    closeBtn.Text = "X"
    closeBtn.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
    closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    closeBtn.Font = Enum.Font.GothamBold
    closeBtn.TextSize = 18
    closeBtn.Parent = frame

    local rowHeight = 40
    local superAutoRow = Instance.new("Frame")
    superAutoRow.Size = UDim2.new(1, -20, 0, rowHeight)
    superAutoRow.Position = UDim2.new(0, 10, 0, 40)
    superAutoRow.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    superAutoRow.BorderSizePixel = 0
    superAutoRow.Parent = frame

    local featureLabel = Instance.new("TextLabel")
    featureLabel.Size = UDim2.new(1, -50, 1, 0)
    featureLabel.Position = UDim2.new(0, 10, 0, 0)
    featureLabel.BackgroundTransparency = 1
    featureLabel.Text = "Super Auto"
    featureLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    featureLabel.Font = Enum.Font.GothamBold
    featureLabel.TextSize = 20
    featureLabel.TextXAlignment = Enum.TextXAlignment.Left
    featureLabel.Parent = superAutoRow

    local toggle = Instance.new("TextButton")
    toggle.Size = UDim2.new(0, 30, 0, 30)
    toggle.Position = UDim2.new(1, -40, 0.5, -15)
    toggle.Text = ""
    toggle.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
    toggle.BorderSizePixel = 0
    toggle.Parent = superAutoRow

    local isAuto = false
    toggle.MouseButton1Click:Connect(function()
        isAuto = not isAuto
        toggle.BackgroundColor3 = isAuto and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(200, 0, 0)
        player.Setting.isAutoCllect.Value = isAuto and 1 or 0
    end)

    for i = 1, 6 do
        local row = Instance.new("Frame")
        row.Size = UDim2.new(1, -20, 0, rowHeight)
        row.Position = UDim2.new(0, 10, 0, 40 + (i * rowHeight))
        row.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
        row.BorderSizePixel = 0
        row.Parent = frame
    end

    local restoreBtn = Instance.new("TextButton")
    restoreBtn.Size = UDim2.new(0, 40, 0, 40)
    restoreBtn.Position = UDim2.new(0, 10, 0, 10)
    restoreBtn.Text = "+"
    restoreBtn.Visible = false
    restoreBtn.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
    restoreBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    restoreBtn.Font = Enum.Font.GothamBold
    restoreBtn.TextSize = 18
    restoreBtn.Parent = mainGui

    minimizeBtn.MouseButton1Click:Connect(function()
        frame.Visible = false
        restoreBtn.Visible = true
    end)

    restoreBtn.MouseButton1Click:Connect(function()
        frame.Visible = true
        restoreBtn.Visible = false
    end)

    closeBtn.MouseButton1Click:Connect(function()
        player.Setting.isAutoCllect.Value = 0
        mainGui:Destroy()
    end)
end

-- VALIDASI KEY
submitBtn.MouseButton1Click:Connect(function()
    local userKey = keyInput.Text
    if _G.ValidateKey then
        local valid = _G.ValidateKey(userKey)
        if valid then
            keyGui:Destroy()
            createMainGUI()
        else
            keyInput.Text = ""
            instruction.Text = "❌ Invalid key. Please try again."
            instruction.TextColor3 = Color3.fromRGB(255, 100, 100)
        end
    else
        warn("Key validation function is missing.")
    end
end)

-- SCRIPT BAGIAN 2
local currentKey = "rimhub666"
_G.ValidateKey = function(userKey)
    return userKey == currentKey
end
