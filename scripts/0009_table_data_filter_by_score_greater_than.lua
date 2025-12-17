-- table_data_filter_by_score_greater_than.lua

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
        -- check if the score is greater than 95
        if people[i].score > 95 then
            ll.Say(0, people[i].name)
        end
    end
end

--[[
jane
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

