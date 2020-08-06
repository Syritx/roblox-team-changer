-- localscript in a gui button for changing team

local replicatedStorage = game:GetService("ReplicatedStorage")
local teamChosenEvent = replicatedStorage:WaitForChild("PlayerChooseTeam") -- a RemoteEvent

local teamColor = BrickColor.new("TEAM_COLOR_TO_CHOOSE")

script.Parent.MouseButton1Click:Connect(function()
    teamChosenEvent:FireServer(teamColor)
end)