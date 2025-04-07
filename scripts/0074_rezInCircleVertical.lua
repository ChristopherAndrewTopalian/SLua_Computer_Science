-- rezInCircleVertical.lua

local objectName = "Object"
local numberOfPrims = 16
local radius = 2.0

function rezInCircleVertical()
    local center = ll.GetPos()
    local rot = ll.GetRot()
    local fwd = ll.Rot2Fwd(rot)
    local up = ll.Rot2Up(rot)

    for i = 0, numberOfPrims - 1 do
        local angle = (2 * math.pi * i) / numberOfPrims
        local x = math.cos(angle) * radius
        local z = math.sin(angle) * radius

        local offset = (x * fwd) + (z * up)
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
    rezInCircleVertical()
end

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

