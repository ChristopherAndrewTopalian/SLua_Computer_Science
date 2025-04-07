-- rezInCircleFortyFiveDegreeRight.lua

local objectName = "Object"
local numberOfPrims = 16
local radius = 2.0

function rezInCircleFortyFiveDegreeRight()
    local center = ll.GetPos()
    local rot = ll.GetRot()

    local fwd = ll.Rot2Fwd(rot)
    local up = ll.Rot2Up(rot)
    local left = ll.Rot2Left(rot)
    
    local tiltAxis1 = ll.VecNorm(fwd - up)
    local tiltAxis2 = left

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

function touch_start(total_number)
    rezInCircleFortyFiveDegreeRight()
end

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

