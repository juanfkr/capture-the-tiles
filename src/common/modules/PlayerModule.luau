local Player = {}
Player.__index = Player

function Player.new(player: Player)
    local self = setmetatable({}, Player)
    self.player = player
    return self
end

function Player:getName(): string
    return self.player.Name
end

function Player:getTeamColor(): BrickColor
    return self.player.TeamColor
end

return Player