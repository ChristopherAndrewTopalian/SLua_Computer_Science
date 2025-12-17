-- table_sort_by_date_ascending_mdy.lua

local people =
{
    {
        name = "jane",
        score = 98,
        date = '03/01/1980'
    },

    {
        name = "tabitha",
        score = 93,
        date = '10/05/1987'
    },

    {
        name = "jennifer",
        score = 95,
        date = '06/15/1983'
    }
}

-- helper function to convert MM/DD/YYYY to a number for sorting
local function date_to_number(date_string)
    local month, day, year = date_string:match("(%d%d)/(%d%d)/(%d%d%d%d)")
    return tonumber(year .. month .. day)
end

-- sort people by date in ascending order
table.sort(people, function(a, b)
    return date_to_number(a.date) < date_to_number(b.date)
end)

function LLEvents.touch_start(detected)
    for i = 1, #people do
        ll.Say(0, people[i].name .. " - " .. people[i].date)
    end
end

--[[
jane - 03/01/1980
jennifer - 06/15/1983
tabitha - 10/05/1987
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

