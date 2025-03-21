-- gateLp.lua

function gateLp(a, b)
    if a == 1 then
        return "A True or Both True"
    else
        return '0'
    end
end

function state_entry()
    ll.Say(0, gateLp(1, 0))
end

function touch_start()
    ll.Say(0, gateLp(1, 0))
end

state_entry()

--[[
A True or Both True
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

