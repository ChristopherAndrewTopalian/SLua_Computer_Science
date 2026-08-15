-- table_key_lookup_show_name.lua

local people =
{
    Jane = {
        name = "Jane",
        score = 98
    },
    Tabitha = {
        name = "Tabitha",
        score = 90
    },
    Jennifer = {
        name = "Jennifer",
        score = 95
    }
}

function state_entry()
    -- Instant lookup using dot notation
    ll.Say(0, people.Jane.name)
end

state_entry()

--[[
Jane
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2026
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

