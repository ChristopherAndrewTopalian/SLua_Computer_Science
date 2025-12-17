-- getDate.lua

function getDate()
    local currentDate = ll.GetDate();
    return currentDate;
end

function state_entry()
    ll.Say(0, getDate())
end

function LLEvents.touch_start(detected)
    ll.Say(0, getDate())
end

state_entry()

--[[
2025-03-21
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

