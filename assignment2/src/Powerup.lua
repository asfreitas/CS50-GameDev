



Powerup = Class{}


function Powerup:init()

    self.x = math.random(0, VIRTUAL_WIDTH - 32)
    self.y = math.random(0, 15)

    self.width = 64
    self.height = 16
    self.size = 2
    self.dy = 0
    self.sway = 1
    self.time = 0
end

function Powerup:update(dt)
    self.time = self.time + dt
    self.y = self.y + POWERUP_SPEED * dt
    self.x = self.x + (15 * self.sway) * dt
    if self.time > 1 then
        self.sway = self.sway * -1
        self.time = 0
    end


end

function Powerup:render()
    love.graphics.draw(gTextures['main'], gFrames['powerups'][1],
    self.x, self.y)
end