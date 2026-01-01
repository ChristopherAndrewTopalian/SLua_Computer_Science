-- getDateRandomPrefix.lua

-- table of welcome messages
local messages = {"Today is", "Current Date:", "Date:"}

function getDateRandomPrefix()
    -- choose a random message from the table
    -- #messages gets the length of the table (3)
    local prefix = messages[math.random(1, #messages)]

    local rawDate = ll.GetDate()

    -- combine them for a "useful" return
    return prefix .. " " .. rawDate
end

function state_entry() 
    ll.Say(0, getDateRandomPrefix())
end

function LLEvents.touch_start(detected)
    ll.Say(0, getDateRandomPrefix())
end

state_entry()

-- Date: 2026-01-01

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

