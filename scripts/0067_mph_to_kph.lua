-- mph_to_kph.lua

local channel = 100
local listener = nil

function state_entry()
    ll.SetText("Touch to enter speed in mph", vector(0, 255, 255), 1)
end

function LLEvents.touch_start(detected)
    local userKey = ll.DetectedKey(0)
    listener = ll.Listen(channel, "", userKey, "")
    ll.TextBox(userKey, "Type speed in mph:", channel)
end

function listen(channel, name, id, message)
    if message ~= "" then
        -- convert mph to kph (1 mph = 1.60934 kph)
        local mph = tonumber(message)
        if mph then
            local kph = mph * 1.60934
            showConversionResult(mph, kph)
        else
            ll.SetText("Please enter a valid number.", vector(255, 0, 0), 1)
        end
    else
        ll.SetText("No speed entered.", vector(255, 0, 0), 1)
    end

    ll.ListenRemove(listener)
end

function showConversionResult(mph, kph)
    local result = string.format("Speed: %.2f mph = %.2f kph", mph, kph)
    ll.SetText(result, vector(0, 255, 0), 1)
end

state_entry()

--[[
Speed 25.00 mph = 40.23 kph
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

