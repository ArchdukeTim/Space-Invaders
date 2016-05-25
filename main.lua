
-- This is the main entry point of your LOVE2D game.

-- Feel free to delete the callbacks you don't need,
-- and visit https://www.love2d.org/wiki/love if you need more.

-- for rectangle example
local Barrier = require"scripts.Barrier"

local x, y, w, h = 20, 20, 60, 20
player = {x = love.graphics.getWidth()/2 - 16, y = love.graphics.getHeight() - 50, img = nil}

barrier1 = Barrier(100)
barrier2 = Barrier(300)
barrier3 = Barrier(500)

function love.load()

end

function love.update(dt)
    -- Grow the rectangle.
    w = w + 1
    h = h + 1
    
end

function love.draw()
    -- Draw a coloured rectangle.
    love.graphics.setColor(0, 100, 100);
    -- love.graphics.rectangle('fill', x, y, w, h);
    player.img = love.graphics.newImage('/assets/spaceship.png')
    love.graphics.print(string.format("Mouse X: %d, Mouse Y: %d",mouseX, mouseY), 100, 100)
    
    -- Draw Barriers
    for i in barrier1:config do
        for j in barrieri:config do
            local relX = barrier1:getStart()
            love.graphics.rectangle("fill", relX + j * Barrier.size, y, width, height)
        end
    end
end






function love.keypressed(key, isrepeat)
    if key == 'escape' then
        love.event.push('quit')
    end
end

function love.keyreleased(key)

end

function love.textinput(text)

end

function love.mousepressed(x, y, button)

end

function love.mousemoved(x, y, dx, dy)
    mouseX = x
    mouseY = y

end

function love.mousereleased(x, y, button)

end




