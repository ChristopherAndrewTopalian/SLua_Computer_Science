-- getMonth.lua

function getMonth()
    local currentDate = ll.GetDate()
    -- get characters 6-7 for the month
    local month = string.sub(currentDate, 6, 7)
    return month
end

function state_entry()
    ll.Say(0, getMonth())
end

function LLEvents.touch_start(detected)
    ll.Say(0, getMonth())
end

state_entry()

--[[
03
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

