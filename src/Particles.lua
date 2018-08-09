--
-- Created by IntelliJ IDEA.
-- User: Tanner
-- Date: 8/6/2018
-- Time: 8:20 PM
-- To change this template use File | Settings | File Templates.
--

Particles = Class {}

function Particles:init(img)

    self.image = img

    self.psystem = love.graphics.newParticleSystem(self.image, 100)
    self.psystem:setParticleLifetime(0.5,9)
    self.psystem:setEmissionRate(100)
    self.psystem:setSizeVariation(.5)
    self.psystem:setEmitterLifetime(3)
    self.psystem:setSpread(15)
    self.psystem:setSpinVariation(0.5)
    self.psystem:setLinearAcceleration(-300, -300, 300, 300) -- Random movement in all directions.
    self.psystem:setRadialAcceleration(-300,300)
    local pSize = TILE_SIZE / 100 --todo: GET image size?

    self.psystem:setSizes(pSize)
    self.psystem:setColors(255, 255, 255, 255, 255, 255, 255, 0) -- Fade to transparency.

end
