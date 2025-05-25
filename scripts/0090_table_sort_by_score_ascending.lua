-- table_sort_by_score_ascending.lua

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

-- sort by score ascending
table.sort(people,
function(a, b)
    return a.score < b.score
end)

function state_entry()
    for i = 1, #people do
        ll.Say(0, people[i].name .. ": " .. people[i].score)
    end
end

state_entry()

--[[
Tabitha: 90
Jennifer: 95
Jane: 98
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

