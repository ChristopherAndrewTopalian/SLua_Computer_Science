-- TextBox_add_name_to_table.lua

local nameList = {}
local channel = 100
local listener = nil

function state_entry()
    ll.SetText("Touch to add your name", vector(0, 255, 255), 1)
end

function touch_start(total_number)
    local userKey = ll.DetectedKey(0)
    listener = ll.Listen(channel, "", userKey, "")
    ll.TextBox(userKey, "Type your name:", channel)
end

function listen(channel, name, id, message)
    if message ~= "" then
        table.insert(nameList, message)
        updateText()
    else
        ll.SetText("No name entered.", vector(255, 0, 0), 1)
    end

    ll.ListenRemove(listener)
end

function updateText()
    local list = "Names:\n"
    for i = 1, #nameList do
        list = list .. nameList[i] .. "\n"
    end
    ll.SetText(list, vector(0, 255, 0), 1)
end

state_entry()

--[[
When Left clicked we can add a name to the table by typing and pressing the submit button
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]
