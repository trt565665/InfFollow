local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local Underline = Instance.new("Frame")
local InputFrame = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local UsernameInput = Instance.new("TextBox")
local SearchIcon = Instance.new("ImageLabel")
local SuggestionsFrame = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local UIListLayout = Instance.new("UIListLayout")
local GoButton = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local SelectedUserFrame = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local SelectedAvatar = Instance.new("ImageLabel")
local UICorner_6 = Instance.new("UICorner")
local SelectedUsername = Instance.new("TextLabel")
local StatusLabel = Instance.new("TextLabel")

-- Add toggle notification
local ToggleNotification = Instance.new("Frame")
local ToggleNotificationText = Instance.new("TextLabel")
local ToggleNotificationUICorner = Instance.new("UICorner")

-- Add Random button
local RandomButton = Instance.new("TextButton")
local RandomButtonUICorner = Instance.new("UICorner")

-- Add distance follow slider
local DistanceFrame = Instance.new("Frame")
local DistanceLabel = Instance.new("TextLabel")
local DistanceSlider = Instance.new("TextButton")
local SliderFill = Instance.new("Frame")
local DistanceValue = Instance.new("TextLabel")

local success, errorMsg = pcall(function()
    ScreenGui.Parent = game.CoreGui
end)

if not success then
    -- Fallback to PlayerGui if CoreGui fails (happens in some exploits)
    pcall(function()
        ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    end)
end

ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Create toggle notification
ToggleNotification.Name = "ToggleNotification"
ToggleNotification.Parent = ScreenGui
ToggleNotification.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
ToggleNotification.Position = UDim2.new(0.5, -150, 0, 20)
ToggleNotification.Size = UDim2.new(0, 300, 0, 40)
ToggleNotification.BorderSizePixel = 0
ToggleNotification.BackgroundTransparency = 0.2

ToggleNotificationUICorner.CornerRadius = UDim.new(0, 8)
ToggleNotificationUICorner.Parent = ToggleNotification

ToggleNotificationText.Name = "ToggleNotificationText"
ToggleNotificationText.Parent = ToggleNotification
ToggleNotificationText.BackgroundTransparency = 1
ToggleNotificationText.Position = UDim2.new(0, 0, 0, 0)
ToggleNotificationText.Size = UDim2.new(1, 0, 1, 0)
ToggleNotificationText.Font = Enum.Font.GothamSemibold
ToggleNotificationText.Text = "Toggle to open menu > Right Control"
ToggleNotificationText.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleNotificationText.TextSize = 16

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
MainFrame.Position = UDim2.new(0.5, -325, 0.5, -195)
MainFrame.Size = UDim2.new(0, 650, 0, 390)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Visible = false -- Hide menu by default

UICorner.Parent = MainFrame
UICorner.CornerRadius = UDim.new(0, 10)

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.5, -299, 0, 20)
Title.Size = UDim2.new(0, 598, 0, 39)
Title.Font = Enum.Font.GothamBold
Title.Text = "Infinite Follower"
Title.TextColor3 = Color3.fromRGB(240, 240, 240)
Title.TextSize = 31.000
Title.TextXAlignment = Enum.TextXAlignment.Center

Underline.Name = "Underline"
Underline.Parent = MainFrame
Underline.BackgroundColor3 = Color3.fromRGB(70, 90, 220)
Underline.Position = UDim2.new(0, 26, 0, 65)
Underline.Size = UDim2.new(0, 598, 0, 3)

InputFrame.Name = "InputFrame"
InputFrame.Parent = MainFrame
InputFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 50)
InputFrame.Position = UDim2.new(0, 26, 0, 91)
InputFrame.Size = UDim2.new(0, 520, 0, 52) -- Reduced width to make room for Random button

UICorner_2.Parent = InputFrame
UICorner_2.CornerRadius = UDim.new(0, 8)

UsernameInput.Name = "UsernameInput"
UsernameInput.Parent = InputFrame
UsernameInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UsernameInput.BackgroundTransparency = 1.000
UsernameInput.Position = UDim2.new(0, 52, 0, 0)
UsernameInput.Size = UDim2.new(0, 546, 0, 52)
UsernameInput.Font = Enum.Font.Gotham
UsernameInput.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
UsernameInput.PlaceholderText = "Enter target name..."
UsernameInput.Text = ""
UsernameInput.TextColor3 = Color3.fromRGB(240, 240, 240)
UsernameInput.TextSize = 21.000
UsernameInput.TextXAlignment = Enum.TextXAlignment.Left

SearchIcon.Name = "SearchIcon"
SearchIcon.Parent = InputFrame
SearchIcon.BackgroundTransparency = 1.000
SearchIcon.Position = UDim2.new(0, 13, 0, 13)
SearchIcon.Size = UDim2.new(0, 26, 0, 26)
SearchIcon.Image = "rbxassetid://3926305904"
SearchIcon.ImageRectOffset = Vector2.new(964, 324)
SearchIcon.ImageRectSize = Vector2.new(36, 36)
SearchIcon.ImageColor3 = Color3.fromRGB(150, 150, 150)

SuggestionsFrame.Name = "SuggestionsFrame"
SuggestionsFrame.Parent = MainFrame
SuggestionsFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
SuggestionsFrame.Position = UDim2.new(0, 26, 0, 150)
SuggestionsFrame.Size = UDim2.new(0, 598, 0, 156)
SuggestionsFrame.Visible = false
SuggestionsFrame.ZIndex = 5
SuggestionsFrame.ClipsDescendants = true

-- Create a separate function to check if mouse is over frame
local function IsMouseInBounds(frame)
    local mouse = game:GetService("UserInputService"):GetMouseLocation()
    local framePos = frame.AbsolutePosition
    local frameSize = frame.AbsoluteSize
    
    return (mouse.X >= framePos.X and mouse.X <= framePos.X + frameSize.X and
            mouse.Y >= framePos.Y and mouse.Y <= framePos.Y + frameSize.Y)
end

UICorner_3.Parent = SuggestionsFrame
UICorner_3.CornerRadius = UDim.new(0, 8)

UIListLayout.Parent = SuggestionsFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 2)

SelectedUserFrame.Name = "SelectedUserFrame"
SelectedUserFrame.Parent = MainFrame
SelectedUserFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 50)
SelectedUserFrame.Position = UDim2.new(0, 26, 0, 169)
SelectedUserFrame.Size = UDim2.new(0, 416, 0, 91)
SelectedUserFrame.Visible = false

UICorner_5.Parent = SelectedUserFrame
UICorner_5.CornerRadius = UDim.new(0, 8)

SelectedAvatar.Name = "SelectedAvatar"
SelectedAvatar.Parent = SelectedUserFrame
SelectedAvatar.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
SelectedAvatar.Position = UDim2.new(0, 13, 0, 13)
SelectedAvatar.Size = UDim2.new(0, 65, 0, 65)
SelectedAvatar.Image = ""

UICorner_6.Parent = SelectedAvatar
UICorner_6.CornerRadius = UDim.new(0, 8)

SelectedUsername.Name = "SelectedUsername"
SelectedUsername.Parent = SelectedUserFrame
SelectedUsername.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SelectedUsername.BackgroundTransparency = 1.000
SelectedUsername.Position = UDim2.new(0, 91, 0, 13)
SelectedUsername.Size = UDim2.new(0, 312, 0, 39)
SelectedUsername.Font = Enum.Font.GothamSemibold
SelectedUsername.Text = ""
SelectedUsername.TextColor3 = Color3.fromRGB(240, 240, 240)
SelectedUsername.TextSize = 21.000
SelectedUsername.TextXAlignment = Enum.TextXAlignment.Left

GoButton.Name = "GoButton"
GoButton.Parent = MainFrame
GoButton.BackgroundColor3 = Color3.fromRGB(70, 90, 220)
GoButton.Position = UDim2.new(0, 455, 0, 169)
GoButton.Size = UDim2.new(0, 169, 0, 91)
GoButton.Font = Enum.Font.GothamBold
GoButton.Text = "GO"
GoButton.TextColor3 = Color3.fromRGB(240, 240, 240)
GoButton.TextSize = 31.000

UICorner_4.Parent = GoButton
UICorner_4.CornerRadius = UDim.new(0, 8)

-- Set up distance follow slider
DistanceFrame.Name = "DistanceFrame"
DistanceFrame.Parent = MainFrame
DistanceFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 50)
DistanceFrame.Position = UDim2.new(0, 26, 0, 273)
DistanceFrame.Size = UDim2.new(0, 598, 0, 52)
DistanceFrame.Visible = true

DistanceLabel.Name = "DistanceLabel"
DistanceLabel.Parent = DistanceFrame
DistanceLabel.BackgroundTransparency = 1
DistanceLabel.Position = UDim2.new(0, 13, 0, 0)
DistanceLabel.Size = UDim2.new(0, 156, 0, 52)
DistanceLabel.Font = Enum.Font.GothamSemibold
DistanceLabel.Text = "Distance follow:"
DistanceLabel.TextColor3 = Color3.fromRGB(240, 240, 240)
DistanceLabel.TextSize = 18.000
DistanceLabel.TextXAlignment = Enum.TextXAlignment.Left

DistanceSlider.Name = "DistanceSlider"
DistanceSlider.Parent = DistanceFrame
DistanceSlider.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
DistanceSlider.Position = UDim2.new(0, 182, 0, 20)
DistanceSlider.Size = UDim2.new(0, 325, 0, 13)
DistanceSlider.Text = ""
DistanceSlider.AutoButtonColor = false

SliderFill.Name = "SliderFill"
SliderFill.Parent = DistanceSlider
SliderFill.BackgroundColor3 = Color3.fromRGB(70, 90, 220)
SliderFill.Size = UDim2.new(0.1, 0, 1, 0) -- 10% filled by default (5 out of 50)

DistanceValue.Name = "DistanceValue"
DistanceValue.Parent = DistanceFrame
DistanceValue.BackgroundTransparency = 1
DistanceValue.Position = UDim2.new(0, 520, 0, 0)
DistanceValue.Size = UDim2.new(0, 65, 0, 52)
DistanceValue.Font = Enum.Font.GothamSemibold
DistanceValue.Text = "5/50"
DistanceValue.TextColor3 = Color3.fromRGB(240, 240, 240)
DistanceValue.TextSize = 18.000
DistanceValue.TextXAlignment = Enum.TextXAlignment.Right

-- Add UICorner to slider elements
local SliderCorner = Instance.new("UICorner")
SliderCorner.Parent = DistanceSlider
SliderCorner.CornerRadius = UDim.new(0, 5)

local FillCorner = Instance.new("UICorner")
FillCorner.Parent = SliderFill
FillCorner.CornerRadius = UDim.new(0, 5)

-- Add UICorner to DistanceFrame
local DistanceFrameCorner = Instance.new("UICorner")
DistanceFrameCorner.Parent = DistanceFrame
DistanceFrameCorner.CornerRadius = UDim.new(0, 8)

StatusLabel.Name = "StatusLabel"
StatusLabel.Parent = MainFrame
StatusLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
StatusLabel.BackgroundTransparency = 1.000
StatusLabel.Position = UDim2.new(0, 26, 0, 338)
StatusLabel.Size = UDim2.new(0, 598, 0, 39)
StatusLabel.Font = Enum.Font.Gotham
StatusLabel.Text = "Ready to follow"
StatusLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
StatusLabel.TextSize = 21.000

-- Services
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local PathfindingService = game:GetService("PathfindingService")
local selectedUser = nil
local isFollowing = false
local LocalPlayer = nil
local menuVisible = false -- Track menu visibility

-- Try to get LocalPlayer safely
pcall(function()
    LocalPlayer = Players.LocalPlayer
end)

-- Update status text function
local function UpdateStatus(text, color)
    if StatusLabel then
        StatusLabel.Text = tostring(text)
        if color then
            StatusLabel.TextColor3 = color
        end
    end
end

-- Initialize menu
spawn(function()
    wait(1)
    UpdateStatus("Ready", Color3.fromRGB(200, 200, 200))
    
    -- Make sure UI is set up correctly
    pcall(function()
        SuggestionsFrame.Visible = false
        SelectedUserFrame.Visible = false
        MainFrame.Visible = false -- Hide main menu by default
        ToggleNotification.Visible = true -- Show toggle notification
        
        -- Hide notification after 5 seconds
        spawn(function()
            wait(5)
            ToggleNotification.Visible = false
        end)
    end)
    
    -- Add a subtle animation to the toggle notification
    spawn(function()
        while wait(1) do
            pcall(function()
                if not ToggleNotification.Visible then return end
                
                for i = 0, 1, 0.1 do
                    if not ToggleNotification or not ToggleNotification.Parent or not ToggleNotification.Visible then break end
                    ToggleNotification.BackgroundTransparency = 0.2 + (i * 0.3)
                    wait(0.05)
                end
                
                for i = 0, 1, 0.1 do
                    if not ToggleNotification or not ToggleNotification.Parent or not ToggleNotification.Visible then break end
                    ToggleNotification.BackgroundTransparency = 0.5 - (i * 0.3)
                    wait(0.05)
                end
            end)
        end
    end)
    
    -- Add a subtle animation to the input field to draw attention
    spawn(function()
        for i = 1, 3 do
            pcall(function()
                local originalColor = InputFrame.BackgroundColor3
                local highlightColor = Color3.fromRGB(70, 90, 220)
                
                for j = 0, 1, 0.1 do
                    InputFrame.BackgroundColor3 = originalColor:Lerp(highlightColor, j)
                    wait(0.02)
                end
                
                for j = 0, 1, 0.1 do
                    InputFrame.BackgroundColor3 = highlightColor:Lerp(originalColor, j)
                    wait(0.02)
                end
                
                wait(0.5)
            end)
        end
    end)
end)

