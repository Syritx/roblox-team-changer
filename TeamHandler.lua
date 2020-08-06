-- script in serverScriptService for the server side

local replicatedStorage = game:GetService("ReplicatedStorage")
local teamChosenEvent = replicatedStorage:WaitForChild("PlayerChooseTeam") -- a RemoteEvent

-- set the deafult team to a choosing team
game.Players.PlayerAdded:Connect(function(player)
    local defaultColor = BrickColor.new("CHOOSING_TEAM_COLOR_HERE")
    player.TeamColor = defaultColor
end)

-- player changing their team
teamChosenEvent.OnServerEvent:Connect(function(player,teamColor)
    local playerInPlayers = game.Players[player.Name]
    playerInPlayers.TeamColor = teamColor
end)