



Powerup = Class{}


function Powerup:init()

    self.x = math.random(0, VIRTUAL_WIDTH - 32)
    self.y = math.random(0, 15)

    self.width = 64
    self.height = 16
    self.size = 2
    self.dy = 0

end

function Powerup:update(dt)
    
    self.y = self.y + PADDLE_SPEED * dt

end

function Powerup:render()
    love.graphics.draw(gTextures['main'], gFrames['paddles'][self.size + 4 * (1)],
    self.x, self.y)
end