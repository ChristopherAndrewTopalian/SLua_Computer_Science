-- gateNand.lua

function gateNand(a, b)
    if a == 0 or b == 0 then
        return "Both False or A True or B True"
    else
        return '0'
    end
end

function state_entry()
    ll.Say(0, gateNand(0, 1))
end

function touch_start(total_number)
    ll.Say(0, gateNand(0, 1))
end

state_entry()

--[[
Both False or A True or B True
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

