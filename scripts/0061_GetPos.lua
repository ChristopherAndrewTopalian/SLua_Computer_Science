-- GetPos.lua

local thePosition;

function state_entry()
    thePosition = ll.GetPos()

    ll.SetText(tostring(thePosition), vector(0, 255, 255), 1)
end

function touch_start(total_number)
    thePosition = ll.GetPos()

    ll.SetText(tostring(thePosition), vector(0, 255, 255), 1)
end

state_entry()

--[[
<147.34339, 161.22520, 22.25000>
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

