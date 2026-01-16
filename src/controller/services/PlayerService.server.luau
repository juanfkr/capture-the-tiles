local Player = game:GetService("Players")

local PlayerModule = require(game.ReplicatedStorage.modules.PlayerModule)

Player.PlayerAdded:Connect(function(thisPlayer: Player) 
    local player = PlayerModule.new(thisPlayer)

    print("Player: " .. player:getName() .. " entrou no jogo")
    print("Cor do time: " .. tostring(player:getTeamColor()))
end)
