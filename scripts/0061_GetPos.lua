-- GetPos.lua

local currentPos;

function state_entry()
    currentPos = ll.GetPos()

    ll.SetText(tostring(currentPos), vector(0, 1, 1), 1)
end

function LLEvents.touch_start(detected)
    currentPos = ll.GetPos()

    ll.SetText(tostring(currentPos), vector(0, 1, 1), 1)
end

state_entry()

--[[
<147.34339, 161.22520, 22.25000>
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

