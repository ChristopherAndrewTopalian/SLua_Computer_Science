-- table_remove_entry_by_name.lua

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

-- loop through the table
for i = #people, 1, -1 do
    -- if name Tabitha is found
    if people[i].name == "Tabitha" then
        -- remove the entry
        table.remove(people, i)
    end
end

function state_entry()
    -- loop through each person in the people table
    for i = 1, #people do
        -- say the person's name and score
        ll.Say(0, people[i].name .. ": " .. people[i].score)
    end
end

state_entry()

--[[
Jane: 98
Jennifer: 95
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

