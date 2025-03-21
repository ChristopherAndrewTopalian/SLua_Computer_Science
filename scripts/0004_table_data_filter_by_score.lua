-- table_data_filter_by_score.lua

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
        -- check if the score is greater than 95
        if people[i].score > 95 then
            ll.Say(0, people[i].name)
        end
    end
end

--[[
jane
]]

