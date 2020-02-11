



Powerup = Class{}


function Powerup:init(skin)

    self.x = random(0, VIRTUAL_WIDTH - 32)
    self.y = random(0, 15)

    self.width = 64
    self.height = 16


end

function Powerup:update(dt)