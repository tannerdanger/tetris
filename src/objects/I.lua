--
-- Created by IntelliJ IDEA.
-- User: Tanner
-- Date: 8/5/2018
-- Time: 11:39 AM
-- To change this template use File | Settings | File Templates.
--

--[[
--TODO: Consolodate rotation into 1 function and have it select if pos goes up or down depending on direction
 ]]
--for i = 1, 4 do
--    self.blocks[i] =
--end

I = Class{__includes = Tetrino}

function I:init()
    local center = VIRTUAL_WIDTH / 2
    self.rotationPos = 0


    self.positions = {
        ['BASE'] = {
            {0,0},
            {1,0},
            {2,0},
            {3,0}
        },
        [1] = {
            {1,1},
            {0,0},
            {-1,-1},
            {-2,-2}
        },
        [2] = {
            {-1,-1},
            {0,0},
            {1, 1},
            {2, 2}
        }
    }
   -- print_r(self.positions['BASE'])



    self.blocks = {}
    for i = 1, 4 do
        self.blocks[i] = Block(gTextures['red'], self.positions['BASE'][i][1], self.positions['BASE'][i][2])
    end


    return I
end

function I:rotateLeft()
    if self.rotationPos == 1 then
        for i = 1, 4 do
            self.blocks[i].x = self.blocks[i].x + self.positions[2][i][1] * TILE_SIZE
            self.blocks[i].y = self.blocks[i].y + self.positions[2][i][2] * TILE_SIZE
        end
        self.rotationPos = 2
    else
        for i = 1, 4 do
            self.blocks[i].x = self.blocks[i].x + self.positions[1][i][1] * TILE_SIZE
            self.blocks[i].y = self.blocks[i].y + self.positions[1][i][2] * TILE_SIZE
        end
        self.rotationPos = 1
    end


end


function I:rotateRight()
    if self.rotationPos == 1 then
        for i = 1, 4 do
            self.blocks[i].x = self.blocks[i].x + self.positions[2][i][1] * TILE_SIZE
            self.blocks[i].y = self.blocks[i].y + self.positions[2][i][2] * TILE_SIZE
        end
        self.rotationPos = 2
    else
        for i = 1, 4 do
            self.blocks[i].x = self.blocks[i].x + self.positions[1][i][1] * TILE_SIZE
            self.blocks[i].y = self.blocks[i].y + self.positions[1][i][2] * TILE_SIZE
        end
        self.rotationPos = 1
    end
end



--[[

function I:moveLeft()

end

function I:moveRight()

end

function I:drop()

end

function I:collide(object)

end

function I:render()
    for i = 1, 4 do
        self.blocks[i]:render()
    end
end
]]