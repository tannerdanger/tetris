--[[

]]
--VIRTUAL_WIDTH = 384
--VIRTUAL_HEIGHT = 216

WINDOW_WIDTH = 1920
WINDOW_HEIGHT = 1080

VIRTUAL_WIDTH = 1920
VIRTUAL_HEIGHT = 1080

BOARD_ROWS = 20
BOARD_COLS = 10

TILE_SIZE = 32


gTextures = {
    --[[
    ['grey'] = love.graphics.newImage('assets/blocks/grey48.png'),
    ['blue'] = love.graphics.newImage('assets/blocks/blue48.png'),
    ['green'] = love.graphics.newImage('assets/blocks/green48.png'),
    ['yellow'] = love.graphics.newImage('assets/blocks/yellow48.png'),
    ['red'] = love.graphics.newImage('assets/blocks/red48.png'),
    ['pink'] = love.graphics.newImage('assets/blocks/pink48.png'),
    ['light_blue'] = love.graphics.newImage('assets/blocks/light_blue48.png')
    ]]
    ['grey'] = love.graphics.newImage('assets/blocks/grey.png'),
    ['blue'] = love.graphics.newImage('assets/blocks/blue.png'),
    ['green'] = love.graphics.newImage('assets/blocks/green.png'),
    ['yellow'] = love.graphics.newImage('assets/blocks/yellow.png'),
    ['red'] = love.graphics.newImage('assets/blocks/red.png'),
    ['pink'] = love.graphics.newImage('assets/blocks/pink.png'),
    ['light_blue'] = love.graphics.newImage('assets/blocks/light_blue.png')
}

gFrames = {
    -- ['tiles'] = GenerateQuads(gTextures['tiles'])
}

gFonts = {
    ['title'] = love.graphics.newFont('assets/fonts/ArcadeAlternate.ttf', 80),
    ['subtitle'] = love.graphics.newFont('assets/fonts/ArcadeAlternate.ttf', 32)
}

gSounds = {

}

gColors = {
    white = {1, 1, 1},
    yellow = {1,1,0.18}
}

gAlphas = {
    half = 0.5,
    total = 0,
    opaque = 1
}

--smaller = faster
gSpeeds = {
    [1] = 1.15,
    [2] = 1.05,
    [3] = 0.95,
    [4] = 0.85,
}

BRICK_START = {
    x = 0,
    y = 0
}



KEY_BLOCK = {
    x = (0.5 * TILE_SIZE) + (TILE_SIZE*3),
    y = (- 0.5 * TILE_SIZE) - TILE_SIZE
}