-- getTime24PST.lua

function getTime24PST()
    local timeInSeconds = ll.GetWallclock()
    local hours = math.floor(timeInSeconds / 3600)
    local minutes = math.floor((timeInSeconds % 3600) / 60)
    local remainingSeconds = timeInSeconds % 60

    -- HH:MM:SS
    return string.format("%02d:%02d:%02d", hours, minutes, remainingSeconds)
end

function state_entry()
    ll.Say(0, "Current SL time: " .. getTime24PST())
end

function touch_start(total_number)
    ll.Say(0, "Current SL time: " .. getTime24PST())
end

state_entry()

--[[
Current SL time: 12:37:22
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

