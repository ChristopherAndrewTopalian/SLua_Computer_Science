-- SetPos.lua

function state_entry()
    local currentPos = ll.GetPos()

    ll.SetText(tostring(currentPos), vector(0, 255, 255), 1)
end

function LLEvents.touch_start(detected)
    ll.SetPos(ll.GetPos() + vector(0, 0, 0.1))

    ll.SetText(tostring(ll.GetPos()), vector(0, 255, 255), 1)
end


state_entry()

--[[
Each time the prim is left clicked it will go higher
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

