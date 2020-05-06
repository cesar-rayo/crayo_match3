Class = require 'libs/class'
Timer = require 'libs/knife.timer'
push = require 'libs/push'

require 'src/stateMachine/StateMachine'
require 'libs/Util'
require 'src/Constants'

-- game pieces
require 'src/Board'
require 'src/Tile'

-- game states
require 'src/stateMachine/states/BaseState'
require 'src/stateMachine/states/BeginGameState'
require 'src/stateMachine/states/GameOverState'
require 'src/stateMachine/states/PlayState'
require 'src/stateMachine/states/StartState'

gSounds = {
    ['music'] = love.audio.newSource('sounds/music3.mp3', 'static'),
    ['select'] = love.audio.newSource('sounds/select.wav', 'static'),
    ['error'] = love.audio.newSource('sounds/error.wav', 'static'),
    ['match'] = love.audio.newSource('sounds/match.wav', 'static'),
    ['clock'] = love.audio.newSource('sounds/clock.wav', 'static'),
    ['game-over'] = love.audio.newSource('sounds/game-over.wav', 'static'),
    ['next-level'] = love.audio.newSource('sounds/next-level.wav', 'static')
}

gTextures = {
    ['main'] = love.graphics.newImage('images/match3.png'),
    ['background'] = love.graphics.newImage('images/background.png')
}

gFrames = {
    -- divided into sets for each tile type in this game, instead of one large
    -- table of Quads
    ['tiles'] = GenerateTileQuads(gTextures['main'])
}

-- this time, we're keeping our fonts in a global table for readability
gFonts = {
    ['small'] = love.graphics.newFont('fonts/font.ttf', 8),
    ['medium'] = love.graphics.newFont('fonts/font.ttf', 16),
    ['large'] = love.graphics.newFont('fonts/font.ttf', 32)
}