-- gateLc.lua

function gateLc(a, b)
    if a == 0 then
        return 1 -- Both False or B True
    else
        return 0
    end
end

function state_entry()
    ll.Say(0, tostring(gateLc(0, 1)))
end

function LLEvents.touch_start(detected)
    ll.Say(0, tostring(gateLc(0, 1)))
end

state_entry()

-- 1

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

