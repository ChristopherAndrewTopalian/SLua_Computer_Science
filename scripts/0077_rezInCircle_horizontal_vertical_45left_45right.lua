-- rezInCircle_horizontal_vertical_45left_45right.lua

local objectName = "Object"
local numberOfPrims = 16
local radius = 2.0

function rezInCircle(tiltAxis1, tiltAxis2)
    local center = ll.GetPos()
    local rot = ll.GetRot()

    for i = 0, numberOfPrims - 1 do
        local angle = (2 * math.pi * i) / numberOfPrims
        local x = math.cos(angle) * radius
        local y = math.sin(angle) * radius

        local offset = (x * tiltAxis1) + (y * tiltAxis2)
        local rezPos = center + offset

        ll.RezObject(
            objectName,
            rezPos,
            vector(0, 0, 0),
            rot,
            0
        )
    end
end

function rezHorizontal()
    local rot = ll.GetRot()
    local fwd = ll.Rot2Fwd(rot)
    local left = ll.Rot2Left(rot)

    rezInCircle(left, fwd)
end

function rezVertical()
    local rot = ll.GetRot()
    local up = ll.Rot2Up(rot)
    local left = ll.Rot2Left(rot)

    rezInCircle(left, up)
end

function rez45Left()
    local rot = ll.GetRot()
    local fwd = ll.Rot2Fwd(rot)
    local up = ll.Rot2Up(rot)
    local left = ll.Rot2Left(rot)

    local tiltAxis1 = ll.VecNorm(left)
    local tiltAxis2 = ll.VecNorm(fwd + up)  -- 45 degree upward tilt

    rezInCircle(tiltAxis1, tiltAxis2)
end

function rez45Right()
    local rot = ll.GetRot()
    local fwd = ll.Rot2Fwd(rot)
    local up = ll.Rot2Up(rot)
    local left = ll.Rot2Left(rot)

    local tiltAxis1 = ll.VecNorm(left)
    local tiltAxis2 = ll.VecNorm(fwd - up)  -- 45 degree downward tilt

    rezInCircle(tiltAxis1, tiltAxis2)
end

function touch_start(total_number)
    rezHorizontal()
    rezVertical()
    rez45Left()
    rez45Right()
end

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

