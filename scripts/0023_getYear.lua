-- getYear.lua

function getYear()
    local currentDate = ll.GetDate()
    -- get the first 4 characters for year
    local year = string.sub(currentDate, 1, 4)
    return year
end

function state_entry()
    ll.Say(0, getYear())
end

function touch_start()
    ll.Say(0, getYear())
end

state_entry()

--[[
2025
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

