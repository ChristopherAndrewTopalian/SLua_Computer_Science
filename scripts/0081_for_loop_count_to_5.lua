-- for_loop_count_to_5.lua

function LLEvents.touch_start(detected)
    -- start a for loop that counts from 1 to 5
    for i = 1, 5 do
        ll.Say(0, 'Count: ' .. tostring(i))
    end
end

--[[
Count: 1
Count: 2
Count: 3
Count: 4
Count: 5
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

