--
-- User: Tanner
-- Date: 8/6/2018
-- Tetris O.lua
--

O = Class{__includes = Tetrino}

function O:init()
    local center = VIRTUAL_WIDTH / 2
    self.img = gTextures['red']
    self.blocks = {
        [1] = Block(gTextures['red'], 1, 0),
        [2] = Block(gTextures['light_blue'], 1, -1),
        [3] = Block(gTextures['green'], 2, -1),
        [4] = Block(gTextures['yellow'], 2, 0),
    }
    return O

end

function O:rotateLeft()

end


function O:rotateRight()

end



