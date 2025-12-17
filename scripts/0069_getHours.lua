-- getHours.lua

function getHours()
    local timestamp = ll.GetTimestamp()  -- format: "YYYY-MM-DDTHH:MM:SS.ffffffZ"
    local hourStr = ll.GetSubString(timestamp, 11, 12)  -- extract the hour
    local hour = tonumber(hourStr)  -- vonvert the hour string to a number

    -- adjust for SLT (PST, UTC - 7)
    hour = hour - 7  -- subtract 7 hours to account for the timezone difference (UTC to SLT)

    -- if hour is negative, adjust to a valid 24-hour format by adding 24
    if hour < 0 then
        hour = hour + 24
    end

    return hour
end

function state_entry()
    local hour = getHours()  -- get the current hour in SLT
    ll.OwnerSay("Current hour (SLT): " .. tostring(hour))
    ll.SetText(tostring(hour), vector(0, 255, 255), 1)
end

function LLEvents.touch_start(detected)
    local hour = getHours()  -- get the current hour in SLT
    ll.OwnerSay("Current hour (PST): " .. tostring(hour))
    ll.SetText(tostring(hour), vector(0, 255, 255), 1)
end

state_entry()

--[[
7
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

