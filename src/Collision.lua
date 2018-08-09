--

-- Created By: Tanner Brown
-- Date: 8/7/2018

--
function collideAll(tetrino, brickHeap, Board)

end


function collideLeft(tetrino, brickHeap, board)
    for i = 1, 4 do
        if tetrino.blocks[i].x  <= board.left_edge then
            return true
        end

    end
    return false
end

function collideRight(tetrino, brickHeap, board)
    for i = 1, 4 do
        if tetrino.blocks[i].x  >= board.right_edge - TILE_SIZE  then
            return true
        end
    end
    return false
end

function collideDown(tetrino, brickHeap, board)
    print(BOARD.bottom .. "board.bottom")
    print(tetrino.blocks[1].y .. "tetrino y")
    for i = 1, 4 do
        if tetrino.blocks[i].y  > BOARD.bottom - TILE_SIZE * 2 then
            return true
        end
    end
    return false
end

