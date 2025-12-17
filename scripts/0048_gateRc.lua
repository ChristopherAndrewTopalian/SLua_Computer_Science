-- gateRc.lua

function gateRc(a, b)
    if (a == 0 and b == 0) or (a == 1 and b == 0) then
        return "Both False or A True"
    else
        return '0'
    end
end

function state_entry()
    ll.Say(0, gateRc(1, 0))
end

function LLEvents.touch_start(detected)
    ll.Say(0, gateRc(1, 0))
end

state_entry()

--[[
Both False or A True
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

