Game = Object:extend()

function Game:new()
    self.padLeft = Pad("up", "down")
    self.padRight = Pad("w", "s")
    self.padRight.x = love.graphics.getWidth() - 60
end

function Game:update(dt)
    self.padLeft:update(dt)
    self.padRight:update(dt)
end

function Game:draw()
    self.padLeft:draw()
    self.padRight:draw()
end

return Game