-- table_filter_after_date_mdy.lua

local people =
{
    {
        name = "jane",
        score = 98,
        date = '03/01/1980'
    },

    {
        name = "tabitha",
        score = 93,
        date = '10/05/1987'
    }
}

-- helper function to convert MM/DD/YYYY to a comparable number
function date_to_number_mdy(date_string)
    local month, day, year = date_string:match("(%d%d)/(%d%d)/(%d%d%d%d)")
    return tonumber(year .. month .. day)
end

function LLEvents.touch_start(detected)
    local threshold = '03/01/1980'
    local threshold_number = date_to_number_mdy(threshold)

    for i = 1, #people do
        if date_to_number_mdy(people[i].date) > threshold_number then
            ll.Say(0, people[i].name)
        end
    end
end

--[[
tabitha
]]
