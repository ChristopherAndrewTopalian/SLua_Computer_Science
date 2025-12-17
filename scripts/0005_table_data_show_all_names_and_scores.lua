-- table_data_show_all_names_and_scores.lua

local people = {
    {
        name = "jane",
        score = 98
    },

    {
        name = "tabitha",
        score = 93
    }
}

function LLEvents.touch_start(detected)
    for i = 1, #people do
        -- Concatenate name and score and display them together
        ll.Say(0, "Name: " .. people[i].name .. ", Score: " .. people[i].score)
    end
end

--[[
Name: jane, Score: 98
Name: tabitha, Score: 93
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

