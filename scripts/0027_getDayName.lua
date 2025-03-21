-- getDayName.lua

function getDayName()
    -- YYYY-MM-DD
    local currentDate = ll.GetDate()

    -- days of the week
    local daysOfWeek = {
        ["Monday"] = 1,
        ["Tuesday"] = 2,
        ["Wednesday"] = 3,
        ["Thursday"] = 4,
        ["Friday"] = 5,
        ["Saturday"] = 6,
        ["Sunday"] = 7
    }

    -- get year, month and day from date
    local year, month, day = string.match(currentDate, "(%d+)-(%d+)-(%d+)")

    -- convert extracted values to numbers
    year = tonumber(year)
    month = tonumber(month)
    day = tonumber(day)

    local dayNames = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}

    local dayOfWeekIndex = (day + month + year) % 7

    return dayNames[dayOfWeekIndex + 1]
end

function state_entry()
    ll.Say(0, "Today is " .. getDayName())
end

function touch_start(total_number)
    ll.Say(0, "Today is " .. getDayName())
end

state_entry()

--[[
Today is Friday
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

