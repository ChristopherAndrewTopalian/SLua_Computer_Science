-- Add_Name_to_Table.lua

local people = {}

local function main()
    ll.SetText("Touch to add your name to the list.", vector(0, 1, 1), 1)
end

function LLEvents.touch_start(detected)
    -- get the name. In slua, 'detected' is a table of objects.
    -- detected[1] is the first person who touched.
    local name = detected[1]:getName()

    -- add to the table
    table.insert(people, name)

    ll.Say(0, name .. " added!")

    -- check the length of the table using the '#' operator
    if #people == 5 then
        ll.Say(0, "We reached 5 people!")
        
        -- print the whole list joined by commas
        ll.Say(0, "List: " .. table.concat(people, ", "))
        
        -- clear the list to start over
        people = {} 
    end
end

-- start the script
main()

--[[
List: John Doe
Jane Doe
James Doe
Jennifer Doe
Jordan Doe
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

