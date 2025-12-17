-- gateOr.lua

function gateOr(a, b)
    if a == 1 or b == 1 then
        return "One or Both True"
    else
        return '0'
    end
end

function state_entry()
    ll.Say(0, gateOr(0, 1))
end

function LLEvents.touch_start(detected)
    ll.Say(0, gateOr(0, 1))
end

state_entry()

--[[
One or Both True
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

