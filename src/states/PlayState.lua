

PlayState = Class{__includes = BaseState}

function PlayState:init()

    self.speed = 0.3--gSpeeds[1]
    self.timer = 0

    self.ctr = 1

    --self.gameStack = StateStack()
    self.board = GameBoard()
    --self.gameStack:push(GameBoard())
    --self.activeBrick = Brick(BRICKS[love.math.random(7)])
    --self.nextBrick = Brick(BRICKS[love.math.random(7)])
    local next = love.math.random(1)
    local fun = BRICKS[1].shape
    if fun then
        fun()
        --self.activeBrick = fun:init()
    end
    print(self.activeBrick.x)


end

function PlayState:update(dt)
    self.timer = self.timer + dt

    if self.ctr < 4 then
        if self.timer > self.speed then
            self.timer = self.timer % self.speed
            --TODO: Increase score
            self.activeBrick:moveDown()
            self.ctr = self.ctr+1

        end
    end


    if love.keyboard.wasPressed('left') or love.keyboard.wasPressed('a') then
        self.activeBrick:moveLeft(dt)

    elseif love.keyboard.wasPressed('right') or love.keyboard.wasPressed('d') then
        self.activeBrick:moveRight(dt)

    elseif love.keyboard.wasPressed('down') or love.keyboard.wasPressed('s') then
        self.activeBrick:moveDown(dt)

    elseif love.keyboard.wasPressed('e') or love.keyboard.wasPressed('up') then
        self.activeBrick:rotateRight(dt)

    elseif love.keyboard.wasPressed('w')  then
        self.activeBrick:rotateLeft(dt)


    elseif love.keyboard.wasPressed('space')  then
        self.activeBrick:drop(dt)

    end





end

function PlayState:render()
    love.graphics.setFont(gFonts['title'])

    love.graphics.setColor(gColors.white, gAlphas.opaque)

    self.board:render()
    self.activeBrick:render()

    --self.gameStack:render()

end


