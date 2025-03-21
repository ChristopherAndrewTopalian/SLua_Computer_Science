-- table_data_show_all_scores.lua

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

function touch_start(total_number)
    for i = 1, #people do
        ll.Say(0, people[i].score)
    end
end

--[[
98
93
]]

