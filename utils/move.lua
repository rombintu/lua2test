local move = {}
local min = 50
local function getRandomInt(max)
    return math.random(min, max-min)
end

function move.moving(w, h)
    return getRandomInt(w), getRandomInt(h)
end

return move