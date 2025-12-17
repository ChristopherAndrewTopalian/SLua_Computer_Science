-- touch_store_name_display_list.lua

local userTable = {}
local channel = 100
local listener = nil

function state_entry()
    ll.SetText("Touch to register your name", vector(0, 255, 255), 1)
end

function LLEvents.touch_start(detected)
    local userKey = ll.DetectedKey(0)
    local userName = ll.DetectedName(0)

    if userTable[userKey] == nil then
        userTable[userKey] = userName
        updateDisplay()
        ll.OwnerSay("Registered: " .. userName)
    else
        ll.OwnerSay("Already registered: " .. userName)
    end
end

function updateDisplay()
    local text = "Registered Users:\n"
    for key, name in pairs(userTable) do
        text = text .. name .. "\n"
    end
    ll.SetText(text, vector(0, 255, 0), 1)
end

state_entry()

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

