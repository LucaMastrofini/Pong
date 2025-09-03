function love.load()
    Object = require "libraries/classic"
    Entity = require "entity"
    Pad = require "pad"
    Ball = require "ball"
    Game = require "game"
    game = Game()
end

function love.update(dt)
    game:update(dt)
end

function love.draw()
    game:draw()
end