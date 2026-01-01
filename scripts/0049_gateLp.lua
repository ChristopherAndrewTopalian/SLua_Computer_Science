-- gateLp.lua

function gateLp(a, b)
    if a == 1 then
        return 1
    else
        return 0
    end
end

function state_entry()
    ll.Say(0, tostring(gateLp(1, 0)))
end

function LLEvents.touch_start(detected)
    ll.Say(0, tostring(gateLp(1, 0)))
end

state_entry()

-- 1

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

