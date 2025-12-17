-- DetectedName.lua

function state_entry()
   ll.Say(0, 'Touch to say your name')
end

function LLEvents.touch_start(detected)
    ll.Say(0, ll.DetectedName(0))
end

state_entry()

--[[
Touch to say your name
Keystoner March
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

