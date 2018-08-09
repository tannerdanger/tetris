--[[
    GD50
    Legend of Zelda

    -- constants --

    Author: Colton Ogden
    cogden@cs50.harvard.edu
]]

--VIRTUAL_WIDTH = 384
--VIRTUAL_HEIGHT = 216

WINDOW_WIDTH = 1920
WINDOW_HEIGHT = 1080

VIRTUAL_WIDTH = WINDOW_WIDTH
VIRTUAL_HEIGHT = WINDOW_HEIGHT

BOARD_HEIGHT = 20
BOARD_WIDTH = 10

TILE_SIZE = 32
COUNT_TIME = 0.75

gTextures = {

  --  ['blue'] = love.graphics.newImage('assets/blocks/blue_panel.png'),
    ['blue_x'] = love.graphics.newImage('assets/blocks/blue_boxCross.png') ,

  --  ['green'] = love.graphics.newImage('assets/blocks/green_panel.png'),
    ['green_x'] = love.graphics.newImage('assets/blocks/green_boxCross.png') ,
  --  ['yellow'] = love.graphics.newImage('assets/blocks/yellow_panel.png'),
    ['yellow_x'] = love.graphics.newImage('assets/blocks/yellow_boxCross.png') ,
    ['grey'] = love.graphics.newImage('assets/blocks/grey_panel.png'),
    ['grey_x'] = love.graphics.newImage('assets/blocks/grey_boxCross.png') ,
    ['purple'] = love.graphics.newImage('assets/blocks/purple_panel.png'),
    ['purple_x'] = love.graphics.newImage('assets/blocks/purple_boxCross.png') ,
   -- ['red'] = love.graphics.newImage('assets/blocks/red_panel.png'),
    ['red_x'] = love.graphics.newImage('assets/blocks/red_boxCross.png'),


  --  ['dark_blue'] = love.graphics.newImage('assets/blocks/tinablue.png'),
    ['green'] = love.graphics.newImage('assets/blocks/Kochi.png'),
    ['yellow'] = love.graphics.newImage('assets/blocks/geneblock.png'),
  --  ['grey'] = love.graphics.newImage('assets/blocks/bobblock.png'),
  --  ['pink'] = love.graphics.newImage('assets/blocks/louiseblock.png'),
    ['red'] = love.graphics.newImage('assets/blocks/LindaBlock.png'),
  --  ['red_x'] = love.graphics.newImage('assets/blocks/red_boxCross.png'),
  --  ['blue_x'] = love.graphics.newImage('assets/blocks/blue_boxCross.png') ,
  --  ['purple_x'] = love.graphics.newImage('assets/blocks/purple_boxCross.png') ,
  --  ['grey_x'] = love.graphics.newImage('assets/blocks/grey_boxCross.png') ,
  --  ['yellow_x'] = love.graphics.newImage('assets/blocks/yellow_boxCross.png') ,
  --  ['green_x'] = love.graphics.newImage('assets/blocks/green_boxCross.png') ,
    ['light_blue'] = love.graphics.newImage('assets/blocks/tinablue.png')
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