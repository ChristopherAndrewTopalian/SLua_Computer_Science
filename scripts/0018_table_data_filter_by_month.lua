-- table_data_filter_by_month.lua

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
    local targetMonth = "03"

    for i = 1, #people do
        -- extract month chars 6-7
        local month = string.sub(people[i].date, 6, 7)

        -- check if it matches target month
        if month == targetMonth then
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

