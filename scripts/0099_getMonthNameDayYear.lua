-- getMonthDayYear.lua

local months = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"}

function getMonthNameDayYear()
    local raw = ll.GetDate() -- "2025-03-21"

    -- extract parts using string.sub (slicing)
    local year  = string.sub(raw, 1, 4)
    local monthIndex = tonumber(string.sub(raw, 6, 7))
    local day   = string.sub(raw, 9, 10)

    return months[monthIndex] .. " " .. day .. ", " .. year
end

-- Mar 21, 2025

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

