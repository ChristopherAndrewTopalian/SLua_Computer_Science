-- table_update_entry_by_name.lua

-- define the people table with multiple entries
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

-- loop through the people table
for i = 1, #people do
    -- if the person's name is "Jennifer"
    if people[i].name == "Jennifer" then
        -- update her score to 100
        people[i].score = 100
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
Tabitha: 90
Jennifer: 100
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

