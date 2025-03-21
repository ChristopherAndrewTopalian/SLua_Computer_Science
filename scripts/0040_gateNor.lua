-- gateNor.lua

function gateNor(a, b)
    if a == 0 and b == 0 then
        return "Both False"
    else
        return '0'
    end
end

function state_entry()
    ll.Say(0, gateNor(0, 0))
end

function touch_start()
    ll.Say(0, gateNor(0, 0))
end

state_entry()

--[[
Both False
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

