local TeamsModule = require(game.ReplicatedStorage.modules.TeamsModule)

print("teams service test")

-- criação dos times
local BlueTeam = TeamsModule.new()
local RedTeam = TeamsModule.new()

-- inicialização dos times
BlueTeam:initializeTeam("Blue Team", BrickColor.new("Lapis"), false)
RedTeam:initializeTeam("Red Team", BrickColor.new("Really red"), false)
