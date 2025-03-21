-- table_data_filter_before_date.lua

local people = {
    {
        name = "jane",
        score = 98,
        date = '1980/03/01'
    },

    {
        name = "tabitha",
        score = 93,
        date = '1987/10/05'
    }
}

function touch_start(total_number)
    for i = 1, #people do
        if people[i].date < '1989/01/05' then
            ll.Say(0, people[i].name)
        end
    end
end

--[[
jane
tabitha
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

