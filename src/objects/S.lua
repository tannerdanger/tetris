--
-- Created By: Tanner Brown
-- Date: 8/7/2018
--

S = Class{__includes = Tetrino}

function S:init()
    local center = VIRTUAL_WIDTH / 2
    self.rotationPos = 0


    self.positions = {
        ['BASE'] = {
            {0,0},{1,0},{1,-1},{2,-1}
        },
        [1] = {
            {0,-1},{0,0},{0,0},{-2,-1}
        },
        [2] = {
            {0,1},{0,0},{0,0},{2,1}
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

    return S
end

function S:rotateLeft()

    self:rotateRight()

end


function S:rotateRight()
--TODO: if collides, wallkick
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