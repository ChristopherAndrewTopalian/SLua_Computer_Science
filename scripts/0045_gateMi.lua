-- gateMi.lua

function gateMi(a, b)
    if a == 0 or b == 1 then
        return 1 -- Both False or B True or Both True
    else
        return 0
    end
end

function state_entry()
    ll.Say(0, tostring(gateMi(0, 1)))
end

function LLEvents.touch_start(detected)
    ll.Say(0, tostring(gateMi(0, 1)))
end

state_entry()

-- 1

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

