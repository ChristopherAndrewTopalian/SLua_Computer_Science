-- getTime24MST.lua

function getTime24MST()
    local timeInSeconds = ll.GetWallclock()
    local hours = math.floor(timeInSeconds / 3600)
    local minutes = math.floor((timeInSeconds % 3600) / 60)
    local remainingSeconds = timeInSeconds % 60

    -- we add 1 hour to convert PST to MST (UTC -8 to UTC -7)
    hours = (hours + 1) % 24

    -- HH:MM:SS
    return string.format("%02d:%02d:%02d", hours, minutes, remainingSeconds)
end

function state_entry()
    ll.Say(0, "Current SL time in MST: " .. getTime24MST())
end

function touch_start()
    ll.Say(0, "Current SL time in MST: " .. getTime24MST())
end

state_entry()

--[[
Current SL time in MST: 14:13:44
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

