-- table_sort_by_date_ascending_ymd.lua

local people =
{
    {
        name = "jane",
        score = 98,
        date = '1980-03-01'
    },

    {
        name = "tabitha",
        score = 93,
        date = '1987-10-05'
    },

    {
        name = "jennifer",
        score = 95,
        date = '1983-06-15'
    }
}

-- sort people by date in ascending order
table.sort(people,
    function(a, b)
        return a.date < b.date
    end
)

function LLEvents.touch_start(detected)
    for i = 1, #people do
        ll.Say(0, people[i].name .. " - " .. people[i].date)
    end
end

--[[
jane - 1980-03-01
jennifer - 1983-06-15
tabitha - 1987-10-05
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

