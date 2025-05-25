-- table_insert_entry.lua

-- create an empty table to store people
local people = {}

-- define a table for jane with a name and score
local jane = 
{
    name = "Jane",
    score = 98
}

-- insert the entry table into the people list
table.insert(people, jane)

-- define the state_entry function which runs when the script starts
function state_entry()
    -- loop through each person in the people list
    for i = 1, #people do
       -- say the person's name and score
        ll.Say(0, people[i].name .. ": " .. people[i].score)
    end

end

-- call the state_entry function to run the script
state_entry()

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

