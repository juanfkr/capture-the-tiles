local RStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")

-- tile handler
local TileModule = require(RStorage.modules.TileModule)
local tiles = Workspace.Tiles


for _, tile in pairs(tiles:GetChildren()) do
	local tileInstance = TileModule.new(tile)

	tile.Touched:Connect(function(hit)
		-- armazena cor do time do player
		local character = Players:GetPlayerFromCharacter(hit.Parent)
		local playerTeamColor = character.TeamColor

		-- pinta o tile
		tileInstance:setColor(playerTeamColor, hit)
	end)
end
