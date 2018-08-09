--
-- Created By: Tanner
-- Date: 8/6/2018
--


--[[
--TODO: Consolodate rotation into 1 function and have it select if pos goes up or down depending on direction
 ]]
--for i = 1, 4 do
--    self.blocks[i] =
--end

T = Class{__includes = Tetrino}

function T:init()
    local center = VIRTUAL_WIDTH / 2
    self.rotationPos = 0


    self.positions = {
        ['BASE'] = {
            {0,0},{1,0},{1,-1},{2,0}
        },
        [1] = {
            {1,-2},{0,0},{0,0},{0, -1}
        },
        [2] = {
            {-1,1},{0,0},{0,0},{0,0}
        },
        [3] = {
            {0,0},{0,0},{0,0},{-1, -1}
        },
        [4] = {
            {0,1},{0,0},{0,0},{1, 2}
        }
    }
    print_r(self.positions['BASE'])

    self.blocks = {}
    for i = 1, 4 do
        self.blocks[i] = Block(gTextures['red'], self.positions['BASE'][i][1], self.positions['BASE'][i][2])
    end
    self.blocks[1].image = gTextures['light_blue']
    self.blocks[2].image = gTextures['green']
    self.blocks[3].image = gTextures['yellow']
    return T
end

function T:rotateLeft()

    self:rotateRight()

end


function T:rotateRight()

    if self.rotationPos ==4 then
        self.rotationPos = 1
    else
        self.rotationPos = self.rotationPos + 1

    end
    print("current rotation pos :  " .. self.rotationPos)

    for i = 1, 4 do
        self.blocks[i].x = self.blocks[i].x + self.positions[self.rotationPos][i][1] * TILE_SIZE
        self.blocks[i].y = self.blocks[i].y + self.positions[self.rotationPos][i][2] * TILE_SIZE
    end



end