-- getTime12MST.lua

function getTime12MST()
    local timeInSeconds = ll.GetWallclock()
    local hours = math.floor(timeInSeconds / 3600)
    local minutes = math.floor((timeInSeconds % 3600) / 60)
    local remainingSeconds = timeInSeconds % 60

    -- we add 1 hour to convert PST to MST (UTC -8 to UTC -7)
    hours = (hours + 1) % 24

    -- convert to 12-hour format
    local period = "AM"
    if hours >= 12 then
        period = "PM"
        if hours > 12 then
            hours = hours - 12
        end
    elseif hours == 0 then
        hours = 12
    end

    -- 12-hour:MM:SS
    return string.format("%02d:%02d:%02d %s", hours, minutes, remainingSeconds, period)
end

function state_entry()
    ll.Say(0, "Current SL time in MST: " .. getTime12MST())
end

function touch_start(total_number)
    ll.Say(0, "Current SL time in MST: " .. getTime12MST())
end

state_entry()

--[[
Current SL time in MST: 02:42:01 PM
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

