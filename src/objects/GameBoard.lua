--
-- Created by IntelliJ IDEA.
-- User: Tanner
-- Date: 8/4/2018
-- Time: 11:44 AM
-- To change this template use File | Settings | File Templates.
--

--GameBoard = Class{__includes = BaseState}
GameBoard = Class{}

function GameBoard:init()
    self.height = BOARD_HEIGHT * TILE_SIZE
    self.width = BOARD_WIDTH * TILE_SIZE
    self.x = (WINDOW_WIDTH / 2) - self.width / 2
    self.y = (WINDOW_HEIGHT - self.height ) / 2

    print(self.height)

    KEY_BLOCK.x = self.x + TILE_SIZE*3
    KEY_BLOCK.y = self.y - TILE_SIZE*2


    self.grid = false


end


function GameBoard:update(dt)

end

function GameBoard:render()


    love.graphics.setColor(0,1,0,1)
    love.graphics.rectangle('line', self.x, self.y, self.width, self.height)
   -- love.graphics.draw(gTextures['red'], WINDOW_WIDTH /2, WINDOW_HEIGHT /2)
    love.graphics.setColor(1,1,1,1)

    if self.grid then
        love.graphics.setColor(1,1,1,0.9)
        for col = 1, 9 do
            local x = self.x + TILE_SIZE * col
            love.graphics.line(x , self.y , x, self.height)
        end

        for row = 1, 19 do
            local y = self.y + TILE_SIZE * row
            love.graphics.line(self.x, y, self.x+self.width, y)

        end


    end


end