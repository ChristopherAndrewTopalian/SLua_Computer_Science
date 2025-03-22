-- SetText_concatenate_strings.lua

local message1 = "Hi Everyone"
local message2 = "Happy Scripting"

function state_entry()
    ll.SetText(message1 .. '\n' .. message2, vector(0, 255, 255), 1)
end

state_entry()

--[[
Hi Everyone
Happy Scripting
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

