-- gateContradiction.lua

function gateContradiction(a, b)
    if (a == 0 and b == 0) or
       (a == 0 and b == 1) or
       (a == 1 and b == 0) or
       (a == 1 and b == 1) then
        return "One or Both False or True."
    else
        return '0'
    end
end

function state_entry()
    ll.Say(0, gateContradiction(0, 1))
end

function LLEvents.touch_start(detected)
    ll.Say(0, gateContradiction(0, 1))
end

state_entry()

--[[
One or Both False or True.
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

