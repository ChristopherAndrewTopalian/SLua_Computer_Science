-- SetText_tostring_decrement_count.lua

local count = 100

function state_entry()
    ll.SetText(tostring(count), vector(0, 1, 1), 1)
end

function LLEvents.touch_start(detected)
    count -= 1

    ll.SetText(tostring(count), vector(0, 1, 1), 1)
end

state_entry()

--[[
100
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

