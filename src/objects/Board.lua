--

-- Created By: Tanner Brown
-- Date: 8/8/2018

--

Board = Class{}

function Board:init()

    BOARD_GRID = {}

    for row = 1, 22 do
        BOARD_GRID[row] = {} --create array for this row
        for col = 1, 10 do
            BOARD_GRID[row][col] = 0 --add a 0 showing this cell location is empty
        end
    end

    PLACED_BLOCKS = TetrinoHeap()

    --define size of gameboard
    self.height = BOARD_ROWS * TILE_SIZE
    self.width = BOARD_COLS * TILE_SIZE
    self.left_edge = WINDOW_WIDTH /2 - self.width / 2 --left side of grid
    self.right_edge = self.left_edge + self.width --right side of gris
    self.top = (WINDOW_HEIGHT - self.height ) / 2 --top side of grid
    self.bottom = self.top + self.height
    KEY_BLOCK.x = self.left_edge + TILE_SIZE*3
    KEY_BLOCK.y = self.top - TILE_SIZE*2
    self.grid = true

    --create bricks
    self.BrickQue = {
        [1] = createBrick(),
        [2] = createBrick(),
        [3] = createBrick(),
        [4] = createBrick(),
        [5] = createBrick(),
    }
    self.activeTetrino = BrickQue[1]
    self.nextTetrino = BrickQue[2]


end

function Board:update(dt, tetrino)
    --TODO: kinda left off here...
end

function Board:render()

    love.graphics.setColor(0,1,0,1)
    love.graphics.rectangle('line', self.left_edge, self.top, self.width, self.height)
    love.graphics.setColor(1,1,1,1)

    --Draw Grid for debugging
    if self.grid then
        self:drawGrid()
    end

    for row = 1, 22 do
        for col = 1, 10 do
            if BOARD_GRID[row][col] ~= 0 then
                BOARD_GRID[row][col]:render()
            end
        end

    end
end


function Board:isEmpty(row, col) return BOARD_GRID[row][col] == 0 end

function Board:checkLineClear(row)
    for col = 1, 10 do
        if BOARD_GRID[row][col] == 0 then --if any columns come up empty, return false
            return false
        end
    end
    return true --otherwise, returns true if all columns are filled
end

function Board:lineClear(row)
    for col = 1, 10 do
        BOARD_GRID[row][col] = 0  --sets all cells in the row to 0
    end
end

function Board:occupyCell(row, col, block)
    BOARD_GRID[row][col] = block
end

function Board:clearCell(row, col)
    BOARD_GRID[row][col] = 0
end

function Board:drawGrid()
    love.graphics.setColor(1,1,1,0.9)

    for col = 1, 10 do
        local x = self.left_edge + TILE_SIZE * col
        --love.graphics.line(x , self.top , love.mouse.getPosition, self.height)
        love.graphics.line(x , self.top , x , self.height + self.top)
    end
    for row = 1, 20 do
        local y = self.top + TILE_SIZE * row
        love.graphics.line(self.left_edge, y, self.left_edge+self.width, y)
    end
end

function Board:place(tetrino)
    for i = 1, 4 do
        tetrino.blocks[i].placed = true
    end
end

function Board:createTetrino()
    local fun = TETRINOS[love.math.random(4)]

    if fun then
        return fun()
    end
end


