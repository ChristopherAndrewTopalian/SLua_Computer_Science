-- table_print_all_nested.lua
-- Demonstrates iterating through a dictionary of dictionaries using nested pairs() loops.

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
    ll.Say(0, "Initiating Roster Scan...")
    ll.Say(0, " ")
    
    -- Outer Loop: Grab the person's name (the key) and their profile data (the value)
    for personName, profileData in pairs(people) do
        
        -- Print a header for whoever we are currently looking at
        ll.Say(0, "--- " .. personName .. "'s Profile ---")
        
        -- Inner Loop: Scan through the details inside this specific profile
        for key, value in pairs(profileData) do
            ll.Say(0, key .. ": " .. value)
        end
        
        -- Add a blank line for readability before the next person
        ll.Say(0, " ")
    end
end

state_entry()

--[[ Output will look something like this (order is not guaranteed):
Initiating Roster Scan...
 
--- Jennifer's Profile ---
name: Jennifer
rank: Lieutenant
status: On Leave
score: 95
 
--- Jane's Profile ---
name: Jane
rank: Captain
status: Active
score: 98
 
--- Tabitha's Profile ---
name: Tabitha
rank: Commander
status: Active
score: 90
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2026
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

