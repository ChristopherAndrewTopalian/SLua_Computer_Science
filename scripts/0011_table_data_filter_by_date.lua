-- table_data_filter_by_date.lua

local people = {
    {
        name = "jane",
        score = 98,
        date = '03/01/1980'
    },

    {
        name = "tabitha",
        score = 93,
        date = '10/05/1987'
    }
}

function touch_start(total_number)
    for i = 1, #people do
        if people[i].date == '03/01/1980' then
            ll.Say(0, people[i].name)
        end
    end
end

--[[
jane
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

