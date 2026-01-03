-- 0100_animate_avatar.lua

local anim_name = "Ecstacy Dance" 
local last_avatar = nil
local is_busy = false

local function is_valid_avatar(av)
    -- check for nil, empty strings, and the "Null Key"
    local av_str = tostring(av)
    return av ~= nil and av_str ~= "00000000-0000-0000-0000-000000000000" and #av_str > 5
end

local function init()
    ll.SitTarget(vector(0.0, 0.0, 0.1), rotation(0, 0, 0, 1))
    ll.Say(0, "System Ready. Sit to dance.")
end

function LLEvents.changed(change)
    if bit32.band(change, CHANGED_LINK) ~= 0 then
        local avatar = ll.AvatarOnSitTarget()

        if is_valid_avatar(avatar) then
            -- if someone just sat down and we aren't already animating them
            if avatar ~= last_avatar and not is_busy then
                is_busy = true
                last_avatar = avatar
                ll.RequestPermissions(avatar, PERMISSION_TRIGGER_ANIMATION)
            end
        else
            -- if the sit target is empty (someone stood up)
            if last_avatar ~= nil then
                local currentPerms = ll.GetPermissions()
                if bit32.band(currentPerms, PERMISSION_TRIGGER_ANIMATION) ~= 0 then
                    ll.StopAnimation(anim_name)
                end
                last_avatar = nil
                is_busy = false
            end
        end
    end
end

function LLEvents.run_time_permissions(perm)
    if bit32.band(perm, PERMISSION_TRIGGER_ANIMATION) ~= 0 then
        ll.StopAnimation("sit")
        ll.StartAnimation(anim_name)
    else
        -- reset if they decline permissions
        last_avatar = nil
        is_busy = false
    end
end

init()

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2026
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

