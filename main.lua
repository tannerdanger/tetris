--[[
  Tetris
  By: Tanner Brown
]]

require 'src/Dependencies'

function love.load()



  love.graphics.setDefaultFilter('linear', 'linear')
  math.randomseed(os.time())

  push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
    fullscreen = true,
    vsync = true,
    resizable = true
  })

  gStateStack = StateStack()
  --gStateStack:push(StartState())
  gStateStack:push(TestState())

  --[[ physics stuff ]]



  --[[ End physics stuff ]]

  love.keyboard.keysPressed = {}

end



function love.update(dt)

  Timer.update(dt)
  gStateStack:update(dt)



  love.keyboard.keysPressed = {}



end



function love.draw()

  push:start()
  gStateStack:render()
  push:finish()

end



function love.resize(w, h)
  push:resize(w,h)
end

function love.keypressed(key)
  if key == 'escape' then
    love.event.quit()
  end

  love.keyboard.keysPressed[key] = true
end

function love.keyboard.wasPressed(key)
  return love.keyboard.keysPressed[key]
end

  