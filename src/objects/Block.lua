--
-- Created by IntelliJ IDEA.
-- User: Tanner
-- Date: 8/4/2018
--

Block = Class{}

--[[
--TODO: swap out DT for partiacles with music speed
--
--
--
-- ]]

function Block:init(img, x, y)
    print(KEY_BLOCK.x)
    self.locations = locations
    self.x = KEY_BLOCK.x + (x * TILE_SIZE)
    self.y = KEY_BLOCK.y + (y * TILE_SIZE)
    self.image = img
    self.placed = false
    --self.row =



end

function Block:render()



    love.graphics.draw(self.image, self.x, self.y)

end

function Block:blowLoad()

end

function Block:update(dt)

end

function Block:collides(object)


    if self.x > object.x + object.width
        or object.x > self.x + self.width then
        return false
    end

    if self.y > object.y + object.height
            or object.y > self.y + self.height then
        return false
    end

    return true
end



