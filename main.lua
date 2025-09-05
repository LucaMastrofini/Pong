function love.load()
    Object = require "libraries/classic"
    Entity = require "entity"
    Pad = require "pad"
    Ball = require "ball"
    Game = require "game"
    game = Game()
    sounds = {}
    sounds.blip = love.audio.newSource("sounds/blip.wav", "static")
end

function love.update(dt)
    game:update(dt)
end

function love.draw()
    game:draw()
end