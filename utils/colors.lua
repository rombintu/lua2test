local love = require("love")

local colors = {}
local config = {
    ["red"] = {0.7, 0.1, 0.1},
    ["green"] = {0.1, 0.7, 0.1},
    ["blue"] = {0.1, 0.1, 0.7},
    ["white"] = {1, 1, 1},
}

local function pick()
    return math.random(0, 100)/100
end


function colors.red()
    love.graphics.setColor(config.red)
end

function colors.green()
    love.graphics.setColor(config.green)
end

function colors.blue()
    love.graphics.setColor(config.blue)
end

function colors.white()
    love.graphics.setColor(config.white)
end

function colors.randColor()
    love.graphics.setColor({pick(), pick(), pick()})  
end

return colors