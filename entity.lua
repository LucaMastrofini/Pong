-- Object = require "libraries/classic"

Entity = Object:extend()

function Entity:new(x, y, width, height)
    self.x = x
    self.y = y
    self.width = width
    self.height = height
    self.xSpeed = 0
    self.ySpeed = 0
end

function Entity:update(dt)
    self.x = self.x + self.xSpeed * dt
    self.y = self.y + self.ySpeed * dt
end

function Entity:draw()
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end

function Entity:collides(other)
    return self.x < other.x + other.width and
            self.x + self.width > other.x and
            self.y < other.y + other.height and
            self.y + self.height > other.y
end

function Entity:onCollision(other)
    if other.x < self.x then -- check if I hit left or right
        self.x = other.x + self.width --set ball on right edge
        love.audio.play(sounds.blip)
    else
        self.x = other.x - self.width --set ball on left edge
        love.audio.play(sounds.blip)
    end
    self.xSpeed = self.xSpeed * -1--invert xSpeed + increase speed by 5%

end



return Entity