-- Create a suggestion item template
local function CreateSuggestionItem(username, userId, displayName)
    -- Wrap in pcall to catch any errors
    local success, result = pcall(function()
        local SuggestionItem = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")
        local Avatar = Instance.new("ImageLabel")
        local UICorner_Avatar = Instance.new("UICorner")
        local Username = Instance.new("TextLabel")
        local DisplayName = Instance.new("TextLabel")
        local DistanceLabel = Instance.new("TextLabel")
        
        SuggestionItem.Name = "SuggestionItem_" .. username
        SuggestionItem.BackgroundColor3 = Color3.fromRGB(50, 50, 55)
        SuggestionItem.Size = UDim2.new(0, 460, 0, 60)
        
        UICorner.Parent = SuggestionItem
        UICorner.CornerRadius = UDim.new(0, 6)
        
        Avatar.Name = "Avatar"
        Avatar.Parent = SuggestionItem
        Avatar.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
        Avatar.Position = UDim2.new(0, 10, 0, 5)
        Avatar.Size = UDim2.new(0, 50, 0, 50)
        
        -- Try to load the user's avatar
        pcall(function()
            Avatar.Image = Players:GetUserThumbnailAsync(userId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
        end)
        
        -- Fallback if avatar loading fails
        if not Avatar.Image or Avatar.Image == "" then
            Avatar.Image = "rbxassetid://7962146544"
        end
        
        UICorner_Avatar.Parent = Avatar
        UICorner_Avatar.CornerRadius = UDim.new(0, 6)
        
        -- Calculate distance to player if they're in game
        local distanceText = ""
        pcall(function()
            local targetPlayer = nil
            for _, player in pairs(Players:GetPlayers()) do
                if player.Name == username then
                    targetPlayer = player
                    break
                end
            end
            
            if targetPlayer and LocalPlayer and 
               LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
               targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                local distance = (LocalPlayer.Character.HumanoidRootPart.Position - targetPlayer.Character.HumanoidRootPart.Position).Magnitude
                distanceText = math.floor(distance) .. " studs"
            end
        end)
        
        -- Display distance if available
        if distanceText ~= "" then
            DistanceLabel = Instance.new("TextLabel")
            DistanceLabel.Name = "DistanceLabel"
            DistanceLabel.Parent = SuggestionItem
            DistanceLabel.BackgroundTransparency = 1
            DistanceLabel.Position = UDim2.new(0.75, 0, 0, 20)
            DistanceLabel.Size = UDim2.new(0.25, -10, 0, 20)
            DistanceLabel.Font = Enum.Font.Gotham
            DistanceLabel.Text = distanceText
            DistanceLabel.TextColor3 = Color3.fromRGB(150, 200, 255)
            DistanceLabel.TextSize = 14
            DistanceLabel.TextXAlignment = Enum.TextXAlignment.Right
        end
        
        -- If we have a display name that's different from username, show both
        if displayName and displayName ~= "" and displayName:lower() ~= username:lower() then
            -- Display name (larger text)
            DisplayName = Instance.new("TextLabel")
            DisplayName.Name = "DisplayName"
            DisplayName.Parent = SuggestionItem
            DisplayName.BackgroundTransparency = 1
            DisplayName.Position = UDim2.new(0, 70, 0, 8)
            DisplayName.Size = UDim2.new(0, 280, 0, 25)
            DisplayName.Font = Enum.Font.GothamBold
            DisplayName.Text = displayName
            DisplayName.TextColor3 = Color3.fromRGB(240, 240, 240)
            DisplayName.TextSize = 16
            DisplayName.TextXAlignment = Enum.TextXAlignment.Left
            
            -- Username (smaller text below display name)
            Username.Name = "Username"
            Username.Parent = SuggestionItem
            Username.BackgroundTransparency = 1
            Username.Position = UDim2.new(0, 70, 0, 33)
            Username.Size = UDim2.new(0, 280, 0, 20)
            Username.Font = Enum.Font.Gotham
            Username.Text = "@" .. username
            Username.TextColor3 = Color3.fromRGB(180, 180, 180)
            Username.TextSize = 14
            Username.TextXAlignment = Enum.TextXAlignment.Left
        else
            -- Just show username if no display name or they're the same
            Username.Name = "Username"
            Username.Parent = SuggestionItem
            Username.BackgroundTransparency = 1
            Username.Position = UDim2.new(0, 70, 0, 0)
            Username.Size = UDim2.new(0, 280, 0, 60)
            Username.Font = Enum.Font.GothamSemibold
            Username.Text = username
            Username.TextColor3 = Color3.fromRGB(240, 240, 240)
            Username.TextSize = 16
            Username.TextXAlignment = Enum.TextXAlignment.Left
        end
        
        -- Add a highlight effect on hover
        SuggestionItem.MouseEnter:Connect(function()
            SuggestionItem.BackgroundColor3 = Color3.fromRGB(70, 90, 220)
        end)
        
        SuggestionItem.MouseLeave:Connect(function()
            SuggestionItem.BackgroundColor3 = Color3.fromRGB(50, 50, 55)
        end)
        
        -- Click event
        SuggestionItem.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                selectedUser = {username = username, userId = userId, displayName = displayName}
                
                -- Update selected user display
                pcall(function()
                    if SelectedUserFrame and SelectedUsername and SelectedAvatar then
                        SelectedUserFrame.Visible = true
                        
                        -- Show display name if available, otherwise username
                        if displayName and displayName ~= "" and displayName:lower() ~= username:lower() then
                            SelectedUsername.Text = displayName .. " (@" .. username .. ")"
                        else
                            SelectedUsername.Text = username
                        end
                        
                        SelectedAvatar.Image = Avatar.Image
                    end
                end)
                
                -- Hide suggestions
                SuggestionsFrame.Visible = false
                
                -- Update status
                StatusLabel.Text = "Selected target: " .. username
            end
        end)
        
        return SuggestionItem
    end)
    
    if success then
        return result
    else
        StatusLabel.Text = "Ошибка создания элемента: " .. tostring(result)
        return nil
    end
end

-- Variables for improved navigation
local navigationAttempts = 0
local lastNavigationDirection = nil
local pathfindingCooldown = 0
local navigationTimeout = 0
local alternatePathAttempts = 0
local wallDetectionDistance = 5
local targetSpeedMultiplier = 1.2 -- Increased base speed multiplier (was 1.1)
local minSpeedAdvantage = 4 -- Minimum speed advantage over target in studs/sec
local maxBotSpeed = 60 -- Maximum bot speed (was 50)
local lastTargetPosition = Vector3.new(0,0,0)
local targetVelocity = Vector3.new(0,0,0)
local targetSpeed = 0
local voidCheckCooldown = 0
local teleportCooldown = 0
local isInVoid = false
local voidYThreshold = -100 -- Y position below which is considered void
local targetLostTime = 0
local targetLostTimeout = 5 -- Seconds to wait before considering target lost
local sittingCheckCooldown = 0

-- Advanced movement prediction variables
local targetPositionHistory = {} -- Store last 10 positions
local targetPositionHistoryLimit = 10
local targetVelocityHistory = {} -- Store last 5 velocity vectors
local targetVelocityHistoryLimit = 5
local targetAcceleration = Vector3.new(0, 0, 0)
local targetDirectionChangeHistory = {} -- Store direction changes
local targetDirectionChangeLimit = 5
local lastTargetDirection = Vector3.new(0, 0, 0)
local predictionTimeMultiplier = 0.5 -- How far ahead to predict (in seconds)
local adaptiveFollowDistance = false -- Disabled automatic follow distance adjustment
local minFollowDistance = 3
local maxAdaptiveFollowDistance = 20
local environmentDangerLevel = 0 -- 0-10 scale of current environment danger
local lastTerrainCheck = 0
local terrainCheckInterval = 1
local terrainSamplePoints = 8 -- Number of points to check around the bot
local terrainSampleRadius = 15 -- Radius to check for dangerous terrain

-- Advanced steering behavior variables
local steeringBehaviorWeight = 0.5 -- How much steering behavior influences movement
local avoidanceWeight = 0.7 -- Weight for obstacle avoidance
local seekWeight = 1.0 -- Weight for seeking target
local pathWeight = 0.8 -- Weight for following path
local predictionWeight = 0.6 -- Weight for prediction
local maxSteeringForce = 10 -- Maximum steering force
local lastSteeringVector = Vector3.new(0, 0, 0)

-- Pathfinding variables
local currentPath = nil
local isUsingPathfinding = false
local currentWaypoint = nil
local currentWaypointIndex = 0
local pathUpdateCooldown = 0
local pathUpdateInterval = 1 -- Update path every 1 second when needed
local pathfindingMaxDistance = 100 -- Maximum distance for pathfinding
local pathfindingAgentParameters = {
    AgentRadius = 2,
    AgentHeight = 5,
    AgentCanJump = true,
    WaypointSpacing = 4
}
local lastMoveToTime = 0
local moveToInterval = 0.2 -- Minimum time between MoveTo calls
local waypointStuckTime = 0
local waypointStuckTimeout = 3 -- Seconds before considering waypoint navigation stuck
local lastWaypointIndex = 0
local pathBlockedCheckInterval = 0.5
local lastPathBlockedCheck = 0

-- Function to create a new path
local function CreateNewPath(start, goal)
    pcall(function()
        -- Clean up existing path
        if currentPath then
            currentPath:Destroy()
            currentPath = nil
        end
        
        -- Create a new path
        currentPath = PathfindingService:CreatePath(pathfindingAgentParameters)
        
        -- Reset waypoint tracking variables
        waypointStuckTime = 0
        lastWaypointIndex = 0
        lastPathBlockedCheck = tick()
        
        -- Compute the path
        local success, err = pcall(function()
            currentPath:ComputeAsync(start, goal)
        end)
        
        if not success then
            UpdateStatus("Pathfinding error: " .. tostring(err), Color3.fromRGB(255, 100, 100))
            isUsingPathfinding = false
            return false
        end
        
        -- Check if path is valid
        if currentPath.Status == Enum.PathStatus.Success then
            -- Get waypoints
            local waypoints = currentPath:GetWaypoints()
            
            if #waypoints > 1 then
                isUsingPathfinding = true
                currentWaypointIndex = 2 -- Start from second waypoint (first is start position)
                currentWaypoint = waypoints[currentWaypointIndex]
                
                -- Connect to Blocked event
                currentPath.Blocked:Connect(function(blockedWaypointIndex)
                    if isUsingPathfinding and currentPath then
                        UpdateStatus("Path blocked - recalculating", Color3.fromRGB(255, 150, 50))
                        pathUpdateCooldown = 0 -- Force path update on next tick
                    end
                end)
                
                UpdateStatus("Using pathfinding to navigate", Color3.fromRGB(100, 200, 255))
                return true
            else
                UpdateStatus("Pathfinding failed: No valid waypoints", Color3.fromRGB(255, 150, 50))
                isUsingPathfinding = false
                return false
            end
        else
            UpdateStatus("Pathfinding failed: " .. tostring(currentPath.Status), Color3.fromRGB(255, 150, 50))
            isUsingPathfinding = false
            return false
        end
    end)
    
    return false
end

-- Function to follow current path
local function FollowPath(humanoid, rootPart, targetPosition, followDistance)
    if not currentPath or not isUsingPathfinding or not currentWaypoint then
        isUsingPathfinding = false
        return false
    end
    
    -- Check if we should aggressively cancel the path
    local distanceToTarget = (rootPart.Position - targetPosition).Magnitude
    if distanceToTarget < followDistance * 1.2 then
        -- Check if we have direct line of sight to target
        local directRay = Ray.new(rootPart.Position, (targetPosition - rootPart.Position).Unit * distanceToTarget)
        local directHit = workspace:FindPartOnRayWithIgnoreList(directRay, {LocalPlayer.Character})
        
        if not directHit then
            -- We're close to target with direct line of sight, cancel pathfinding
            isUsingPathfinding = false
            CleanupPathfinding()
            UpdateStatus("Target in sight - direct movement", Color3.fromRGB(100, 255, 150))
            return false
        end
    end
    
    -- Check if path is blocked
    if tick() - lastPathBlockedCheck > pathBlockedCheckInterval then
        lastPathBlockedCheck = tick()
        
        if currentPath.Status == Enum.PathStatus.Blocked then
            UpdateStatus("Path blocked - recalculating", Color3.fromRGB(255, 150, 50))
            pathUpdateCooldown = 0 -- Force path update on next tick
            return false
        end
    end
    
    -- Check if we're stuck on the same waypoint for too long
    if currentWaypointIndex == lastWaypointIndex then
        waypointStuckTime = waypointStuckTime + 0.1 -- Assuming this function is called every 0.1 seconds
        
        if waypointStuckTime > waypointStuckTimeout then
            UpdateStatus("Stuck on waypoint - recalculating", Color3.fromRGB(255, 150, 50))
            pathUpdateCooldown = 0 -- Force path update on next tick
            waypointStuckTime = 0
            return false
        end
    else
        -- Reset stuck timer when waypoint changes
        waypointStuckTime = 0
        lastWaypointIndex = currentWaypointIndex
    end
    
    -- Check if we reached the current waypoint
    local distanceToWaypoint = (rootPart.Position - currentWaypoint.Position).Magnitude
    
    if distanceToWaypoint < 4 then
        -- Move to next waypoint
        currentWaypointIndex = currentWaypointIndex + 1
        
        -- Get waypoints
        local waypoints = currentPath:GetWaypoints()
        
        -- Check if we reached the end of the path
        if currentWaypointIndex > #waypoints then
            -- Path completed
            isUsingPathfinding = false
            return true
        else
            -- Move to next waypoint
            currentWaypoint = waypoints[currentWaypointIndex]
            
            -- Check if we need to jump
            if currentWaypoint.Action == Enum.PathWaypointAction.Jump then
                humanoid.Jump = true
            end
            
            -- Always call MoveTo when reaching a new waypoint
            humanoid:MoveTo(currentWaypoint.Position)
            lastMoveToTime = tick()
        end
    else
        -- Only call MoveTo periodically to avoid spamming
        if tick() - lastMoveToTime > moveToInterval then
            humanoid:MoveTo(currentWaypoint.Position)
            lastMoveToTime = tick()
        end
    end
    
    return true
end

