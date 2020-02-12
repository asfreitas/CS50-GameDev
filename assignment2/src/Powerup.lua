



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
    self.inplay = true
end

function Powerup:collides(target)
    -- first, check to see if the left edge of either is farther to the right
    -- than the right edge of the other
    if self.x > target.x + target.width or target.x > self.x + self.width then
        return false
    end

    -- then check to see if the bottom edge of either is higher than the top
    -- edge of the other
    if self.y > target.y + target.height or target.y > self.y + self.height then
        return false
    end 

    -- if the above aren't true, they're overlapping
    self.inplay = false
    return true
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
    if self.inplay then
        love.graphics.draw(gTextures['main'], gFrames['powerups'][1],
    self.x, self.y)
    end
end