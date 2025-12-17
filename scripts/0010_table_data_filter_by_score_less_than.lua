-- table_data_filter_by_score_less_than.lua

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
        if people[i].score < 98 then
            ll.Say(0, people[i].name)
        end
    end
end

--[[
tabitha
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

