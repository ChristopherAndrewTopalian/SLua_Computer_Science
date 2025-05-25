-- table_sort_by_name_descending.lua

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

-- sort by name descending
table.sort(people,
function(a, b)
    return a.name > b.name
end)

function state_entry()
    for i = 1, #people do
        ll.Say(0, people[i].name .. ": " .. people[i].score)
    end
end

state_entry()

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

