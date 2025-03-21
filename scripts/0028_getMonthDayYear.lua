-- getMonthDayYear.lua

function getMonthDayYear()
    local currentDate = ll.GetDate()

    -- get year, month and day from currentDate
    local year, month, day = string.match(currentDate, "(%d+)-(%d+)-(%d+)")

    -- format date as MM/DD/YYYY
    local formattedDate = string.format("%02d/%02d/%d", tonumber(month), tonumber(day), tonumber(year))

    return formattedDate
end

function state_entry()
    ll.Say(0, getMonthDayYear())
end

function touch_start(total_number)
    ll.Say(0, getMonthDayYear())
end

state_entry()

--[[
03/21/2025
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

