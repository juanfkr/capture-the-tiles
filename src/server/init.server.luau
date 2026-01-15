local RStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")

-- tile handler
local TileHandler = require(RStorage.Shared.TileHandler)
local tiles = Workspace.Tiles

for _, tile in pairs(tiles:GetChildren()) do
	local tileInstance = TileHandler.new(tile)

	tile.Touched:Connect(function(hit)
		tileInstance:setColor(Color3.fromRGB(255, 0, 0), hit)
	end)
end
