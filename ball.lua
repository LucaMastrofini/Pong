Ball = Entity:extend()

function Ball:new()
    Ball.super.new(self, love.graphics.getWidth()/2 - 10, love.graphics.getHeight()/2 - 10, 20, 20)
    self.xSpeed = 300
    self.ySpeed = math.random(-300, 300)
end

function Ball:update(dt)
    Ball.super.update(self, dt)

    if self.y <= 0 then
        self.y = 0
        self.ySpeed = -self.ySpeed
    elseif self.y + self.height >= love.graphics.getHeight() then
        self.y = love.graphics.getHeight() - self.height
        self.ySpeed = -self.ySpeed
    end

    if self.x <= 0 then 
        self.x = love.graphics.getWidth()/2 - self.width/2
        self.y = love.graphics.getHeight()/2 - self.height/2
        self.xSpeed = 300
        self.ySpeed = math.random(-300, 300)
    elseif self.x + self.width >= love.graphics.getWidth() then
         self.x = love.graphics.getWidth()/2 - self.width/2
        self.y = love.graphics.getHeight()/2 - self.height/2
        self.xSpeed = -300
        self.ySpeed = math.random(-300, 300)
    end
end

function Ball:draw()
    Ball.super.draw(self)
end

return Ball