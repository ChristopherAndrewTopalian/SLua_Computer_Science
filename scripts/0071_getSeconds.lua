-- getSeconds.lua

function getSeconds()
    local timestamp = ll.GetTimestamp()  -- format: "YYYY-MM-DDTHH:MM:SS.ffffffZ"
    local seconds = ll.GetSubString(timestamp, 17, 18)

    return seconds
end

function state_entry()
    local seconds = getSeconds()  -- get the current seconds in SLT
    ll.OwnerSay("Current seconds (SLT): " .. tostring(seconds))
    ll.SetText(tostring(seconds), vector(0, 255, 255), 1)
end

function touch_start(total_number)
    local seconds = getSeconds()  -- get the current seconds in SLT
    ll.OwnerSay("Current seconds (PST): " .. tostring(seconds))
    ll.SetText(tostring(seconds), vector(0, 255, 255), 1)
end

state_entry()

--[[
50
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

