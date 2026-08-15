-- table_print_nested_values.lua

local people =
{
    Jane = {
        name = "Jane",
        score = 98,
        rank = "Captain",
        status = "Active"
    },
    Tabitha = {
        name = "Tabitha",
        score = 90,
        rank = "Commander",
        status = "Active"
    },
    Jennifer = {
        name = "Jennifer",
        score = 95,
        rank = "Lieutenant",
        status = "On Leave"
    }
}

function state_entry()
    ll.Say(0, "Jane's Profile")
    
    -- We pass the specific dictionary (people.Jane) into the pairs loop
    for key, value in pairs(people.Jane) do
        ll.Say(0, key .. ": " .. value)
    end
end

state_entry()

--[[ Output will look something like this (order is not guaranteed):
Jane's Profile
score: 98
name: Jane
status: Active
rank: Captain
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2026
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

