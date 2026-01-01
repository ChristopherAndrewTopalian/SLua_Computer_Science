-- gateAnd.lua

function gateAnd(a, b)
    if a == 1 and b == 1 then
        return 1 -- Both True
    else
        return 0 -- Not Both True
    end
end

function state_entry()
    ll.Say(0, tostring(gateAnd(1, 1)))
end

function LLEvents.touch_start(detected)
    ll.Say(0, tostring(gateAnd(1, 1)))
end

state_entry()

--[[
1
Both True
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

