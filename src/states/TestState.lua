--
-- Created by IntelliJ IDEA.
-- User: Tanner
-- Date: 8/5/2018
-- Time: 12:26 PM
-- To change this template use File | Settings | File Templates.
--

TestState = Class{__includes = BaseState}

function TestState:init()


    --BOARD = GameBoard() --MAKE BOARD FIRST TO SET KEYBLOCK
    BOARD = Board()

    self.speed = gSpeeds[3]

    self.timer = 0

    --debugging stuff
    self.mousepos = false
    BOARD.grid = true

end

function TestState:update(dt)

    self.timer = self.timer + dt

    --   if self.ctr < 4 then
    if self.timer > self.speed then
        self.timer = self.timer % self.speed
        --TODO: Increase score
        if not collideDown(self.activeBrick, PLACED_BLOCKS, BOARD) then

            self.activeBrick:moveDown(dt)
        else
            --place block

            BOARD:place(self.activeBrick)
            self.activeBrick = self.nextBrick

            --create new block
            fun = TETRINOS[love.math.random(4)]
            if fun then
                self.nextBrick = fun()
            end


        end
        self.ctr = self.ctr+1
    end
    -- end

    --update board (MOVE THIS?)
    BOARD:update(dt, self.nextBrick)


    --input / collision handling--
    if love.keyboard.wasPressed('left') or love.keyboard.wasPressed('a') then
        if not collideLeft(self.activeBrick, PLACED_BLOCKS, BOARD) then
            self.activeBrick:moveLeft(dt)
        else
            --collided, do stuff
        end
    elseif love.keyboard.wasPressed('right') or love.keyboard.wasPressed('d') then
        if not collideRight(self.activeBrick, PLACED_BLOCKS, BOARD) then
            self.activeBrick:moveRight(dt)
        else
            --collided, do stuff
        end

    elseif love.keyboard.wasPressed('down') or love.keyboard.wasPressed('s') then
        if not collideDown(self.activeBrick, PLACED_BLOCKS, BOARD) then
            self.activeBrick:moveDown(dt)
        else
            --collided, do stuff
        end


    elseif love.keyboard.wasPressed('e') or love.keyboard.wasPressed('up') then
        self.activeBrick:rotateRight(dt)

    elseif love.keyboard.wasPressed('w')  then
        self.activeBrick:rotateLeft(dt)


    elseif love.keyboard.wasPressed('space')  then
        self.activeBrick:drop(dt)
    end



end

function TestState:render()

    love.graphics.setColor(gColors.white, gAlphas.opaque)

    BOARD:render()
    PLACED_BLOCKS:render()
    if self.activeBrick then
        self.activeBrick:render()
    end


    if self.mousepos then
        local mouseX, mouseY = love.mouse.getPosition()
        print("mouse X :  " .. mouseX)
        print("mouse Y :  ".. mouseY)
    end
end


