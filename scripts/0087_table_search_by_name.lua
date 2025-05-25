-- table_search_by_name.lua

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

function state_entry()
    -- choose a name to search for
    local nameToSearch = "Tabitha"

    -- variable to store the found person
    local person = nil

    -- loop through the people table
    for i = 1, #people do
        -- if the name matches
        if people[i].name == nameToSearch then
            -- store the matching person
            person = people[i]
            -- stop searching
            break
        end
    end

    -- check if person was found
    if person ~= nil then
        ll.Say(0, person.name .. "'s score is " .. person.score)
    else
        ll.Say(0, nameToSearch .. " was not found.")
    end
end

state_entry()

--[[
Tabitha's score is 90
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

