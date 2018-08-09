--

-- Created By: Tanner Brown
-- Date: 8/7/2018

--
function collideAll(tetrino, brickHeap, Board)

end


function collideLeft(tetrino, brickHeap, board)
    for i = 1, 4 do
        if tetrino.blocks[i].x  <= board.x then
            return true
        end

    end
    return false
end

function collideRight(tetrino, brickHeap, board)
    for i = 1, 4 do
        if tetrino.blocks[i].x  >= board.x + board.width - TILE_SIZE  then
            return true
        end
    end
    return false
end

function collideDown(tetrino, brickHeap, board)
    for i = 1, 4 do
        print(tetrino.blocks[i].y)
        print(board.y + board.height)
        if tetrino.blocks[i].y  >= board.y + board.height - TILE_SIZE  then
            return true
        end
    end
    return false
end

