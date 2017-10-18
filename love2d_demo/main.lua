-- Time variable
x = 100
y = 100
scalar = 200

function love.load()
    mario = love.graphics.newImage("imgs/mario.png")
end

function love.draw()
    love.graphics.draw(mario,x,y,0,0.05,0.05)
end

function love.update(dt)
    handleKeys(dt)
end

function handleKeys(dt)
    if love.keyboard.isDown("down") then
        y = y + scalar * dt
    end
    if love.keyboard.isDown("up") then
        y = y - scalar * dt
    end
    if love.keyboard.isDown("left") then
        x = x - scalar * dt
    end
    if love.keyboard.isDown("right") then
        x = x + scalar * dt
    end
end