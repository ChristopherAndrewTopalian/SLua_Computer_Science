-- if_elseif_else_variable_check.lua

function LLEvents.touch_start(detected)
    local ourNumber = 19

    if ourNumber == 17 then
        ll.Say(0, 'Number is 17')
    elseif ourNumber == 18 then
        ll.Say(0, 'Number is 18')
    else
        ll.Say(0, 'Number is NOT 17 or 18')
    end
end

--[[
Number is NOT 17 or 18
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

