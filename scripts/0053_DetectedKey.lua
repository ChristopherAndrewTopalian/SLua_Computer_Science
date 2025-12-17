-- DetectedKey.lua

function state_entry()
   ll.Say(0, 'Touch to find out your uuid key')
end

function LLEvents.touch_start(detected)
    ll.Say(0, ll.DetectedKey(1))
end

state_entry()

--[[
Touch to find out your uuid key
0f6ab9e9-1738-469e-ab65-79200c433510
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