-- Function to clean up pathfinding
local function CleanupPathfinding()
    if currentPath then
        currentPath:Destroy()
        currentPath = nil
    end
    
    isUsingPathfinding = false
    currentWaypoint = nil
    currentWaypointIndex = 0
end

-- Movement history and prediction system
local movementHistory = {}
local dangerousAreas = {}
local gridSize = 10 -- Size of grid cells for tracking dangerous areas
local historyLimit = 100 -- Maximum movement history points to store per player
local dangerThreshold = 3 -- Number of falls/teleports needed to mark an area as dangerous
local saveDataInterval = 30 -- Save data every 30 seconds
local lastSaveTime = 0
local pendingSaveData = false -- Flag to indicate pending save data
local fallLocations = {} -- Queue for fall locations to save

-- File storage paths
local function GetSafeFileName(str)
    -- Replace invalid filename characters with underscores
    return string.gsub(str or "", "[^%w_%-]", "_")
end

local function GetHistoryFilePath(playerName, placeId)
    return "InfiniteFollower_History_" .. GetSafeFileName(playerName) .. "_" .. tostring(placeId) .. ".txt"
end

local function GetDangerousAreasFilePath(placeId)
    return "InfiniteFollower_DangerousAreas_" .. tostring(placeId) .. ".txt"
end

