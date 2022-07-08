local love = require("love")
local colors = require("utils.colors")
local move = require("utils.move")

function love.load()
    love.window.setTitle("Game")
    WinW = love.graphics.getWidth()
    WinH = love.graphics.getHeight()
    
    Button = {}
    Button.size = 50
    Button.x, Button.y = WinW/2, WinH/2

    Score = 0
    Timer = 0
    ScoreFont = love.graphics.newFont("fonts/retro.ttf", 40)

    MouseX = 0
    MouseY = 0
end

function love.update(dt)
    MouseX = love.mouse.getX()
    MouseY = love.mouse.getY()

    Timer = Timer + 1 * dt
end


function love.draw()
    colors.white()
    love.graphics.setFont(ScoreFont)
    love.graphics.print("SCORE: "..Score)
    love.graphics.print("X: "..MouseX, WinW-200, 50)
    love.graphics.print("Y: "..MouseY, WinW-200, 100)
    love.graphics.print("TIMER: "..string.format("%.0f", Timer), 0, 50)

    colors.blue()
    love.graphics.circle("fill", Button.x, Button.y, Button.size)
end

function love.mousepressed(x, y, click, isTouch)
    if click == 1 then
        if Between(Button.x, Button.y, x, y) < Button.size then
            Score = Score + 1
            Button.x, Button.y = move.moving(WinW, WinH)
        else
            Score = Score - 1
        end
    end
end

function Between(x1, y1, x2, y2)
    return math.sqrt((y2-y1)^2 + (x2-x1)^2)
end
