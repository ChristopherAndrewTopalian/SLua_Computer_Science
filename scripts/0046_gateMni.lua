-- gateMni.lua

function gateMni(a, b)
    if a == 1 and b == 0 then
        return "A True"
    else
        return '0'
    end
end

function state_entry()
    ll.Say(0, gateMni(1, 0))
end

function LLEvents.touch_start(detected)
    ll.Say(0, gateMni(1, 0))
end

state_entry()

--[[
A True
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

