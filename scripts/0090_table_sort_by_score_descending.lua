-- table_sort_by_score_descending.lua

local people =
{
    {
        name = "Jane",
        score = 98
    },
    {
        name = "Tabitha",
        score = 90
    },
    {
        name = "Jennifer",
        score = 95
    }
}

-- sort the people table by score in descending order
table.sort(people, function(a, b)
    return a.score > b.score
end)

function touch_start(total_number)
    for i = 1, #people do
        -- say each person's name and score
        ll.Say(0, people[i].name .. ": " .. people[i].score)
    end
end

--[[
Jane: 98
Jennifer: 95
Tabitha: 90
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

