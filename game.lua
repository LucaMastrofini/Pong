Game = Object:extend()

function Game:new()
    self.padLeft = Pad("w", "s")
    self.padRight = Pad("up", "down")
    self.padRight.x = love.graphics.getWidth() - 60
    self.ball = Ball()
end

function Game:update(dt)
    self.padLeft:update(dt)
    self.padRight:update(dt)
    self.ball:update(dt)
end

function Game:draw()
    self.padLeft:draw()
    self.padRight:draw()
    self.ball:draw()
end

return Game