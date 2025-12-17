-- GetFreeMemory.lua

local freeMemory;

function state_entry()
    freeMemory = ll.GetFreeMemory()

    ll.SetText(tostring(freeMemory), vector(0, 255, 255), 1)
end

function LLEvents.touch_start(detected)
    freeMemory = ll.GetFreeMemory()

    ll.SetText(tostring(freeMemory), vector(0, 255, 255), 1)
end

state_entry()

--[[
16000
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

