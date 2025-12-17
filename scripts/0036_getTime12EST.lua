-- getTime12EST.lua

function getTime12EST()
    local timeInSeconds = ll.GetWallclock()

    -- convert seconds to hours, minutes, and seconds
    local hours = math.floor(timeInSeconds / 3600)
    local minutes = math.floor((timeInSeconds % 3600) / 60)
    local remainingSeconds = timeInSeconds % 60

    -- we add 3 hours for EST time zone
    hours = hours + 3

    -- if hours go beyond 23, reset to 0
    if hours >= 24 then
        hours = hours - 24
    end

    -- convert to 12 hour format
    local period = "AM"
    if hours >= 12 then
        period = "PM"
        if hours > 12 then
            hours = hours - 12
        end
    elseif hours == 0 then
        hours = 12
    end

    -- 12-hour: MM:SS
    return string.format("%02d:%02d:%02d %s", hours, minutes, remainingSeconds, period)
end

function state_entry()
    ll.Say(0, "Current EST time: " .. getTime12EST())
end

function LLEvents.touch_start(detected)
    ll.Say(0, "Current EST time: " .. getTime12EST())
end

state_entry()

--[[
Current EST time: 04:46:49 PM
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

