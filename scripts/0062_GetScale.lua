-- GetScale.lua

local currentScale;

function state_entry()
    currentScale = ll.GetScale()

    ll.SetText(tostring(currentScale), vector(0, 255, 255), 1)
end

function LLEvents.touch_start(detected)
    currentScale = ll.GetScale()

    ll.SetText(tostring(currentScale), vector(0, 255, 255), 1)
end

state_entry()

--[[
<0.50000, 0.50000, 0.50000>
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

