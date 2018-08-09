--
-- Created by IntelliJ IDEA.
-- User: Tanner
-- Date: 8/6/2018
-- Time: 6:52 PM
-- To change this template use File | Settings | File Templates.
--

Tetrino = Class{}

function Tetrino:moveLeft(dt)

    for i = 1, 4 do
        self.blocks[i].x = self.blocks[i].x - TILE_SIZE
    end

end
function Tetrino:moveRight(dt)

    for i = 1, 4 do
        self.blocks[i].x = self.blocks[i].x + TILE_SIZE
    end

end
function Tetrino:moveDown(dt)

    for i = 1, 4 do
        self.blocks[i].y = self.blocks[i].y + TILE_SIZE
        self.blocks[i]:update()
    end



end

function Tetrino:drop(dt)


end

function Tetrino:render()
    for i = 1, 4 do
        if self.blocks[i].y >= BOARD.top then
            self.blocks[i]:render()
        end

    end
end

function Tetrino:collides(object)
    for i = 1, 4 do
        if self.blocks[i]:collides(object) == true then
            return true
        end
    end
    return false
end

function Tetrino:updateP(dt)
    for i = 1, 4 do
        self.blocks[i]:updateP(dt)
    end
end
--[[
function Tetrino:checkCollisions()

if self:collides(board) then return true
    --  elseif self:collides()
end

end

]]