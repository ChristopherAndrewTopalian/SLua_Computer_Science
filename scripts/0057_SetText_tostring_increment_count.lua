-- SetText_tostring_increment_count.lua

local count = 0

function state_entry()
    ll.SetText(tostring(count), vector(0, 255, 255), 1)
end

function touch_start(total_number)
    count += 1

    ll.SetText(tostring(count), vector(0, 255, 255), 1)
end

state_entry()

--[[
0
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

