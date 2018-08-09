

StartState = Class{__includes = BaseState}

function StartState:init()
  self.menu= {
    font = gFonts['subtitle'],
    highlighted = 1,
    [1] = {
      name = 'Start Game',
      isHighlighted = true,
      color = gColors.yellow,
      command = {'Start Game', 2, VIRTUAL_HEIGHT / 2 , VIRTUAL_WIDTH, 'center'}
    },
    [2] = {
      name = 'Options',
      isHighlighted = false,
      color = gColors.white,
      command = {'Options', 2, VIRTUAL_HEIGHT / 2 + 20, VIRTUAL_WIDTH, 'center'}
    }
  }
  print_r(self.menu[1].color)
 
end

function StartState:update(dt)
  
  if love.keyboard.wasPressed('up') or love.keyboard.wasPressed('down') then
    if self.menu.highlighted == 1 then
      self.menu.highlighted = 2
      self.menu[1].color = gColors.white
      self.menu[2].color = gColors.yellow
    else
      self.menu.highlighted = 1
      self.menu[2].color = gColors.white
      self.menu[1].color = gColors.yellow
    end
    
  elseif love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('return') then
    if self.menu.highlighted == 1 then
        gStateStack:swap(PlayState())
    end
    
  end
  
  
  
end

function StartState:render()
  love.graphics.setFont(gFonts['title'])
  
  love.graphics.setColor(gColors.white, gAlphas.opaque)
  
  --love.graphics.setColor(HSL(150,100,200))
 
  love.graphics.printf('TETRIS', 2, VIRTUAL_HEIGHT / 2 - 100, VIRTUAL_WIDTH, 'center')
  
  love.graphics.setFont(self.menu.font)
  
  love.graphics.setColor(self.menu[1].color, gAlphas.opaque)

  love.graphics.printf('Start Game', 2, VIRTUAL_HEIGHT / 2 , VIRTUAL_WIDTH, 'center')
  
  love.graphics.setColor(self.menu[2].color, gAlphas.opaque)
  love.graphics.printf('Options', 2, VIRTUAL_HEIGHT / 2 + 34, VIRTUAL_WIDTH, 'center')
end
