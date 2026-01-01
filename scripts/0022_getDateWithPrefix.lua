-- getDateWithPrefix.lua

function getDateWithPrefix()
    local prefix = "Today is: "
    local currentDate = ll.GetDate()
    local dateWithPrefix = prefix .. currentDate
    return dateWithPrefix
end

function state_entry()
    ll.Say(0, getDateWithPrefix())
end

function LLEvents.touch_start(detected)
    ll.Say(0, getDateWithPrefix())
end

state_entry()

-- Today is: 2025-12-31

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

