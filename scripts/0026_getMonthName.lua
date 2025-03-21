-- getMonthName.lua

function getMonthName()
    local currentDate = ll.GetDate()
    -- get characters from 6-7 for month
    local monthNumber = tonumber(string.sub(currentDate, 6, 7))

    local monthNames = {
        "January", "February", "March", "April", "May", "June",
        "July", "August", "September", "October", "November", "December"
    }

    return monthNames[monthNumber]
end

function state_entry()
    ll.Say(0, getMonthName())
end

function touch_start(total_number)
    ll.Say(0, getMonthName())
end

state_entry()

--[[
March
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

