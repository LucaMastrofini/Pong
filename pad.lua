--Entity = require "entity"

Pad = Entity:extend()

function Pad:new(keyUp, keyDown)
    Pad.super.new(self, 50, 100, 10, 100)
    self.keyUp = keyUp
    self.keyDown = keyDown
end

function Pad:update(dt)
    if love.keyboard.isDown(self.keyUp) and self.y >= 0 then 
        self.ySpeed = -400
    elseif love.keyboard.isDown(self.keyDown) and self.y + self.height <= love.graphics.getHeight()  then
        self.ySpeed = 400
    else
        self.ySpeed = 0
    end

    Pad.super.update(self, dt) -- call the parent update method
end

function Pad:draw()
    Pad.super.draw(self) -- call the parent draw method
end

return Pad