-- Function to save movement history to file
local function SaveMovementHistory()
    pcall(function()
        for playerName, history in pairs(movementHistory) do
            -- Only save if we have data
            if #history > 0 then
                local placeId = game.PlaceId
                local filePath = GetHistoryFilePath(playerName, placeId)
                
                -- Create file content
                local fileContent = tostring(placeId) .. "|" .. playerName .. "\n"
                
                -- Add the last 50 entries (to keep file size reasonable)
                local startIndex = math.max(1, #history - 50)
                for i = startIndex, #history do
                    local entry = history[i]
                    local posStr = tostring(entry.position.X) .. "," .. 
                                  tostring(entry.position.Y) .. "," .. 
                                  tostring(entry.position.Z)
                    local isFallStr = entry.isFall and "1" or "0"
                    local timeStr = tostring(entry.time)
                    
                    fileContent = fileContent .. posStr .. "|" .. isFallStr .. "|" .. timeStr .. "\n"
                end
                
                -- Write to file
                writefile(filePath, fileContent)
            end
        end
        
        -- Save dangerous areas
        local placeId = game.PlaceId
        local dangerFilePath = GetDangerousAreasFilePath(placeId)
        local dangerFileContent = tostring(placeId) .. "\n"
        
        for cellKey, count in pairs(dangerousAreas) do
            dangerFileContent = dangerFileContent .. cellKey .. "|" .. tostring(count) .. "\n"
        end
        
        writefile(dangerFilePath, dangerFileContent)
        
        -- Update last save time
        lastSaveTime = tick()
        
        -- Show status message occasionally
        if math.random(1, 5) == 1 then -- 20% chance
            UpdateStatus("Data saved to files", Color3.fromRGB(100, 255, 150))
        end
    end)
end

-- Function to load movement history from file
local function LoadMovementHistory(playerName)
    pcall(function()
        local placeId = game.PlaceId
        local filePath = GetHistoryFilePath(playerName, placeId)
        
        -- Check if file exists
        if isfile(filePath) then
            local fileContent = readfile(filePath)
            local lines = string.split(fileContent, "\n")
            
            -- Skip header line
            movementHistory[playerName] = {}
            
            for i = 2, #lines do
                local line = lines[i]
                if line and line ~= "" then
                    local parts = string.split(line, "|")
                    if #parts >= 3 then
                        local posStr = parts[1]
                        local isFallStr = parts[2]
                        local timeStr = parts[3]
                        
                        local posComponents = string.split(posStr, ",")
                        if #posComponents == 3 then
                            local position = Vector3.new(
                                tonumber(posComponents[1]),
                                tonumber(posComponents[2]),
                                tonumber(posComponents[3])
                            )
                            
                            local isFall = (isFallStr == "1")
                            local time = tonumber(timeStr) or 0
                            
                            table.insert(movementHistory[playerName], {
                                position = position,
                                isFall = isFall,
                                time = time
                            })
                        end
                    end
                end
            end
            
            -- Limit history size
            while #movementHistory[playerName] > historyLimit do
                table.remove(movementHistory[playerName], 1)
            end
            
            UpdateStatus("Loaded history for " .. playerName, Color3.fromRGB(100, 255, 150))
        end
    end)
end

-- Function to load dangerous areas from file
local function LoadDangerousAreas()
    pcall(function()
        local placeId = game.PlaceId
        local filePath = GetDangerousAreasFilePath(placeId)
        
        -- Check if file exists
        if isfile(filePath) then
            local fileContent = readfile(filePath)
            local lines = string.split(fileContent, "\n")
            
            -- Skip header line
            dangerousAreas = {}
            
            for i = 2, #lines do
                local line = lines[i]
                if line and line ~= "" then
                    local parts = string.split(line, "|")
                    if #parts == 2 then
                        local cellKey = parts[1]
                        local count = tonumber(parts[2]) or 0
                        
                        dangerousAreas[cellKey] = count
                    end
                end
            end
            
            local dangerCount = 0
            for _ in pairs(dangerousAreas) do
                dangerCount = dangerCount + 1
            end
            
            UpdateStatus("Loaded " .. dangerCount .. " dangerous areas", Color3.fromRGB(100, 255, 150))
        end
    end)
end

-- Function to round a position to a grid cell
local function GetGridCell(position)
    local x = math.floor(position.X / gridSize) * gridSize
    local y = math.floor(position.Y / gridSize) * gridSize
    local z = math.floor(position.Z / gridSize) * gridSize
    return Vector3.new(x, y, z)
end

-- Function to add a position to movement history
local function AddToMovementHistory(playerName, position, isFall)
    if not playerName then return end
    
    -- Initialize player history if not exists
    if not movementHistory[playerName] then
        movementHistory[playerName] = {}
        -- Try to load existing history
        LoadMovementHistory(playerName)
    end
    
    -- Add new position to history
    table.insert(movementHistory[playerName], {
        position = position,
        time = tick(),
        isFall = isFall or false
    })
    
    -- Limit history size
    if #movementHistory[playerName] > historyLimit then
        table.remove(movementHistory[playerName], 1)
    end
    
    -- If this was a fall, mark the area as dangerous
    if isFall then
        local gridCell = GetGridCell(position)
        local cellKey = tostring(gridCell.X) .. "," .. tostring(gridCell.Y) .. "," .. tostring(gridCell.Z)
        
        if not dangerousAreas[cellKey] then
            dangerousAreas[cellKey] = 1
        else
            dangerousAreas[cellKey] = dangerousAreas[cellKey] + 1
        end
        
        -- Update status if area is now considered dangerous
        if dangerousAreas[cellKey] == dangerThreshold then
            UpdateStatus("Marked area as dangerous - will avoid", Color3.fromRGB(255, 150, 50))
        end
        
        -- Add to fall locations queue instead of saving immediately
        table.insert(fallLocations, {
            playerName = playerName,
            position = position,
            time = tick()
        })
        
        -- Set flag for pending save
        pendingSaveData = true
    end
    
    -- Check if it's time to save data
    if tick() - lastSaveTime > saveDataInterval then
        SaveMovementHistory()
    end
end

-- Function to check if a position is in a dangerous area
local function IsDangerousArea(position)
    local gridCell = GetGridCell(position)
    local cellKey = tostring(gridCell.X) .. "," .. tostring(gridCell.Y) .. "," .. tostring(gridCell.Z)
    
    return dangerousAreas[cellKey] and dangerousAreas[cellKey] >= dangerThreshold
end

-- Function to predict if a path is dangerous
local function IsDangerousPath(startPos, endPos)
    -- Check if the end position is in a dangerous area
    if IsDangerousArea(endPos) then
        return true
    end
    
    -- Check points along the path
    local direction = (endPos - startPos).Unit
    local distance = (endPos - startPos).Magnitude
    
    -- Check a few points along the path
    for i = 1, 5 do
        local checkPoint = startPos + direction * (distance * (i/5))
        if IsDangerousArea(checkPoint) then
            return true
        end
    end
    
    return false
end

-- Function to find a safe path to the target with advanced pathfinding
local function FindSafePath(myPosition, targetPosition, followDistance)
    -- Default target move position
    local direction = (targetPosition - myPosition).Unit
    local defaultMovePos = targetPosition - direction * followDistance
    
    -- If the direct path isn't dangerous, use it
    if not IsDangerousPath(myPosition, defaultMovePos) then
        return defaultMovePos
    end
    
    -- Advanced path finding with multiple strategies
    
    -- Strategy 1: Try different angles around the target
    local bestPath = nil
    local lowestDanger = math.huge
    local bestDistance = math.huge
    
    -- Try 8 different angles around the target
    for i = 1, 8 do
        local angle = (i / 8) * math.pi * 2
        local offsetVector = CFrame.Angles(0, angle, 0) * Vector3.new(0, 0, -1)
        local testPos = targetPosition + offsetVector * followDistance
        
        -- Check if this path is dangerous
        local isDangerous = IsDangerousPath(myPosition, testPos)
        
        -- Calculate danger level using environment analysis
        local dangerLevel = 0
        pcall(function()
            -- Cast rays to check for obstacles
            local checkRay = Ray.new(myPosition, (testPos - myPosition).Unit * (testPos - myPosition).Magnitude)
            local hitCount = 0
            local hits = workspace:FindPartsInRayWithIgnoreList(checkRay, {LocalPlayer.Character}, 5)
            hitCount = #hits
            
            -- Check for dangerous areas along path
            local pathVector = testPos - myPosition
            local pathLength = pathVector.Magnitude
            local pathDir = pathVector.Unit
            
            for j = 1, 5 do
                local checkPoint = myPosition + pathDir * (pathLength * (j/5))
                if IsDangerousArea(checkPoint) then
                    dangerLevel = dangerLevel + 2
                end
            end
            
            -- Add obstacle count to danger
            dangerLevel = dangerLevel + hitCount
        end)
        
        -- Calculate distance factor (prefer shorter paths)
        local distanceFactor = (testPos - myPosition).Magnitude
        
        -- If this path is not dangerous or has lower danger than current best
        if not isDangerous and dangerLevel < lowestDanger then
            bestPath = testPos
            lowestDanger = dangerLevel
            bestDistance = distanceFactor
        elseif not isDangerous and dangerLevel == lowestDanger and distanceFactor < bestDistance then
            -- If same danger level but shorter path
            bestPath = testPos
            bestDistance = distanceFactor
        end
    end
    
    -- If we found a good path with the angle strategy
    if bestPath then
        UpdateStatus("Using optimal safe path", Color3.fromRGB(100, 255, 150))
        return bestPath
    end
    
    -- Strategy 2: Try different distances
    local distanceMultipliers = {1.5, 2, 2.5, 3}
    
    for _, multiplier in ipairs(distanceMultipliers) do
        local farPos = targetPosition - direction * (followDistance * multiplier)
        if not IsDangerousPath(myPosition, farPos) then
            UpdateStatus("Using extended safe distance", Color3.fromRGB(100, 255, 150))
            return farPos
        end
    end
    
    -- Strategy 3: Try classic alternative paths
    local alternativePaths = {
        -- Try right side
        function()
            local rightVector = Vector3.new(-direction.Z, 0, direction.X).Unit
            local rightPos = targetPosition + rightVector * followDistance
            return rightPos - direction * followDistance
        end,
        
        -- Try left side
        function()
            local leftVector = Vector3.new(direction.Z, 0, -direction.X).Unit
            local leftPos = targetPosition + leftVector * followDistance
            return leftPos - direction * followDistance
        end,
        
        -- Try diagonal approaches
        function()
            local rightVector = Vector3.new(-direction.Z, 0, direction.X).Unit
            return targetPosition + rightVector * (followDistance * 0.7) - direction * (followDistance * 1.3)
        end,
        
        function()
            local leftVector = Vector3.new(direction.Z, 0, -direction.X).Unit
            return targetPosition + leftVector * (followDistance * 0.7) - direction * (followDistance * 1.3)
        end
    }
    
    -- Try each alternative path
    for _, pathFunc in ipairs(alternativePaths) do
        local alternatePath = pathFunc()
        if not IsDangerousPath(myPosition, alternatePath) then
            UpdateStatus("Using safe alternative path", Color3.fromRGB(100, 255, 150))
            return alternatePath
        end
    end
    
    -- Strategy 4: If all else fails, try to find any safe position around the target
    local safePositions = {}
    
    -- Sample more points in a wider area
    for i = 1, 12 do
        local angle = (i / 12) * math.pi * 2
        for j = 1, 3 do
            local distance = followDistance * (0.8 + j * 0.4)
            local offsetVector = CFrame.Angles(0, angle, 0) * Vector3.new(0, 0, -1)
            local testPos = targetPosition + offsetVector * distance
            
            if not IsDangerousPath(myPosition, testPos) then
                table.insert(safePositions, {
                    position = testPos,
                    distance = (testPos - myPosition).Magnitude
                })
            end
        end
    end
    
    -- Sort by distance and pick closest
    if #safePositions > 0 then
        table.sort(safePositions, function(a, b)
            return a.distance < b.distance
        end)
        
        UpdateStatus("Found safe approach path", Color3.fromRGB(100, 255, 150))
        return safePositions[1].position
    end
    
    -- If all paths are dangerous, return the default but with a warning
    UpdateStatus("Warning: All paths seem dangerous", Color3.fromRGB(255, 150, 50))
    return defaultMovePos
end

-- Search for users
local function SearchUsers(query)
    -- Wrap in pcall for safety
    pcall(function()
        -- Skip if query is too short
        if not query or query == "" then return end
        
        -- Clear previous suggestions
        for _, child in pairs(SuggestionsFrame:GetChildren()) do
            if child:IsA("Frame") or child:IsA("TextLabel") then
                child:Destroy()
            end
        end
        
        -- Set status text
        StatusLabel.Text = "Searching targets..."
        
        -- Try to find players in the game
        local foundPlayers = {}
        local maxResults = 3 -- Maximum number of results
        local resultsCount = 0
        local exactMatch = false -- Track if we found an exact match
        
        -- Search for real players only
        local foundPlayers = false
        pcall(function()
            -- First, collect all matching players
            local matchingPlayers = {}
            local seenUserIds = {} -- Track seen user IDs to avoid duplicates
                
            for _, player in pairs(Players:GetPlayers()) do
                -- Skip local player
                if player == LocalPlayer then
                    continue
                end
                
                if player then
                    local username = player.Name:lower()
                    local displayName = ""
                    
                    -- Try to get DisplayName
                    pcall(function() 
                        displayName = player.DisplayName:lower() 
                    end)
                    
                    local queryLower = query:lower()
                    local matchScore = 0
                    
                    -- Calculate match score - exact matches get higher score
                    if username == queryLower or displayName == queryLower then
                        matchScore = 100 -- Exact match
                        exactMatch = true
                    elseif username:sub(1, #queryLower) == queryLower or displayName:sub(1, #queryLower) == queryLower then
                        matchScore = 75 -- Starts with query
                    elseif username:find(queryLower) or displayName:find(queryLower) then
                        matchScore = 50 -- Contains query
                    end
                    
                    -- Add player to results if there's any match and not a duplicate
                    if matchScore > 0 and not seenUserIds[player.UserId] then
                        -- Calculate distance if possible
                        local distance = math.huge
                        pcall(function()
                            if LocalPlayer and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
                               player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                                distance = (LocalPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
                            end
                        end)
                        
                        table.insert(matchingPlayers, {
                            player = player,
                            matchScore = matchScore,
                            distance = distance
                        })
                        
                        -- Track this user ID to avoid duplicates
                        seenUserIds[player.UserId] = true
                    end
                end
            end
            
            -- Sort players by match score first, then by distance
            table.sort(matchingPlayers, function(a, b)
                if a.matchScore == b.matchScore then
                    return a.distance < b.distance -- If same match score, closer players first
                end
                return a.matchScore > b.matchScore -- Higher match score first
            end)
            
            -- If we have an exact match, only show that one
            if exactMatch then
                -- Find the exact match and only show it
                for i, match in ipairs(matchingPlayers) do
                    local player = match.player
                    local playerName = player.Name:lower()
                    local playerDisplayName = ""
                    
                    pcall(function() 
                        playerDisplayName = player.DisplayName:lower() 
                    end)
                    
                    if playerName == query:lower() or playerDisplayName == query:lower() then
                        local displayName = ""
                        pcall(function() displayName = player.DisplayName end)
                        
                        local item = CreateSuggestionItem(player.Name, player.UserId, displayName)
                        if item then
                            item.Parent = SuggestionsFrame
                            resultsCount = 1
                            foundPlayers = true
                        end
                        break -- Only show the exact match
                    end
                end
            else
                -- Create suggestion items for top results (no exact match)
                for i, match in ipairs(matchingPlayers) do
                    if resultsCount >= maxResults then break end
                    
                    local player = match.player
                    local displayName = ""
                    
                    pcall(function() 
                        displayName = player.DisplayName 
                    end)
                    
                            local item = CreateSuggestionItem(player.Name, player.UserId, displayName)
                            if item then
                                item.Parent = SuggestionsFrame
                                resultsCount = resultsCount + 1
                                foundPlayers = true
                            end
                end
            end
        end)
        
        -- If no players found in the game, try direct username match as fallback
        if resultsCount == 0 then
            -- Try direct username search if no players found in-game
            pcall(function()
                local queryLower = query:lower()
                
                -- Check if any player in game has a name containing the query
                for _, player in pairs(Players:GetPlayers()) do
                    if player and (player.Name:lower():find(queryLower) or 
                                  (pcall(function() return player.DisplayName:lower():find(queryLower) end) and 
                                   player.DisplayName:lower():find(queryLower))) then
                        local displayName = ""
                        pcall(function() displayName = player.DisplayName end)
                        
                        local item = CreateSuggestionItem(player.Name, player.UserId, displayName)
                        if item then
                            item.Parent = SuggestionsFrame
                            resultsCount = resultsCount + 1
                            foundPlayers = true
                            if resultsCount >= maxResults then break end
                    end
                end
            end
        end)
        end
        
        -- If still no players found, show a message
        if resultsCount == 0 then
            local noResultsLabel = Instance.new("TextLabel")
            noResultsLabel.Name = "NoResults"
            noResultsLabel.Parent = SuggestionsFrame
            noResultsLabel.BackgroundTransparency = 1
            noResultsLabel.Size = UDim2.new(1, 0, 0, 60)
            noResultsLabel.Font = Enum.Font.Gotham
            noResultsLabel.Text = "No targets found"
            noResultsLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
            noResultsLabel.TextSize = 16
        end
        
        -- Update status text
        if resultsCount > 0 then
            StatusLabel.Text = "Found " .. resultsCount .. " target(s)"
        else
            StatusLabel.Text = "No targets found"
        end
        
        -- Make sure suggestions are visible
        SuggestionsFrame.Visible = true
        
        -- Adjust the size of the suggestions frame based on number of results
        SuggestionsFrame.Size = UDim2.new(0, 460, 0, math.min(resultsCount * 62, 250))
    end)
end

-- Improve search functionality to trigger with shorter input
UsernameInput.Changed:Connect(function(prop)
    if prop == "Text" then
        local text = UsernameInput.Text
        
        if text and text:len() >= 1 then  -- Changed from 2 to 1 to search with just one character
            SuggestionsFrame.Visible = true
            SearchUsers(text)
        elseif text:len() == 0 then
            SuggestionsFrame.Visible = false
        else
            SuggestionsFrame.Visible = false
        end
    end
end)

-- Don't hide suggestions immediately when focus is lost
UsernameInput.FocusLost:Connect(function(enterPressed)
    wait(0.3) -- Give more time to click on suggestions
    
    -- Check if mouse is over suggestions frame
    pcall(function()
        local mouseLocation = UserInputService:GetMouseLocation()
        local framePos = SuggestionsFrame.AbsolutePosition
        local frameSize = SuggestionsFrame.AbsoluteSize
        
        local isMouseOver = (
            mouseLocation.X >= framePos.X and 
            mouseLocation.X <= framePos.X + frameSize.X and
            mouseLocation.Y >= framePos.Y and 
            mouseLocation.Y <= framePos.Y + frameSize.Y
        )
        
        if not isMouseOver then
            SuggestionsFrame.Visible = false
        end
    end)
end)

-- Show suggestions when input is focused
UsernameInput.Focused:Connect(function()
    local text = UsernameInput.Text
    
    if text and text:len() >= 2 then
        SuggestionsFrame.Visible = true
        SearchUsers(text)
    else
        SuggestionsFrame.Visible = false
    end
end)

-- Auto-show suggestions when typing
UsernameInput.Focused:Connect(function()
    -- Show suggestions immediately when focused
    pcall(function()
        if UsernameInput.Text ~= "" then
            SearchUsers(UsernameInput.Text)
        end
    end)
end)

-- Variables for jump functionality and distance follow
local lastMovementTime = tick()
local followDistance = 5 -- Default follow distance
local maxFollowDistance = 50
local lastPosition = Vector3.new(0,0,0)
local stuckCounter = 0
local jumpCooldown = 0

-- Variables for progress tracking and automatic jumping
local lastProgressCheckTime = tick()
local lastDistanceToTarget = 0
local noProgressTime = 0
local progressCheckInterval = 0.5 -- Check progress every 0.5 seconds
local noProgressJumpThreshold = 2 -- Jump if no progress for 2 seconds
local minProgressDistance = 5 -- Minimum distance to consider progress (5 studs)

-- Slider functionality
local function updateSlider()
    SliderFill.Size = UDim2.new(followDistance / maxFollowDistance, 0, 1, 0)
    DistanceValue.Text = followDistance .. "/" .. maxFollowDistance
end

DistanceSlider.MouseButton1Down:Connect(function()
    local connection
    connection = UserInputService.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            local mousePos = UserInputService:GetMouseLocation()
            local sliderPos = DistanceSlider.AbsolutePosition
            local sliderSize = DistanceSlider.AbsoluteSize
            
            local relativeX = math.clamp((mousePos.X - sliderPos.X) / sliderSize.X, 0, 1)
            followDistance = math.floor(relativeX * maxFollowDistance)
            if followDistance < 1 then followDistance = 1 end
            
            -- Disable adaptive follow distance when user manually sets it
            adaptiveFollowDistance = false
            
            updateSlider()
        end
    end)
    
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            if connection then
                connection:Disconnect()
            end
        end
    end)
end)

-- Function to teleport to a random player
local function TeleportToRandomPlayer()
    pcall(function()
        local playerList = Players:GetPlayers()
        local validPlayers = {}
        local targetName = ""
        
        -- Get target player name for proper exclusion
        if selectedUser then
            targetName = selectedUser.username:lower()
        end
        
        -- Find valid players (not in void, not the local player, not the target)
        for _, player in pairs(playerList) do
            -- Make sure this player is not the target (strict check)
            local isTarget = false
            if targetName ~= "" and player.Name:lower() == targetName then
                isTarget = true
            end
            
            if player ~= LocalPlayer and 
               not isTarget and
               player.Character and 
               player.Character:FindFirstChild("HumanoidRootPart") then
                
                local position = player.Character.HumanoidRootPart.Position
                
                -- Check if player is standing on something
                local isOnGround = false
                pcall(function()
                    -- Cast a ray downward to check if there's ground beneath
                    local ray = Ray.new(position, Vector3.new(0, -5, 0))
                    local hit, hitPosition = workspace:FindPartOnRayWithIgnoreList(ray, {player.Character})
                    
                    if hit then
                        isOnGround = true
                    end
                end)
                
                if position.Y > voidYThreshold and isOnGround then
                    -- Calculate distance to this player
                    local distance = math.huge
                    if LocalPlayer and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                        distance = (LocalPlayer.Character.HumanoidRootPart.Position - position).Magnitude
                    end
                    
                    table.insert(validPlayers, {
                        player = player,
                        distance = distance
                    })
                end
            end
        end
        
        -- Sort players by distance (closest first)
        table.sort(validPlayers, function(a, b)
            return a.distance < b.distance
        end)
        
        -- If we found valid players, teleport to the closest one
        if #validPlayers > 0 then
            local closestPlayer = validPlayers[1].player
            
            -- Double check this is not the target
            if selectedUser and closestPlayer.Name:lower() == selectedUser.username:lower() then
                -- Skip this player and try the next one if available
                if #validPlayers > 1 then
                    closestPlayer = validPlayers[2].player
                else
                    UpdateStatus("No safe players found (only target available)", Color3.fromRGB(255, 100, 100))
                    return
                end
            end
            
            if LocalPlayer and LocalPlayer.Character and 
               LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
               closestPlayer.Character and 
               closestPlayer.Character:FindFirstChild("HumanoidRootPart") then
                
                -- Teleport slightly above and behind the player
                local targetPos = closestPlayer.Character.HumanoidRootPart.Position
                local offset = closestPlayer.Character.HumanoidRootPart.CFrame.lookVector * -5 -- 5 studs behind
                offset = offset + Vector3.new(0, 3, 0) -- 3 studs above
                
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(targetPos + offset)
                
                UpdateStatus("Teleported to nearest safe player (" .. closestPlayer.Name .. ")", Color3.fromRGB(255, 200, 100))
            end
        else
            -- If no valid players found, try anyone not in void as fallback
            local fallbackPlayers = {}
            for _, player in pairs(playerList) do
                -- Make sure this player is not the target (strict check)
                local isTarget = false
                if targetName ~= "" and player.Name:lower() == targetName then
                    isTarget = true
                end
                
                if player ~= LocalPlayer and 
                   not isTarget and
                   player.Character and 
                   player.Character:FindFirstChild("HumanoidRootPart") then
                    
                    local position = player.Character.HumanoidRootPart.Position
                    if position.Y > voidYThreshold then
                        -- Calculate distance to this player
                        local distance = math.huge
                        if LocalPlayer and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                            distance = (LocalPlayer.Character.HumanoidRootPart.Position - position).Magnitude
                        end
                        
                        table.insert(fallbackPlayers, {
                            player = player,
                            distance = distance
                        })
                    end
                end
            end
            
            -- Sort fallback players by distance
            table.sort(fallbackPlayers, function(a, b)
                return a.distance < b.distance
            end)
            
            -- Teleport to closest fallback if available
            if #fallbackPlayers > 0 then
                local closestPlayer = fallbackPlayers[1].player
                
                -- Double check this is not the target
                if selectedUser and closestPlayer.Name:lower() == selectedUser.username:lower() then
                    -- Skip this player and try the next one if available
                    if #fallbackPlayers > 1 then
                        closestPlayer = fallbackPlayers[2].player
                    else
                        UpdateStatus("No safe players found (only target available)", Color3.fromRGB(255, 100, 100))
                        return
                    end
                end
                
                if LocalPlayer and LocalPlayer.Character and 
                   LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
                   closestPlayer.Character and 
                   closestPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    
                    local targetPos = closestPlayer.Character.HumanoidRootPart.Position
                    local offset = closestPlayer.Character.HumanoidRootPart.CFrame.lookVector * -5
                    offset = offset + Vector3.new(0, 3, 0)
                    
                    LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(targetPos + offset)
                    
                    UpdateStatus("Teleported to nearest player (fallback)", Color3.fromRGB(255, 200, 100))
                end
            else
                UpdateStatus("No safe players found to teleport to", Color3.fromRGB(255, 100, 100))
            end
        end
    end)
end

-- Function to predict target's future position
local function PredictTargetPosition(currentPosition, predictionTime)
    -- If we don't have enough history, return current position
    if #targetPositionHistory < 3 then
        return currentPosition
    end
    
    -- Calculate average velocity from history with improved weighting
    local avgVelocity = targetVelocity
    
    -- If we have velocity history, use it for better prediction
    if #targetVelocityHistory > 0 then
        avgVelocity = Vector3.new(0, 0, 0)
        local totalWeight = 0
        
        -- Weight recent velocities exponentially more heavily
        for i = 1, #targetVelocityHistory do
            -- Exponential weighting gives much higher priority to recent movements
            local weight = math.exp(i - #targetVelocityHistory) * 5
            avgVelocity = avgVelocity + (targetVelocityHistory[i] * weight)
            totalWeight = totalWeight + weight
        end
        
        if totalWeight > 0 then
            avgVelocity = avgVelocity / totalWeight
        end
    end
    
    -- Apply acceleration to prediction with improved physics model
    local predictedPosition = currentPosition + (avgVelocity * predictionTime) + (targetAcceleration * (predictionTime^2) * 0.5)
    
    -- Check if the predicted position is in a dangerous area
    if IsDangerousArea(predictedPosition) then
        -- Try to find a safer prediction by adjusting the prediction time
        for factor = 0.8, 0.2, -0.2 do
            local saferPrediction = currentPosition + (avgVelocity * (predictionTime * factor))
            if not IsDangerousArea(saferPrediction) then
                return saferPrediction
            end
        end
        -- Fall back to current position if all predictions are dangerous
        return currentPosition
    end
    
    -- Analyze target movement patterns for improved prediction
    local isCircling = false
    local isZigzagging = false
    local isAccelerating = false
    
    -- Check for circling pattern
    if #targetPositionHistory >= 5 then
        local center = Vector3.new(0, 0, 0)
        for i = 1, #targetPositionHistory do
            center = center + targetPositionHistory[i]
        end
        center = center / #targetPositionHistory
        
        local avgRadius = 0
        for i = 1, #targetPositionHistory do
            avgRadius = avgRadius + (targetPositionHistory[i] - center).Magnitude
        end
        avgRadius = avgRadius / #targetPositionHistory
        
        local radiusConsistency = 0
        for i = 1, #targetPositionHistory do
            local radius = (targetPositionHistory[i] - center).Magnitude
            radiusConsistency = radiusConsistency + math.abs(radius - avgRadius)
        end
        radiusConsistency = radiusConsistency / #targetPositionHistory
        
        -- If radius is consistent, target might be circling
        if radiusConsistency < 5 and avgRadius > 5 then
            isCircling = true
            
            -- Predict next position in circle
            local lastPos = targetPositionHistory[#targetPositionHistory]
            local prevPos = targetPositionHistory[#targetPositionHistory-1]
            local circleVector = (lastPos - center).Unit
            local tangentVector = Vector3.new(-circleVector.Z, 0, circleVector.X)
            
            -- Adjust prediction based on circle movement
            local circularPrediction = center + (lastPos - center).Unit * avgRadius + tangentVector * (targetSpeed * predictionTime)
            predictedPosition = circularPrediction
        end
    end
    
    -- Check for zigzag pattern
    local directionChanges = 0
    for _, change in ipairs(targetDirectionChangeHistory) do
        if change > 0.7 then -- Significant direction change (angle > ~40 degrees)
            directionChanges = directionChanges + 1
        end
    end
    
    -- If target is changing direction a lot, they might be zigzagging
    if directionChanges >= 3 and #targetDirectionChangeHistory >= 4 then
        isZigzagging = true
        
        -- For zigzagging targets, predict less far ahead and aim more for their current position
        predictedPosition = currentPosition + (avgVelocity * (predictionTime * 0.3))
    end
    
    -- Check if target is accelerating
    if #targetVelocityHistory >= 3 then
        local speedIncreasing = true
        for i = 2, #targetVelocityHistory do
            if targetVelocityHistory[i].Magnitude <= targetVelocityHistory[i-1].Magnitude then
                speedIncreasing = false
                break
            end
        end
        
        if speedIncreasing then
            isAccelerating = true
            -- For accelerating targets, predict further ahead
            predictedPosition = currentPosition + (avgVelocity * (predictionTime * 1.5)) + (targetAcceleration * (predictionTime^2) * 0.75)
        end
    end
    
    -- Apply terrain awareness to prediction
    local ray = Ray.new(predictedPosition + Vector3.new(0, 5, 0), Vector3.new(0, -20, 0))
    local hit, hitPos = workspace:FindPartOnRay(ray)
    
    if hit then
        -- Adjust Y position to terrain height
        predictedPosition = Vector3.new(predictedPosition.X, hitPos.Y + 2, predictedPosition.Z)
    end
    
    return predictedPosition
end

-- Function to calculate steering vector with advanced AI behaviors
local function CalculateSteeringVector(myPosition, targetPosition, moveTarget, obstacles)
    local steeringVector = Vector3.new(0, 0, 0)
    local steeringComponents = {}
    
    -- Seek component (towards move target) - primary behavior
    local seekVector = (moveTarget - myPosition).Unit
    steeringComponents.seek = seekVector * seekWeight
    
    -- Target tracking component - stay focused on actual target
    local toTargetVector = (targetPosition - myPosition).Unit
    steeringComponents.targetTracking = toTargetVector * (seekWeight * 0.3)
    
    -- Obstacle avoidance with improved weighting and prioritization
    if obstacles and #obstacles > 0 then
        local avoidanceVector = Vector3.new(0, 0, 0)
        local jumpableObstacleDetected = false
        local closestJumpableDistance = math.huge
        
        -- First pass: calculate basic avoidance and detect jumpable obstacles
        for _, obstacle in ipairs(obstacles) do
            local toObstacle = obstacle.position - myPosition
            local distance = toObstacle.Magnitude
            
            -- Check if this is a jumpable obstacle and we're heading towards it
            if obstacle.jumpable and distance < 5 then
                local dotProduct = toObstacle.Unit:Dot(seekVector)
                if dotProduct > 0.7 then -- We're heading towards this obstacle
                    jumpableObstacleDetected = true
                    if distance < closestJumpableDistance then
                        closestJumpableDistance = distance
                    end
                end
            end
            
            -- Calculate avoidance based on obstacle type and importance
            if distance < obstacle.radius + 3 then
                -- Base avoidance force (stronger when closer)
                local avoidMultiplier = 1 + (obstacle.importance or 1)
                local avoidForce = (myPosition - obstacle.position).Unit * (avoidMultiplier / math.max(distance, 0.1))
                
                -- Adjust force based on obstacle type
                if obstacle.type == "wall" then
                    -- Use normal reflection for walls for more natural movement
                    local incidenceVector = (obstacle.position - myPosition).Unit
                    local reflectionVector = incidenceVector - (2 * (incidenceVector:Dot(obstacle.normal)) * obstacle.normal)
                    avoidForce = reflectionVector * avoidMultiplier
                elseif obstacle.type == "ceiling" then
                    -- Strong downward avoidance for ceilings
                    avoidForce = avoidForce + Vector3.new(0, -1, 0)
                end
                
                avoidanceVector = avoidanceVector + avoidForce
            end
        end
        
        -- Normalize and apply avoidance
        if avoidanceVector.Magnitude > 0 then
            avoidanceVector = avoidanceVector.Unit
            steeringComponents.avoidance = avoidanceVector * avoidanceWeight
            
            -- If we detected a jumpable obstacle, add a jump request
            if jumpableObstacleDetected and closestJumpableDistance < 3 and jumpCooldown <= 0 then
                -- This will be handled by the main loop
                steeringComponents.shouldJump = true
            end
        end
    end
    
    -- Path following behavior (when using pathfinding)
    if isUsingPathfinding and currentWaypoint then
        local toWaypoint = (currentWaypoint.Position - myPosition)
        local distToWaypoint = toWaypoint.Magnitude
        
        if distToWaypoint > 0 then
            local waypointDir = toWaypoint.Unit
            steeringComponents.pathFollowing = waypointDir * pathWeight
        end
    end
    
    -- Wall following behavior - helps navigate along walls instead of getting stuck
    local wallFollowVector = Vector3.new(0, 0, 0)
    if obstacles and #obstacles > 0 then
        for _, obstacle in ipairs(obstacles) do
            if obstacle.type == "wall" and obstacle.distance < 5 then
                -- Find a direction parallel to the wall
                local wallNormal = obstacle.normal
                local wallParallel = Vector3.new(-wallNormal.Z, 0, wallNormal.X).Unit
                
                -- Check which direction along the wall is closer to our goal
                local dot1 = wallParallel:Dot(seekVector)
                local dot2 = (-wallParallel):Dot(seekVector)
                
                if dot1 > dot2 then
                    wallFollowVector = wallFollowVector + wallParallel
                else
                    wallFollowVector = wallFollowVector + (-wallParallel)
                end
            end
        end
        
        if wallFollowVector.Magnitude > 0 then
            wallFollowVector = wallFollowVector.Unit
            steeringComponents.wallFollowing = wallFollowVector * 0.7
        end
    end
    
    -- Combine all steering components
    for _, component in pairs(steeringComponents) do
        if type(component) == "userdata" then -- Vector3
            steeringVector = steeringVector + component
        end
    end
    
    -- Limit steering force
    if steeringVector.Magnitude > maxSteeringForce then
        steeringVector = steeringVector.Unit * maxSteeringForce
    end
    
    -- Apply adaptive smoothing based on speed and obstacles
    local smoothingFactor = 0.3 -- Default smoothing
    
    -- Less smoothing when there are close obstacles (need to react quickly)
    if obstacles and #obstacles > 0 then
        local closestDist = math.huge
        for _, obstacle in ipairs(obstacles) do
            if obstacle.distance < closestDist then
                closestDist = obstacle.distance
            end
        end
        
        if closestDist < 3 then
            smoothingFactor = 0.1 -- Quick reactions needed
        elseif closestDist < 8 then
            smoothingFactor = 0.2 -- Moderate smoothing
        end
    end
    
    -- Blend with previous steering vector for smoother movement
    steeringVector = steeringVector:Lerp(lastSteeringVector, smoothingFactor)
    lastSteeringVector = steeringVector
    
    -- Store jump request for main loop to handle
    if steeringComponents.shouldJump then
        steeringVector = {
            vector = steeringVector,
            shouldJump = true
        }
    end
    
    return steeringVector
end

-- Function to detect obstacles around the character with advanced 3D scanning
local function DetectObstacles(position, radius)
    local obstacles = {}
    local obstacleMap = {} -- For deduplication
    
    -- Multi-layer obstacle detection for better 3D awareness
    local heightLevels = {0.5, 1, 1.8, 2.5} -- Different heights to check for obstacles
    
    -- Create a comprehensive set of ray directions for better coverage
    local rayDirections = {}
    
    -- Primary directions (8 compass points)
    for i = 1, 8 do
        local angle = (i / 8) * math.pi * 2
        table.insert(rayDirections, Vector3.new(math.cos(angle), 0, math.sin(angle)))
    end
    
    -- Secondary directions (16 more points for better resolution)
    for i = 1, 16 do
        local angle = (i / 16) * math.pi * 2
        table.insert(rayDirections, Vector3.new(math.cos(angle), 0, math.sin(angle)))
    end
    
    -- Add some diagonal rays for better 3D detection
    table.insert(rayDirections, Vector3.new(0.5, 0.5, 0.5).Unit)
    table.insert(rayDirections, Vector3.new(-0.5, 0.5, 0.5).Unit)
    table.insert(rayDirections, Vector3.new(0.5, 0.5, -0.5).Unit)
    table.insert(rayDirections, Vector3.new(-0.5, 0.5, -0.5).Unit)
    
    -- Cast rays at different heights and directions
    for _, height in ipairs(heightLevels) do
        for _, direction in ipairs(rayDirections) do
            local ray = Ray.new(position + Vector3.new(0, height, 0), direction * radius)
            local hit, hitPosition, hitNormal, hitMaterial = workspace:FindPartOnRayWithIgnoreList(
                ray, 
                {LocalPlayer and LocalPlayer.Character}
            )
            
            if hit then
                local distance = (hitPosition - position).Magnitude
                
                -- Create a unique key for this obstacle to avoid duplicates
                local gridSize = 2 -- Grid size for deduplication
                local gridX = math.floor(hitPosition.X / gridSize) * gridSize
                local gridY = math.floor(hitPosition.Y / gridSize) * gridSize
                local gridZ = math.floor(hitPosition.Z / gridSize) * gridSize
                local obstacleKey = gridX .. "," .. gridY .. "," .. gridZ
                
                -- Only add if we haven't detected this obstacle already
                if not obstacleMap[obstacleKey] then
                    obstacleMap[obstacleKey] = true
                    
                    -- Calculate obstacle properties
                    local obstacleType = "wall"
                    local obstacleImportance = 1
                    
                    -- Determine obstacle type based on normal
                    if hitNormal.Y > 0.7 then
                        obstacleType = "floor"
                        obstacleImportance = 0.5
                    elseif hitNormal.Y < -0.7 then
                        obstacleType = "ceiling"
                        obstacleImportance = 0.7
                    else
                        obstacleType = "wall"
                        obstacleImportance = 1
                    end
                    
                    -- Adjust importance based on distance (closer = more important)
                    obstacleImportance = obstacleImportance * (1 - (distance / (radius * 1.5)))
                    
                    -- Try to determine if this is a small obstacle that can be jumped over
                    local isJumpable = false
                    if obstacleType == "wall" and hitPosition.Y - position.Y < 2 then
                        -- Cast a ray above this obstacle to see if there's clearance
                        local jumpRay = Ray.new(
                            position + Vector3.new(0, 2, 0), 
                            (hitPosition - position).Unit * (distance + 2)
                        )
                        local jumpHit = workspace:FindPartOnRayWithIgnoreList(jumpRay, {LocalPlayer and LocalPlayer.Character})
                        
                        if not jumpHit then
                            isJumpable = true
                            obstacleImportance = obstacleImportance * 0.7 -- Reduce importance if we can jump over it
                        end
                    end
                    
                    -- Add obstacle to the list
                    table.insert(obstacles, {
                        position = hitPosition,
                        normal = hitNormal,
                        radius = 1.5, -- Slightly larger radius for better avoidance
                        distance = distance,
                        type = obstacleType,
                        importance = obstacleImportance,
                        jumpable = isJumpable,
                        material = hitMaterial
                    })
                end
            end
        end
    end
    
    -- Sort obstacles by importance (most important first)
    table.sort(obstacles, function(a, b)
        return a.importance > b.importance
    end)
    
    -- Limit to most important obstacles to avoid performance issues
    if #obstacles > 10 then
        local trimmedObstacles = {}
        for i = 1, 10 do
            table.insert(trimmedObstacles, obstacles[i])
        end
        obstacles = trimmedObstacles
    end
    
    return obstacles
end

-- Function to analyze terrain and environment with advanced AI
local function AnalyzeEnvironment(position)
    if tick() - lastTerrainCheck < terrainCheckInterval then
        return environmentDangerLevel
    end
    
    lastTerrainCheck = tick()
    local dangerPoints = 0
    local terrainFeatures = {
        voids = 0,
        slopes = 0,
        walls = 0,
        narrowPaths = 0,
        water = 0,
        safeGround = 0
    }
    
    -- Check for dangerous areas in movement history with improved weighting
    local dangerousAreasNearby = 0
    local closestDangerDistance = math.huge
    
    for cellKey, count in pairs(dangerousAreas) do
        if count >= dangerThreshold then
            -- Parse cell coordinates
            local parts = string.split(cellKey, ",")
            if #parts == 3 then
                local cellPos = Vector3.new(
                    tonumber(parts[1]) or 0,
                    tonumber(parts[2]) or 0,
                    tonumber(parts[3]) or 0
                )
                
                -- Check if this dangerous area is nearby
                local distance = (position - cellPos).Magnitude
                if distance < terrainSampleRadius * 2 then
                    -- Weight danger by distance - closer dangers are more important
                    local dangerWeight = 1 + (terrainSampleRadius * 2 - distance) / (terrainSampleRadius * 2)
                    dangerousAreasNearby = dangerousAreasNearby + dangerWeight
                    
                    -- Track closest danger
                    if distance < closestDangerDistance then
                        closestDangerDistance = distance
                    end
                end
            end
        end
    end
    
    -- Add danger points based on nearby dangerous areas with proximity weighting
    dangerPoints = dangerPoints + math.min(dangerousAreasNearby * 1.5, 5)
    
    -- Add extra danger if very close to a dangerous area
    if closestDangerDistance < 5 then
        dangerPoints = dangerPoints + (5 - closestDangerDistance)
    end
    
    -- Check terrain around the character with improved sampling
    local samplePoints = terrainSamplePoints
    local sampleRadius = terrainSampleRadius
    
    -- Create a more comprehensive sampling pattern
    local sampleOffsets = {}
    
    -- Circular pattern
    for i = 1, samplePoints do
        local angle = (i / samplePoints) * math.pi * 2
        table.insert(sampleOffsets, Vector3.new(math.cos(angle) * sampleRadius, 0, math.sin(angle) * sampleRadius))
    end
    
    -- Add closer samples for better near-field detection
    for i = 1, samplePoints / 2 do
        local angle = (i / (samplePoints / 2)) * math.pi * 2
        table.insert(sampleOffsets, Vector3.new(math.cos(angle) * (sampleRadius * 0.5), 0, math.sin(angle) * (sampleRadius * 0.5)))
    end
    
    -- Add forward-biased samples (in movement direction)
    if LocalPlayer and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
        local moveDirection = LocalPlayer.Character.Humanoid.MoveDirection
        if moveDirection.Magnitude > 0.1 then
            moveDirection = moveDirection.Unit
            for i = 1, 3 do
                table.insert(sampleOffsets, moveDirection * (sampleRadius * i * 0.5))
            end
        end
    end
    
    -- Analyze each sample point
    for _, offset in ipairs(sampleOffsets) do
        local checkPos = position + offset
        
        -- Cast ray downward to check for void and terrain features
        local ray = Ray.new(checkPos + Vector3.new(0, 10, 0), Vector3.new(0, -60, 0))
        local hit, hitPos, hitNormal, hitMaterial = workspace:FindPartOnRayWithIgnoreList(ray, {LocalPlayer and LocalPlayer.Character})
        
        if not hit then
            terrainFeatures.voids = terrainFeatures.voids + 1
        else
            -- Check terrain slope
            local slope = math.abs(hitNormal.Y)
            if slope < 0.7 then  -- Steep slope
                terrainFeatures.slopes = terrainFeatures.slopes + 1
            else
                terrainFeatures.safeGround = terrainFeatures.safeGround + 1
            end
            
            -- Check for water
            pcall(function()
                if hitMaterial == Enum.Material.Water then
                    terrainFeatures.water = terrainFeatures.water + 1
                end
            end)
            
            -- Check for narrow paths by casting rays to the sides
            local sideRay1 = Ray.new(hitPos + Vector3.new(0, 1, 0), Vector3.new(2, 0, 0))
            local sideRay2 = Ray.new(hitPos + Vector3.new(0, 1, 0), Vector3.new(-2, 0, 0))
            local sideRay3 = Ray.new(hitPos + Vector3.new(0, 1, 0), Vector3.new(0, 0, 2))
            local sideRay4 = Ray.new(hitPos + Vector3.new(0, 1, 0), Vector3.new(0, 0, -2))
            
            local sideHits = 0
            if workspace:FindPartOnRayWithIgnoreList(sideRay1, {LocalPlayer and LocalPlayer.Character}) then sideHits = sideHits + 1 end
            if workspace:FindPartOnRayWithIgnoreList(sideRay2, {LocalPlayer and LocalPlayer.Character}) then sideHits = sideHits + 1 end
            if workspace:FindPartOnRayWithIgnoreList(sideRay3, {LocalPlayer and LocalPlayer.Character}) then sideHits = sideHits + 1 end
            if workspace:FindPartOnRayWithIgnoreList(sideRay4, {LocalPlayer and LocalPlayer.Character}) then sideHits = sideHits + 1 end
            
            if sideHits >= 2 then
                terrainFeatures.narrowPaths = terrainFeatures.narrowPaths + 1
            end
        end
    end
    
    -- Calculate danger based on terrain features
    dangerPoints = dangerPoints + math.min(terrainFeatures.voids * 1.5, 5)
    dangerPoints = dangerPoints + math.min(terrainFeatures.slopes * 0.8, 3)
    dangerPoints = dangerPoints + math.min(terrainFeatures.narrowPaths * 0.7, 3)
    dangerPoints = dangerPoints + math.min(terrainFeatures.water * 1.0, 3)
    
    -- Reduce danger based on safe ground
    dangerPoints = math.max(0, dangerPoints - (terrainFeatures.safeGround * 0.1))
    
    -- Clamp danger level between 0 and 10
    environmentDangerLevel = math.clamp(dangerPoints, 0, 10)
    
    -- Only adjust follow distance if adaptiveFollowDistance is enabled
    if adaptiveFollowDistance and followDistance then
        local baseDist = followDistance
        local adaptedDist = math.max(minFollowDistance, baseDist - (environmentDangerLevel * 0.5))
        
        -- Don't exceed max adaptive distance
        adaptedDist = math.min(adaptedDist, maxAdaptiveFollowDistance)
        
        -- Only update if significantly different
        if math.abs(adaptedDist - followDistance) > 1 then
            followDistance = adaptedDist
            updateSlider() -- Update the slider UI
            
            -- Occasionally update status with environment info
            if math.random(1, 3) == 1 then
                UpdateStatus("Environment analysis: " .. math.floor(environmentDangerLevel * 10) / 10 .. "/10", 
                    environmentDangerLevel > 5 and Color3.fromRGB(255, 100, 100) or Color3.fromRGB(255, 200, 100))
            end
        end
    end
    
    return environmentDangerLevel
end

-- Follow function
local function FollowPlayer()
    pcall(function()
        if not selectedUser then
            UpdateStatus("Select a target first", Color3.fromRGB(255, 100, 100))
            return
        end
        
        -- Find the target player
        local targetPlayer = nil
        pcall(function()
            for _, player in pairs(Players:GetPlayers()) do
                if player.Name == selectedUser.username then
                    targetPlayer = player
                    break
                end
            end
        end)
        
        if not targetPlayer then
            UpdateStatus("Target not found", Color3.fromRGB(255, 100, 100))
            return
        end
        
        -- Toggle following state
        isFollowing = not isFollowing
        
        if isFollowing then
            -- Start following
            local displayName = selectedUser.displayName or selectedUser.username
            if displayName and displayName ~= "" and displayName:lower() ~= selectedUser.username:lower() then
                UpdateStatus("Following " .. displayName .. " (@" .. selectedUser.username .. ")", Color3.fromRGB(100, 255, 100))
            else
                UpdateStatus("Following " .. selectedUser.username .. "...", Color3.fromRGB(100, 255, 100))
            end
            
            -- Change button appearance
            GoButton.BackgroundColor3 = Color3.fromRGB(220, 90, 70)
            GoButton.Text = "STOP"
            
            -- Reset navigation variables
            navigationAttempts = 0
            lastNavigationDirection = nil
            pathfindingCooldown = 0
            navigationTimeout = 0
            alternatePathAttempts = 0
            voidCheckCooldown = 0
            teleportCooldown = 0
            isInVoid = false
            targetLostTime = 0
            sittingCheckCooldown = 0
            pathUpdateCooldown = 0
            
            -- Reset progress tracking variables
            lastProgressCheckTime = tick()
            lastDistanceToTarget = 0
            noProgressTime = 0
            
            -- Reset prediction variables
            targetPositionHistory = {}
            targetVelocityHistory = {}
            targetAcceleration = Vector3.new(0, 0, 0)
            targetDirectionChangeHistory = {}
            lastTargetDirection = Vector3.new(0, 0, 0)
            environmentDangerLevel = 0
            lastTerrainCheck = 0
            
            -- Clean up any existing pathfinding
            CleanupPathfinding()
            
            -- Initialize last positions
            pcall(function()
                if LocalPlayer and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    lastPosition = LocalPlayer.Character.HumanoidRootPart.Position
                end
                
                if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    lastTargetPosition = targetPlayer.Character.HumanoidRootPart.Position
                    targetVelocity = Vector3.new(0, 0, 0)
                    targetSpeed = 0
                end
            end)
            
            -- Try to load movement history for this player
            pcall(function()
                if selectedUser and selectedUser.username then
                    LoadMovementHistory(selectedUser.username)
                end
            end)
            
            -- Start following loop
            spawn(function()
                -- Start a separate thread for batch saving
                spawn(function()
                    while isFollowing do
                        wait(10) -- Check every 10 seconds
                        if pendingSaveData then
                            SaveMovementHistory()
                            pendingSaveData = false
                        end
                    end
                end)
                
                while isFollowing and wait(0.1) do
                    pcall(function()
                        -- Decrease cooldowns
                        if voidCheckCooldown > 0 then
                            voidCheckCooldown = voidCheckCooldown - 0.1
                        end
                        
                        if teleportCooldown > 0 then
                            teleportCooldown = teleportCooldown - 0.1
                        end
                        
                        if sittingCheckCooldown > 0 then
                            sittingCheckCooldown = sittingCheckCooldown - 0.1
                        end
                        
                        if pathUpdateCooldown > 0 then
                            pathUpdateCooldown = pathUpdateCooldown - 0.1
                        end
                        
                        if jumpCooldown > 0 then
                            jumpCooldown = jumpCooldown - 0.1
                        end
                        
                        -- Check if we're in the void
                        if LocalPlayer and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                            local myPosition = LocalPlayer.Character.HumanoidRootPart.Position
                            
                            -- Check if we're falling into the void
                            if myPosition.Y < voidYThreshold and voidCheckCooldown <= 0 then
                                isInVoid = true
                                voidCheckCooldown = 0.2 -- Reduced check cooldown to allow more frequent teleporting
                                
                                -- Record this position as a fall location
                                if selectedUser then
                                    AddToMovementHistory(selectedUser.username, myPosition, true)
                                end
                                
                                -- Teleport to a random player
                                TeleportToRandomPlayer()
                            else
                                isInVoid = false
                            end
                        end
                        
                        -- Check if target exists
                        local targetExists = false
                        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                            targetExists = true
                            targetLostTime = 0
                        else
                            -- Target doesn't exist or is respawning
                            if targetLostTime == 0 then
                                targetLostTime = tick()
                                UpdateStatus("Waiting for target to respawn...", Color3.fromRGB(255, 200, 100))
                            elseif tick() - targetLostTime > targetLostTimeout then
                                -- Try to find target player again (they might have respawned)
                                pcall(function()
                                    for _, player in pairs(Players:GetPlayers()) do
                                        if player.Name == selectedUser.username then
                                            targetPlayer = player
                                            targetLostTime = 0
                                            UpdateStatus("Target found, resuming follow", Color3.fromRGB(100, 255, 100))
                                            break
                                        end
                                    end
                                end)
                            end
                        end
                        
                        -- Only proceed with following if target exists
                        if targetExists and LocalPlayer and LocalPlayer.Character then
                            local humanoid = LocalPlayer.Character:FindFirstChild("Humanoid")
                            local rootPart = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            local targetHumanoid = targetPlayer.Character:FindFirstChild("Humanoid")
                            local targetRootPart = targetPlayer.Character:FindFirstChild("HumanoidRootPart")
                            
                            if humanoid and rootPart and targetRootPart then
                                -- Continue with normal following
                                -- Get positions
                                local myPosition = rootPart.Position
                                local targetPosition = targetRootPart.Position
                                
                                -- Record target's position in movement history (not as a fall)
                                if selectedUser then
                                    AddToMovementHistory(selectedUser.username, targetPosition, false)
                                end
                                
                                -- Update target position history
                                table.insert(targetPositionHistory, targetPosition)
                                if #targetPositionHistory > targetPositionHistoryLimit then
                                    table.remove(targetPositionHistory, 1)
                                end
                                
                                -- Calculate target velocity and speed
                                local targetPositionDelta = targetPosition - lastTargetPosition
                                targetVelocity = targetPositionDelta / 0.1 -- 0.1 is our wait time
                                targetSpeed = (targetPositionDelta * Vector3.new(1, 0, 1)).Magnitude / 0.1 -- Horizontal speed only
                                
                                -- Update target velocity history
                                if targetVelocity.Magnitude > 0.1 then -- Only record significant movement
                                    table.insert(targetVelocityHistory, targetVelocity)
                                    if #targetVelocityHistory > targetVelocityHistoryLimit then
                                        table.remove(targetVelocityHistory, 1)
                                    end
                                    
                                    -- Calculate acceleration
                                    if #targetVelocityHistory >= 2 then
                                        targetAcceleration = (targetVelocityHistory[#targetVelocityHistory] - targetVelocityHistory[#targetVelocityHistory-1]) / 0.1
                                    end
                                    
                                    -- Calculate direction change
                                    local currentDirection = targetVelocity.Unit
                                    if lastTargetDirection.Magnitude > 0 then
                                        local directionChange = 1 - lastTargetDirection:Dot(currentDirection)
                                        table.insert(targetDirectionChangeHistory, directionChange)
                                        if #targetDirectionChangeHistory > targetDirectionChangeLimit then
                                            table.remove(targetDirectionChangeHistory, 1)
                                        end
                                    end
                                    lastTargetDirection = currentDirection
                                end
                                
                                -- Calculate direction vector
                                local direction = (targetPosition - myPosition)
                                local distance = direction.Magnitude
                                direction = direction.Unit
                                
                                -- Check progress towards target and auto-jump if stuck
                                if tick() - lastProgressCheckTime > progressCheckInterval then
                                    -- If this is the first check, just initialize
                                    if lastDistanceToTarget == 0 then
                                        lastDistanceToTarget = distance
                                    else
                                        -- Calculate progress (negative value means we're getting farther)
                                        local progress = lastDistanceToTarget - distance
                                        
                                        -- If we're not making significant progress and we're not already close to target
                                        if progress < minProgressDistance and distance > followDistance * 1.5 then
                                            noProgressTime = noProgressTime + progressCheckInterval
                                            
                                            -- Only consider jumping if we're really stuck and there's an obstacle
                                            if noProgressTime >= noProgressJumpThreshold and jumpCooldown <= 0 then
                                                -- Check if there's actually an obstacle in front of us
                                                local obstacleInFront = false
                                                
                                                -- Cast a ray forward to check for obstacles
                                                local checkRay = Ray.new(myPosition + Vector3.new(0, 1, 0), direction * 3)
                                                local checkHit = workspace:FindPartOnRayWithIgnoreList(
                                                    checkRay,
                                                    {LocalPlayer.Character, targetPlayer.Character}
                                                )
                                                
                                                if checkHit then
                                                    obstacleInFront = true
                                                end
                                                
                                                -- Only jump if there's actually an obstacle
                                                if obstacleInFront then
                                                    humanoid.Jump = true
                                                    jumpCooldown = 1
                                                    noProgressTime = 0
                                                    UpdateStatus("Auto-jump - obstacle detected", Color3.fromRGB(255, 200, 100))
                                                else
                                                    -- If no obstacle, just reset the timer but don't jump
                                                    noProgressTime = noProgressTime / 2
                                                end
                                            end
                                        else
                                            -- Reset no progress timer if we're making progress
                                            noProgressTime = 0
                                        end
                                        
                                        -- Update last distance for next check
                                        lastDistanceToTarget = distance
                                    end
                                    
                                    lastProgressCheckTime = tick()
                                end
                                
                                -- Analyze environment for danger
                                local dangerLevel = AnalyzeEnvironment(myPosition)
                                
                                -- Predict target's future position based on movement history
                                local predictionTime = predictionTimeMultiplier
                                
                                -- Adjust prediction time based on target speed and environment
                                if targetSpeed > 10 then
                                    -- Increase prediction for fast targets
                                    predictionTime = predictionTimeMultiplier * math.min(targetSpeed / 10, 2)
                                end
                                
                                -- Reduce prediction in dangerous environments
                                if dangerLevel > 5 then
                                    predictionTime = predictionTime * (1 - (dangerLevel / 20))
                                end
                                
                                -- Get predicted position
                                local predictedPosition = PredictTargetPosition(targetPosition, predictionTime)
                                
                                -- Calculate the position to move to (keeping the desired distance)
                                local targetMovePosition = targetPosition - direction * followDistance
                                
                                -- Blend with predicted position based on prediction weight
                                if predictedPosition ~= targetPosition then
                                    local predictedDirection = (predictedPosition - myPosition).Unit
                                    local predictedMovePosition = predictedPosition - predictedDirection * followDistance
                                    
                                    -- Only use prediction if it's not too far from current position
                                    if (predictedMovePosition - targetMovePosition).Magnitude < followDistance * 2 then
                                        targetMovePosition = targetMovePosition:Lerp(predictedMovePosition, predictionWeight)
                                    end
                                end
                                
                                -- Check if the path is dangerous and find a safe alternative if needed
                                targetMovePosition = FindSafePath(myPosition, targetPosition, followDistance)
                                
                                -- Detect obstacles for steering behavior
                                local obstacles = DetectObstacles(myPosition, wallDetectionDistance * 2)
                                
                                -- Calculate steering vector
                                local steeringVector = CalculateSteeringVector(
                                    myPosition, 
                                    targetPosition, 
                                    targetMovePosition, 
                                    obstacles
                                )
                                
                                -- Apply steering to target position if not using pathfinding
                                if not isUsingPathfinding then
                                    -- Check if steering vector is a table with additional data
                                    local shouldJump = false
                                    local vectorMagnitude = 0
                                    
                                    if type(steeringVector) == "table" and steeringVector.vector then
                                        shouldJump = steeringVector.shouldJump
                                        vectorMagnitude = steeringVector.vector.Magnitude
                                        steeringVector = steeringVector.vector
                                    else
                                        vectorMagnitude = steeringVector.Magnitude
                                    end
                                    
                                    -- Process jump request from steering behavior
                                    if shouldJump and jumpCooldown <= 0 then
                                        humanoid.Jump = true
                                        jumpCooldown = 1
                                        UpdateStatus("AI-assisted jump over obstacle", Color3.fromRGB(100, 200, 255))
                                    end
                                    
                                    -- Apply steering if significant
                                    if vectorMagnitude > 0.1 then
                                        local steeringInfluence = steeringBehaviorWeight
                                        
                                        -- Apply more steering in dangerous environments
                                        if dangerLevel > 3 then
                                            steeringInfluence = steeringInfluence * (1 + (dangerLevel / 10))
                                        end
                                        
                                        -- Apply steering to target position
                                        targetMovePosition = targetMovePosition + (steeringVector * steeringInfluence)
                                    end
                                end
                                
                                -- Check if character is sitting and make it jump if needed
                                if sittingCheckCooldown <= 0 then
                                    sittingCheckCooldown = 0.5 -- Check every 0.5 seconds
                                    
                                    -- Check if humanoid is sitting
                                    if humanoid.Sit == true or humanoid:GetState() == Enum.HumanoidStateType.Seated then
                                        -- Character is sitting, make it jump to get unstuck
                                        humanoid.Jump = true
                                        humanoid.Sit = false -- Try to force stand up
                                        
                                        -- Try to exit seat if in one
                                        pcall(function()
                                            if humanoid.SeatPart then
                                                humanoid.Sit = false
                                                humanoid.SeatPart = nil
                        end
                    end)
                                        
                                        UpdateStatus("Detected sitting - jumping to get unstuck", Color3.fromRGB(255, 200, 100))
                                        jumpCooldown = 0.5 -- Short cooldown
                                    end
                                end
                                
                                -- Move to the position (use current navigation path if available)
                                if alternatePathAttempts == 0 and not isUsingPathfinding then
                                    humanoid:MoveTo(targetMovePosition)
                                end
                                
                                -- Check for obstacles with multiple raycasts
                                local obstacleDetected = false
                                local wallDetected = false
                                local wallNormal = Vector3.new(0,0,0)
                                
                                -- Forward ray check (longer distance for wall detection)
                                local forwardRay = Ray.new(myPosition, direction * wallDetectionDistance)
                                local forwardHit, forwardHitPos, forwardHitNormal = workspace:FindPartOnRayWithIgnoreList(
                                    forwardRay, 
                                    {LocalPlayer.Character, targetPlayer.Character}
                                )
                                
                                if forwardHit then
                                    obstacleDetected = true
                                    
                                    -- Check if it's a wall (vertical surface)
                                    if math.abs(forwardHitNormal.Y) < 0.5 then -- Not a floor or ceiling
                                        wallDetected = true
                                        wallNormal = forwardHitNormal
                                    end
                                end
                                
                                -- Check height difference
                                local heightDifference = targetMovePosition.Y - myPosition.Y
                                if heightDifference > 1.5 then
                                    obstacleDetected = true
                                end
                                
                                -- Additional ray checks for small obstacles
                                local smallObstacleDetected = false
                                local smallObstacleHeight = 0
                                
                                -- Cast multiple rays at different heights to better detect obstacles
                                local rayHeights = {0.5, 1, 1.5, 2}
                                local rayDistances = {2, 3, 4, 5}
                                
                                for i, height in ipairs(rayHeights) do
                                    local rayDist = rayDistances[i]
                                    local lowRay = Ray.new(myPosition + Vector3.new(0, height, 0), direction * rayDist)
                                    local lowHit, lowHitPos = workspace:FindPartOnRayWithIgnoreList(
                                        lowRay,
                                        {LocalPlayer.Character, targetPlayer.Character}
                                    )
                                    
                                    if lowHit then
                                        -- Calculate obstacle height
                                        local obstacleHeight = (lowHitPos - myPosition).Y
                                        smallObstacleHeight = math.max(smallObstacleHeight, obstacleHeight)
                                        
                                        -- If obstacle is small enough to jump over (less than 4 studs high)
                                        if obstacleHeight < 4 and obstacleHeight > 0.2 then
                                            smallObstacleDetected = true
                                            obstacleDetected = true
                                            break -- Found an obstacle, no need to check further
                                        end
                                    end
                                end
                                
                                -- Auto-jump for small obstacles
                                if smallObstacleDetected and jumpCooldown <= 0 then
                                    humanoid.Jump = true
                                    jumpCooldown = 1
                                    UpdateStatus("Jumping over small obstacle (" .. math.floor(smallObstacleHeight * 10) / 10 .. " studs)", Color3.fromRGB(255, 200, 100))
                                end
                                
                                -- Calculate movement since last check
                                local movementDelta = (myPosition - lastPosition).Magnitude
                                
                                -- Increment stuck counter if we haven't moved much
                                if movementDelta < 0.5 then
                                    stuckCounter = stuckCounter + 1
                                else
                                    stuckCounter = math.max(0, stuckCounter - 1) -- Decrease counter if moving
                                end
                                
                                -- Update last position
                                lastPosition = myPosition
                                
                                -- Handle being stuck
                                if stuckCounter > 20 then
                                    -- Jump if we're really stuck, there's an obstacle, and jump cooldown is ready
                                    if stuckCounter > 30 and jumpCooldown <= 0 then
                                        -- Check if there's actually an obstacle in front of us
                                        local stuckObstacleDetected = false
                                        
                                        -- Cast multiple rays to detect obstacles
                                        for i = 0, 3 do
                                            local rayDir = CFrame.Angles(0, math.rad(i * 90), 0) * direction
                                            local stuckRay = Ray.new(myPosition + Vector3.new(0, 0.5, 0), rayDir * 2)
                                            local stuckHit = workspace:FindPartOnRayWithIgnoreList(
                                                stuckRay,
                                                {LocalPlayer.Character, targetPlayer.Character}
                                            )
                                            
                                            if stuckHit then
                                                stuckObstacleDetected = true
                                                break
                                            end
                                        end
                                        
                                        -- Only jump if obstacle detected
                                        if stuckObstacleDetected then
                                            humanoid.Jump = true
                                            jumpCooldown = 1
                                            UpdateStatus("Jumping - stuck at obstacle", Color3.fromRGB(255, 150, 50))
                                        else
                                            -- Try moving in a random direction instead
                                            local randomAngle = math.random() * math.pi * 2
                                            local randomDir = CFrame.Angles(0, randomAngle, 0) * Vector3.new(0, 0, -1)
                                            humanoid:MoveTo(myPosition + randomDir * 5)
                                            stuckCounter = stuckCounter - 10
                                            UpdateStatus("Trying different direction", Color3.fromRGB(255, 200, 100))
                                        end
                                    end
                                    
                                    -- If we detect an obstacle and jump cooldown is ready
                                    if obstacleDetected and jumpCooldown <= 0 then
                                        -- Don't jump if there's a wall ahead - try to navigate around it
                                        if wallDetected and pathfindingCooldown <= 0 then
                                            -- Try pathfinding first if we've tried manual navigation a few times
                                            if navigationAttempts >= 2 and not isUsingPathfinding and pathUpdateCooldown <= 0 then
                                                -- Try to use pathfinding
                                                pathUpdateCooldown = pathUpdateInterval
                                                
                                                -- Only use pathfinding if distance is reasonable
                                                if distance < pathfindingMaxDistance then
                                                    UpdateStatus("Trying pathfinding navigation", Color3.fromRGB(100, 200, 255))
                                                    
                                                    -- Create a new path
                                                    if CreateNewPath(myPosition, targetMovePosition) then
                                                        -- Path created successfully
                                                        stuckCounter = 0
                                                        navigationAttempts = 0
                                                    else
                                                        -- Pathfinding failed, fall back to manual navigation
                                                        isUsingPathfinding = false
                                                    end
                                                end
                                            end
                                        end
                                        
                                        -- If pathfinding didn't work or isn't ready, use manual navigation
                                        if not isUsingPathfinding then
                                            -- If we've tried a few times, switch directions
                                            if navigationAttempts > 3 then
                                                navigationAttempts = 0
                                                alternatePathAttempts = alternatePathAttempts + 1
                                                
                                                -- Switch between left and right
                                                if lastNavigationDirection == "left" then
                                                    lastNavigationDirection = "right"
                                                else
                                                    lastNavigationDirection = "left"
                                                end
                                                
                                                -- If we've tried both directions multiple times, try jumping
                                                if alternatePathAttempts > 4 and jumpCooldown <= 0 then
                                                    humanoid.Jump = true
                                                    jumpCooldown = 2
                                                    alternatePathAttempts = 0
                                                    UpdateStatus("Jumping over obstacle", Color3.fromRGB(255, 200, 100))
                                                end
                                            else
                                                -- First attempt - choose a direction based on wall normal
                                                if navigationAttempts == 1 then
                                                    -- Use wall normal to determine better direction
                                                    local rightVector = Vector3.new(-direction.Z, 0, direction.X).Unit
                                                    local leftVector = -rightVector
                                                    
                                                    -- Dot product to determine which way to go
                                                    local rightDot = rightVector:Dot(wallNormal)
                                                    local leftDot = leftVector:Dot(wallNormal)
                                                    
                                                    if rightDot > leftDot then
                                                        lastNavigationDirection = "right"
                                                    else
                                                        lastNavigationDirection = "left"
                                                    end
                                                end
                                                
                                                -- Apply the navigation direction
                                                local sideVector
                                                if lastNavigationDirection == "right" then
                                                    sideVector = Vector3.new(-direction.Z, 0, direction.X).Unit * 5
                                                    UpdateStatus("Navigating right around obstacle", Color3.fromRGB(255, 200, 100))
                                                else
                                                    sideVector = Vector3.new(direction.Z, 0, -direction.X).Unit * 5
                                                    UpdateStatus("Navigating left around obstacle", Color3.fromRGB(255, 200, 100))
                                                end
                                                
                                                -- Move to the side
                                                local sidePosition = myPosition + sideVector
                                                humanoid:MoveTo(sidePosition)
                                                navigationTimeout = 5 -- Give it 5 seconds before resetting
                                            end
                                        end
                                        
                                        stuckCounter = 0
                                    elseif stuckCounter > 30 and pathfindingCooldown <= 0 then
                                        -- If we're stuck but don't detect an obstacle, try pathfinding
                                        if not isUsingPathfinding and pathUpdateCooldown <= 0 and distance < pathfindingMaxDistance then
                                            pathUpdateCooldown = pathUpdateInterval
                                            
                                            -- Try to use pathfinding
                                            if CreateNewPath(myPosition, targetMovePosition) then
                                                -- Path created successfully
                                                stuckCounter = 0
                                                navigationAttempts = 0
                                            else
                                                -- Pathfinding failed, use random movement
                                                local randomOffset = Vector3.new(
                                                    math.random(-3, 3),
                                                    0,
                                                    math.random(-3, 3)
                                                )
                                                humanoid:MoveTo(myPosition + randomOffset)
                                                pathfindingCooldown = 2
                                                stuckCounter = 0
                                            end
                                        else
                                            -- If pathfinding isn't available, use random movement
                                            local randomOffset = Vector3.new(
                                                math.random(-3, 3),
                                                0,
                                                math.random(-3, 3)
                                            )
                                            humanoid:MoveTo(myPosition + randomOffset)
                                            pathfindingCooldown = 2
                                            stuckCounter = 0
                                        end
                                    end
                                end
                                
                                -- If we're using pathfinding, follow the path
                                if isUsingPathfinding then
                                    -- Check if target has moved significantly
                                    local targetMoveDelta = (targetPosition - lastTargetPosition).Magnitude
                                    
                                    -- If target moved a lot, update path
                                    if targetMoveDelta > 10 and pathUpdateCooldown <= 0 then
                                        pathUpdateCooldown = pathUpdateInterval
                                        UpdateStatus("Target moved - updating path", Color3.fromRGB(100, 200, 255))
                                        CreateNewPath(myPosition, targetMovePosition)
                                    end
                                    
                                    -- Follow the current path
                                    FollowPath(humanoid, rootPart, targetPosition, followDistance)
                                end
                                
                                -- Update last positions for next check
                                lastPosition = currentPosition
                                lastTargetPosition = targetPosition
                            end
                        end
                    end)
                end
                
                -- Reset walk speed when stopped following
                pcall(function()
                    if LocalPlayer and LocalPlayer.Character then
                        local humanoid = LocalPlayer.Character:FindFirstChild("Humanoid")
                        if humanoid then
                            humanoid.WalkSpeed = 16 -- Default walk speed
                        end
                    end
                end)
                
                -- Clean up pathfinding when stopped following
                CleanupPathfinding()
            end)
        else
            -- Stop following
            UpdateStatus("Stopped", Color3.fromRGB(200, 200, 200))
            GoButton.BackgroundColor3 = Color3.fromRGB(70, 90, 220)
            GoButton.Text = "GO"
            
            -- Reset walk speed
            pcall(function()
                if LocalPlayer and LocalPlayer.Character then
                    local humanoid = LocalPlayer.Character:FindFirstChild("Humanoid")
                    if humanoid then
                        humanoid.WalkSpeed = 16 -- Default walk speed
                    end
                end
            end)
            
            -- Clean up pathfinding
            CleanupPathfinding()
        end
    end)
end

GoButton.MouseButton1Click:Connect(FollowPlayer)

-- Add shadow effect to main frame
local Shadow = Instance.new("ImageLabel")
Shadow.Name = "Shadow"
Shadow.Parent = MainFrame
Shadow.BackgroundTransparency = 1
Shadow.Position = UDim2.new(0, -15, 0, -15)
Shadow.Size = UDim2.new(1, 30, 1, 30)
Shadow.ZIndex = -1
Shadow.Image = "rbxassetid://6014261993"
Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
Shadow.ImageTransparency = 0.5
Shadow.ScaleType = Enum.ScaleType.Slice
Shadow.SliceCenter = Rect.new(49, 49, 450, 450)

-- Add a close button
local CloseButton = Instance.new("TextButton")
CloseButton.Name = "CloseButton"
CloseButton.Parent = MainFrame
CloseButton.BackgroundTransparency = 1
CloseButton.Position = UDim2.new(1, -40, 0, 15)
CloseButton.Size = UDim2.new(0, 25, 0, 25)
CloseButton.Font = Enum.Font.GothamBold
CloseButton.Text = "x"
CloseButton.TextColor3 = Color3.fromRGB(200, 200, 200)
CloseButton.TextSize = 18
CloseButton.ZIndex = 2

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
    isFollowing = false
end)

-- Add hover effects
GoButton.MouseEnter:Connect(function()
    if isFollowing then
        GoButton.BackgroundColor3 = Color3.fromRGB(240, 100, 80)
    else
        GoButton.BackgroundColor3 = Color3.fromRGB(90, 110, 240)
    end
end)

GoButton.MouseLeave:Connect(function()
    if isFollowing then
        GoButton.BackgroundColor3 = Color3.fromRGB(220, 90, 70)
    else
        GoButton.BackgroundColor3 = Color3.fromRGB(70, 90, 220)
    end
end)

CloseButton.MouseEnter:Connect(function()
    CloseButton.TextColor3 = Color3.fromRGB(255, 100, 100)
end)

CloseButton.MouseLeave:Connect(function()
    CloseButton.TextColor3 = Color3.fromRGB(200, 200, 200)
end)

-- Add a subtle animation to the title
spawn(function()
    while wait(0.1) do
        if not ScreenGui or not ScreenGui.Parent then break end
        
        for i = 0, 1, 0.02 do
            if not ScreenGui or not ScreenGui.Parent then break end
            Title.TextColor3 = Color3.fromRGB(240, 240, 240):Lerp(Color3.fromRGB(70, 90, 220), i)
            wait(0.05)
        end
        
        for i = 0, 1, 0.02 do
            if not ScreenGui or not ScreenGui.Parent then break end
            Title.TextColor3 = Color3.fromRGB(70, 90, 220):Lerp(Color3.fromRGB(240, 240, 240), i)
            wait(0.05)
        end
    end
end)

-- Add cleanup function and connection
local cleanupFunction = nil
local scriptTerminating = false

-- Cleanup function to stop all movement and reset state
local function CleanupScript()
    if scriptTerminating then return end -- Prevent multiple calls
    scriptTerminating = true
    
    -- Stop following
    isFollowing = false
    
    -- Reset humanoid properties
    pcall(function()
        if LocalPlayer and LocalPlayer.Character then
            local humanoid = LocalPlayer.Character:FindFirstChild("Humanoid")
            if humanoid then
                -- Stop movement
                humanoid:MoveTo(LocalPlayer.Character.HumanoidRootPart.Position)
                humanoid.WalkSpeed = 16
                humanoid.Jump = false
                humanoid.Sit = false
            end
        end
    end)
    
    -- Update status if GUI still exists
    pcall(function()
        if StatusLabel then
            UpdateStatus("Script terminated", Color3.fromRGB(255, 100, 100))
        end
    end)
end

-- Connect to script termination events
cleanupFunction = game:GetService("Players").LocalPlayer.CharacterRemoving:Connect(function()
    CleanupScript()
end)

-- Connect to GUI removal
ScreenGui.AncestryChanged:Connect(function(_, newParent)
    if newParent == nil then
        CleanupScript()
        
        -- Disconnect cleanup function to prevent memory leaks
        if cleanupFunction then
            cleanupFunction:Disconnect()
            cleanupFunction = nil
        end
    end
end)

-- Connect to close button
CloseButton.MouseButton1Click:Connect(function()
    CleanupScript()
    ScreenGui:Destroy()
    isFollowing = false
    
    -- Disconnect cleanup function
    if cleanupFunction then
        cleanupFunction:Disconnect()
        cleanupFunction = nil
    end
end)

-- Initialize by loading dangerous areas
pcall(function()
    LoadDangerousAreas()
end)

-- Add a periodic save function
spawn(function()
    while wait(saveDataInterval) do
        if not scriptTerminating then
            SaveMovementHistory()
        else
            break
        end
    end
end)

-- Add pathfinding cleanup to script termination
local oldCleanupScript = CleanupScript
CleanupScript = function()
    -- Clean up pathfinding
    CleanupPathfinding()
    
    -- Save data before cleaning up
    SaveMovementHistory()
    
    -- Call the original cleanup function
    oldCleanupScript()
end

-- Toggle menu function
local function ToggleMenu()
    menuVisible = not menuVisible
    MainFrame.Visible = menuVisible
    
    -- Only show notification briefly when closing the menu
    if not menuVisible then
        ToggleNotification.Visible = true
        
        -- Hide notification after 5 seconds
        spawn(function()
            wait(5)
            if not menuVisible then -- Only hide if menu is still closed
                ToggleNotification.Visible = false
            end
        end)
    else
        ToggleNotification.Visible = false
    end
end

-- Keybind for toggling menu
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == Enum.KeyCode.RightControl then
        ToggleMenu()
    end
end)

-- Function to select a random player
local function SelectRandomPlayer()
    pcall(function()
        -- Get all players
        local playerList = Players:GetPlayers()
        local validPlayers = {}
        
        -- Find valid players (not the local player)
        for _, player in pairs(playerList) do
            if player ~= LocalPlayer and player.Character then
                table.insert(validPlayers, player)
            end
        end
        
        -- If we found valid players, select a random one
        if #validPlayers > 0 then
            local randomPlayer = validPlayers[math.random(1, #validPlayers)]
            
            -- Set as selected user
            selectedUser = {
                username = randomPlayer.Name,
                userId = randomPlayer.UserId,
                displayName = ""
            }
            
            -- Try to get display name
            pcall(function()
                selectedUser.displayName = randomPlayer.DisplayName
            end)
            
            -- Update selected user display
            pcall(function()
                if SelectedUserFrame and SelectedUsername and SelectedAvatar then
                    SelectedUserFrame.Visible = true
                    
                    -- Show display name if available, otherwise username
                    if selectedUser.displayName and selectedUser.displayName ~= "" and 
                       selectedUser.displayName:lower() ~= selectedUser.username:lower() then
                        SelectedUsername.Text = selectedUser.displayName .. " (@" .. selectedUser.username .. ")"
                    else
                        SelectedUsername.Text = selectedUser.username
                    end
                    
                    -- Try to load the user's avatar
                    pcall(function()
                        SelectedAvatar.Image = Players:GetUserThumbnailAsync(
                            selectedUser.userId, 
                            Enum.ThumbnailType.HeadShot, 
                            Enum.ThumbnailSize.Size420x420
                        )
                    end)
                    
                    -- Fallback if avatar loading fails
                    if not SelectedAvatar.Image or SelectedAvatar.Image == "" then
                        SelectedAvatar.Image = "rbxassetid://7962146544"
                    end
                end
            end)
            
            -- Update status
            UpdateStatus("Randomly selected: " .. randomPlayer.Name, Color3.fromRGB(100, 200, 255))
        else
            UpdateStatus("No other players found to select", Color3.fromRGB(255, 100, 100))
        end
    end)
end

-- Connect Random button
RandomButton.MouseButton1Click:Connect(SelectRandomPlayer)

-- Add hover effects for Random button
RandomButton.MouseEnter:Connect(function()
    RandomButton.BackgroundColor3 = Color3.fromRGB(80, 100, 200)
end)

RandomButton.MouseLeave:Connect(function()
    RandomButton.BackgroundColor3 = Color3.fromRGB(60, 80, 180)
end)

-- Create Random button
RandomButton.Name = "RandomButton"
RandomButton.Parent = MainFrame
RandomButton.BackgroundColor3 = Color3.fromRGB(60, 80, 180)
RandomButton.Position = UDim2.new(0, 560, 0, 91)
RandomButton.Size = UDim2.new(0, 64, 0, 52)
RandomButton.Font = Enum.Font.GothamBold
RandomButton.Text = "R"
RandomButton.TextColor3 = Color3.fromRGB(240, 240, 240)
RandomButton.TextSize = 22.000
RandomButton.BorderSizePixel = 0

RandomButtonUICorner.CornerRadius = UDim.new(0, 8)
RandomButtonUICorner.Parent = RandomButton
