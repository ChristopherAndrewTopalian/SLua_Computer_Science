-- SetText_tostring_multiply_count.lua

local count = 10

function state_entry()
    ll.SetText(tostring(count), vector(0, 1, 1), 1)
end

function LLEvents.touch_start(detected)
    count *= 10

    ll.SetText(tostring(count), vector(0, 1, 1), 1)
end

state_entry()

--[[
10
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

