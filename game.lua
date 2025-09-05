Game = Object:extend()

function Game:new()
    self.padLeft = Pad("w", "s")
    self.padRight = Pad("up", "down")
    self.padRight.x = love.graphics.getWidth() - 60
    self.ball = Ball()

    self.scoreLeft = 0
    self.scoreRight = 0
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
    if self.ball:getOutOfBounds() == "left" then
        self.scoreRight = self.scoreRight + 1
        self.ball = Ball()
    elseif self.ball:getOutOfBounds() == "right" then
        self.scoreLeft = self.scoreLeft + 1
        self.ball = Ball()
    end
end

function Game:draw()
    self.padLeft:draw()
    self.padRight:draw()
    self.ball:draw()
    love.graphics.print(self.scoreLeft, love.graphics.getWidth()/4, 10)
    love.graphics.print(self.scoreRight, 3*love.graphics.getWidth()/4, 10)  -- to draw score relative to screen width
    -- it is good to use fractions (numerator * width / denominator)
end

return Game