-- gateAnd.lua

function gateAnd(a, b)
    if a == 1 and b == 1 then
        return "Both True"
    else
        return "Not Both True"
    end
end

function state_entry()
    ll.Say(0, gateAnd(1, 1))
end

function touch_start(total_number)
    ll.Say(0, gateAnd(1, 1))
end

state_entry()

--[[
Both True
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

