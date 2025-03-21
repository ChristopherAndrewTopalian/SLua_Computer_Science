-- getDay.lua

function getDay()
    local currentDate = ll.GetDate()
    -- get characters 9-10 for the day
    local day = string.sub(currentDate, 9, 10)
    return day
end

function state_entry()
    ll.Say(0, getDay())
end

function touch_start(total_number)
    ll.Say(0, getDay())
end

state_entry()

--[[
21
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

