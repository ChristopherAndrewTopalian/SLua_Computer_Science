-- getTime24EST.lua

function getTime24EST()
    local timeInSeconds = ll.GetWallclock()
    
    -- Convert seconds to hours, minutes, and seconds
    local hours = math.floor(timeInSeconds / 3600)
    local minutes = math.floor((timeInSeconds % 3600) / 60)
    local remainingSeconds = timeInSeconds % 60

    -- we add 3 hours for the EST time zone
    hours = hours + 3

    -- if hours go beyond 23, reset to 0
    if hours >= 24 then
        hours = hours - 24
    end

    -- HH:MM:SS format
    return string.format("%02d:%02d:%02d", hours, minutes, remainingSeconds)
end

function state_entry()
    ll.Say(0, "Current EST time: " .. getTime24EST())
end

function LLEvents.touch_start(detected)
    ll.Say(0, "Current EST time: " .. getTime24EST())
end

state_entry()

--[[
Current EST time: 16:51:34
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

