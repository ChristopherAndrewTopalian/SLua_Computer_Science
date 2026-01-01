-- gateCni.lua

function gateCni(a, b)
    if a == 0 and b == 1 then
        return 1 -- B True
    else
        return 0
    end
end

function state_entry()
    ll.Say(0, tostring(gateCni(0, 1)))
end

function LLEvents.touch_start(detected)
    ll.Say(0, tostring(gateCni(0, 1)))
end

state_entry()

-- 1

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

