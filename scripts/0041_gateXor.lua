-- gateXor.lua

function gateXor(a, b)
    if (a == 1 and b == 0) or (a == 0 and b == 1) then
        return "A True or B True"
    else
        return '0'
    end
end

function state_entry()
    ll.Say(0, gateXor(1, 0))
end

function LLEvents.touch_start(detected)
    ll.Say(0, gateXor(1, 0))
end

state_entry()

--[[
A True or B True
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

