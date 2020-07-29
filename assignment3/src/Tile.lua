--[[
    GD50
    Match-3 Remake

    -- Tile Class --

    Author: Colton Ogden
    cogden@cs50.harvard.edu

    The individual tiles that make up our game board. Each Tile can have a
    color2 and a variety, with the varietes adding extra points to the matches.
]]

Tile = Class{}

function Tile:init(x, y, color2, variety)
    
    -- board positions
    self.gridX = x
    self.gridY = y

    -- coordinate positions
    self.x = (self.gridX - 1) * 32
    self.y = (self.gridY - 1) * 32

    -- tile appearance/points
    if color2 == 1 or color2 == 2 then 
        self.color = 1
    elseif color2 > 2 and color2 < 6 then
        self.color = 2
    elseif color2 == 6 or color2 == 7 then
        self.color = 3
    elseif color2 == 8 or color2 == 9 then
        self.color = 4
    elseif color2 == 10 or color2 == 11 then
        self.color = 5
    elseif color2 == 12 or color2 == 13 then
        self.color = 6
    elseif color2 == 14 or color2 == 15 then
        self.color = 7
    else
        self.color = 8
    end

    self.drawingColor = color2
    self.variety = variety
    self.shiny = false
   -- shiny = math.random(3)
    local shiny = 2
    if shiny == 1 then
        self.shiny = true
    end
end

function Tile:render(x, y)
    
    -- draw shadow
    love.graphics.setColor(34, 32, 52, 255)
    love.graphics.draw(gTextures['main'], gFrames['tiles'][self.drawingColor][self.variety],
        self.x + x + 2, self.y + y + 2)

    -- draw tile itself
    love.graphics.setColor(255/255, 255/255, 255/255, 255/255)
    love.graphics.draw(gTextures['main'], gFrames['tiles'][self.drawingColor][self.variety],
        self.x + x, self.y + y)
end