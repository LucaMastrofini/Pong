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
    if self.ball:collides(self.padLeft) then  
        self.ball:onCollision(self.padLeft)
    elseif self.ball:collides(self.padRight) then
        self.ball:onCollision(self.padRight)
    end
end

function Game:draw()
    self.padLeft:draw()
    self.padRight:draw()
    self.ball:draw()
end

return Game