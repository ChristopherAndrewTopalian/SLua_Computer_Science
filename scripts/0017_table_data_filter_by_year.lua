-- table_data_filter_by_year.lua

local people = {
    {
        name = "jane",
        score = 98,
        date = "1980/03/01 08:00"
    },

    {
        name = "tabitha",
        score = 93,
        date = "1987/10/05 17:00"
    }
}

function touch_start(total_number)
    for i = 1, #people do
        -- extract first 4 characters
        local year = string.sub(people[i].date, 1, 4)

        -- check if year is "1987"
        if year == '1987' then
            ll.Say(0, people[i].name)
        end
    end
end

--[[
tabitha
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

