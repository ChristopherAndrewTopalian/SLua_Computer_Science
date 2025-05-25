-- if_variable_not_equal_to.lua

function touch_start(total_number)
    local ourNumber = 19

    if ourNumber ~= 17 then
        ll.Say(0, 'Number is NOT 17')
    else
        ll.Say(0, 'Number IS 17')
    end
end

--[[
Number is NOT 17
]]
