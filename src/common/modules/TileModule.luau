local Tile = {}
Tile.__index = Tile 

function Tile.new(part: Part)
    local self = setmetatable({}, Tile)
    self.part = part
    return self
end

-- muda a cor do tile
function Tile:setColor(color: BrickColor, hit)
    if not self:wasTouchedByPlayer(hit) then return end
    if self:alreadyCaptured() then return end

    self.part.BrickColor = color
    
    print("Tile color changed to:", color)
end

-- Verifica se o tile foi tocado por um jogador
function Tile:wasTouchedByPlayer(hit): boolean
    return hit.Parent:FindFirstChild("Humanoid")
end

-- verifica se o tile ja foi capturado
function Tile:alreadyCaptured(): boolean
    return self.part.Color == BrickColor.new("Lapis")
end

return Tile