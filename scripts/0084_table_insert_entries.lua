-- table_insert_entries.lua

-- create an empty list to store people
local people = {}

-- define a table for jane with a name and score
local jane = 
{
    name = "Jane",
    score = 98
}

local tabitha =
{
    name = "Tabitha",
    score = 90
}

local jennifer =
{
    name = "Jennifer",
    score = 95
}

-- insert each person into the people list
table.insert(people, jane)
table.insert(people, tabitha)
table.insert(people, jennifer)

function state_entry()
    -- loop through each person in the people list
    for i = 1, #people do
        -- say the person's name and score
        ll.Say(0, people[i].name .. ": " .. people[i].score)
    end
end

state_entry()

--[[
Jane: 98
Tabitha: 90
Jennifer: 95
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

