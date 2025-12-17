-- getMinutes.lua

function getMinutes()
    local timestamp = ll.GetTimestamp()  -- format: "YYYY-MM-DDTHH:MM:SS.ffffffZ"
    local minutes = ll.GetSubString(timestamp, 14, 15)

    return minutes
end

function state_entry()
    local minutes = getMinutes()  -- get the current minutes in SLT
    ll.OwnerSay("Current minutes (SLT): " .. tostring(minutes))
    ll.SetText(tostring(minutes), vector(0, 255, 255), 1)
end

function LLEvents.touch_start(detected)
    local minutes = getMinutes()  -- get the current minutes in SLT
    ll.OwnerSay("Current minutes (PST): " .. tostring(minutes))
    ll.SetText(tostring(minutes), vector(0, 255, 255), 1)
end

state_entry()

--[[
11
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

