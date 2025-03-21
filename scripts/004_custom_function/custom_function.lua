-- custom_function.lua

function ourFunction()
   ll.Say(0, "Hi Everyone")
end

function state_entry()
    ourFunction()
end

function touch_start(total_number)
   ll.Say(0, "Object was touched.")
end

state_entry()

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

