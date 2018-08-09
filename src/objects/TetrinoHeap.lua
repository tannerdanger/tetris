--
-- Created by IntelliJ IDEA.
-- User: Tanner
-- Date: 8/6/2018
-- Time: 6:39 PM
-- To change this template use File | Settings | File Templates.
--

TetrinoHeap = Class{}

function TetrinoHeap:init()

    --TODO: have some placed blocks have effects based on what song is playing

    self.placedBlocks = {}

    self.topBlocks = {} --exposed blocks so all blocks don't need to be checked

    return TetrinoHeap

end

function TetrinoHeap:place(tetrino)
   -- table.insert(self.placedBlocks, , tetrino)
end

function TetrinoHeap:clearLine()

end

function TetrinoHeap:update(dt)

    -- if dt = correct timer time,
    --self:glow()

end

function TetrinoHeap:collides(object)

    --check all blocks in exposed block

end

function TetrinoHeap:glow()



end

function TetrinoHeap:render()
    for i, block in self.placedBlocks do
        block:render()
    end

end

