-- greeting_hour_of_day.lua

function getHours()
    local timestamp = ll.GetTimestamp()  -- format: "YYYY-MM-DDTHH:MM:SS.ffffffZ"
    local hourStr = ll.GetSubString(timestamp, 11, 12)  -- extract the hour
    local hour = tonumber(hourStr)  -- convert the hour string to a number

    -- adjust for SLT (PST, UTC - 7)
    hour = hour - 7  -- subtract 7 hours to account for the timezone difference (UTC to SLT)

    -- if hour is negative, adjust to a valid 24-hour format by adding 24
    if hour < 0 then
        hour = hour + 24
    end

    return hour
end

function getGreeting(hour)
    if hour >= 5 and hour <= 11 then
        return "Good morning!"
    elseif hour >= 12 and hour <= 16 then
        return "Good afternoon!"
    elseif hour >= 17 and hour <= 20 then
        return "Good evening!"
    else  -- 21 to 23 and 0 to 4
        return "Good night!"
    end
end

function state_entry()
    local hour = getHours()
    local greeting = getGreeting(hour)
    ll.OwnerSay("Current hour (SLT): " .. tostring(hour))
    ll.OwnerSay(greeting)
    ll.SetText(tostring(hour) .. " - " .. greeting, vector(0, 255, 255), 1)
end

function LLEvents.touch_start(detected)
    local hour = getHours()
    local greeting = getGreeting(hour)
    ll.OwnerSay("Current hour (SLT): " .. tostring(hour))
    ll.OwnerSay(greeting)
    ll.SetText(tostring(hour) .. " - " .. greeting, vector(0, 255, 255), 1)
end

state_entry()

--[[
10 - Good morning!
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

