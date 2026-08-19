-- table_sort_nested_alphabetical.lua
-- teaches sorting a dictionary of dictionaries by key, then using a nested loop to print the data.

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
    ll.Say(0, "Initiating Alphabetical Roster Scan...")
    ll.Say(0, " ")

    -- Create an empty array to hold our roster names
    local sortedNames = {}

    -- Extract just the names (the keys) from the people table
    for personName, profileData in pairs(people) do
        table.insert(sortedNames, personName)
    end

    -- Sort the array of names alphabetically (A to Z)
    table.sort(sortedNames)

    -- Loop through the sorted array to print profiles in order
    for i = 1, #sortedNames do
        -- Grab the current person's name and their corresponding dictionary of data
        local currentName = sortedNames[i]
        local profileData = people[currentName]

        ll.Say(0, "--- " .. currentName .. "'s Profile ---")

        -- The Nested Loop. Scan through the details inside this specific profile.
        for key, value in pairs(profileData) do
            ll.Say(0, key .. ": " .. value)
        end

        -- Add a blank line for readability before the next person
        ll.Say(0, " ")
    end
end

state_entry()

--[[ Output:
Initiating Alphabetical Roster Scan...
 
--- Jane's Profile ---
name: Jane
rank: Captain
status: Active
score: 98
 
--- Jennifer's Profile ---
name: Jennifer
rank: Lieutenant
status: On Leave
score: 95
 
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

