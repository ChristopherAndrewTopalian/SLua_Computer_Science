-- SensorRepeat.lua

function state_entry()
    ll.SensorRepeat("", NULL_KEY, AGENT, 96.0, math.pi, 10.0)
end

function sensor(num_detected)
    for i = 0, num_detected - 1 do
        local name = ll.DetectedName(i)
        local key = ll.DetectedKey(i)
        local pos = ll.DetectedPos(i)

        ll.OwnerSay("Detected: " .. name .. " at " .. tostring(pos))
    end
end

function no_sensor()
    ll.OwnerSay("no avatars detected.")
end

state_entry()

--[[
Detected: Keystoner March at <146.56297, 175.53328, 22.95337>
[22:43] Object: Detected: JohnDoe2002 Resident at <130.15503, 133.31982, 22.99608
]]

--[[
    -- "" detect any person
    -- NULL_KEY for any owner
    -- AGENT means only detect people
    -- 96.0 is max range,
    -- math.pi is 180 degree arc,
    -- 10.0 means every 10 seconds
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

