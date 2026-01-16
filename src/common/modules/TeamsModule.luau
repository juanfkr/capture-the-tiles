local Teams = {}
Teams.__index = Teams

local TeamsService = game:GetService("Teams")

function Teams.new()
    local self = setmetatable({}, Teams)
    self.Team = Instance.new("Team")
    return self
end

function Teams:initializeTeam(name: string, color: BrickColor, autoAssignable: boolean)
    self.name = name
    self.color = color
    self.autoAssignable = autoAssignable or false
    
    self.Team.Name = name
    self.Team.TeamColor = color
    self.Team.AutoAssignable = self.autoAssignable
    self.Team.Parent = TeamsService

    print("Time criado --- Nome: " .. self.name .. " // Cor: " .. tostring(self.color) .. " // Auto assignable: " .. tostring(self.autoAssignable))
    
    return self
end

return Teams