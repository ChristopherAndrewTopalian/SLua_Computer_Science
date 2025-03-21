-- getTime24CST.lua

function getTime24CST()
    local timeInSeconds = ll.GetWallclock()
    local hours = math.floor(timeInSeconds / 3600)
    local minutes = math.floor((timeInSeconds % 3600) / 60)
    local remainingSeconds = timeInSeconds % 60

    -- we add 2 hours for Central Time (CST)
    hours = hours + 2

    -- handle hour overflow (wrap around if over 23)
    if hours >= 24 then
        hours = hours - 24
    end

    -- HH:MM:SS
    return string.format("%02d:%02d:%02d", hours, minutes, remainingSeconds)
end

function state_entry()
    ll.Say(0, "Current SL time in CST: " .. getTime24CST())
end

function touch_start()
    ll.Say(0, "Current SL time in CST: " .. getTime24CST())
end

state_entry()

--[[
Current SL time in CST: 15:50:04
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

