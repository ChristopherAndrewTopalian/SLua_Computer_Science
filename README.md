# SLua Computer Science
In Second Life we can program using SLua. SLua enables many new possibilities in virtual world content creation. This tutorial teaches how to program using SLua.  

Please give this page a LIKE :-)  

Please Follow my GitHub page for updates :-)  

If you enjoy my apps and tutorials and want to buy me a coffee you can use [paypal.me/keystonermarch](https://www.paypal.com/paypalme/keystonermarch)  

---

### How to Download this App
1. Click the green Code Button on this github page
2. Choose Download ZIP
3. Save the Zip File
4. Extract All
5. Double click the HTML file to start the App

---

Happy Scripting :-)

---

```lua 
-- default_script.lua

function state_entry()
   ll.Say(0, "Hi Everyone")
end

function touch_start(total_number)
   ll.Say(0, "Object was Touched")
end

state_entry()

--[[
Object was Touched
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- custom_function.lua

function ourFunction()
   ll.Say(0, "Hi Everyone")
end

function touch_start(total_number)
   ourFunction();
end

--[[
Hi Everyone
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- table_data_show_all_names.lua

local people = {
    {
        name = "jane",
        score = 98
    },

    {
        name = "tabitha",
        score = 93
    }
}

function touch_start(total_number)
    for i = 1, #people do
        ll.Say(0, people[i].name)
    end
end

--[[
jane
tabitha
]]
``` 
```lua 
-- table_data_show_all_scores.lua

local people = {
    {
        name = "jane",
        score = 98
    },

    {
        name = "tabitha",
        score = 93
    }
}

function touch_start(total_number)
    for i = 1, #people do
        ll.Say(0, people[i].score)
    end
end

--[[
98
93
]]

``` 
```lua 
-- table_data_show_all_names_and_scores.lua

local people = {
    {
        name = "jane",
        score = 98
    },

    {
        name = "tabitha",
        score = 93
    }
}

function touch_start(total_number)
    for i = 1, #people do
        -- Concatenate name and score and display them together
        ll.Say(0, "Name: " .. people[i].name .. ", Score: " .. people[i].score)
    end
end

--[[
Name: jane, Score: 98
Name: tabitha, Score: 93
]]

``` 
```lua 
-- table_data_show_name_by_index.lua

local people = {
    {
        name = "jane",
        score = 98
    },

    {
        name = "tabitha",
        score = 93
    }
}

function touch_start(total_number)
   ll.Say(0, people[1].name)
end

--[[
jane
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- table_data_filter_by_name.lua

local people = {
    {
        name = "jane",
        score = 98
    },

    {
        name = "tabitha",
        score = 93
    }
}

function touch_start(total_number)
    for i = 1, #people do
        if people[i].name == "tabitha" then
            ll.Say(0, people[i].name)
        end
    end
end

--[[
tabitha
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- table_data_filter_by_score.lua

local people = {
    {
        name = "jane",
        score = 98
    },

    {
        name = "tabitha",
        score = 93
    }
}

function touch_start(total_number)
    for i = 1, #people do
        if people[i].score == 98 then
            ll.Say(0, people[i].name)
        end
    end
end

--[[
tabitha
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- table_data_filter_by_score_greater_than.lua

local people = {
    {
        name = "jane",
        score = 98
    },

    {
        name = "tabitha",
        score = 93
    }
}

function touch_start(total_number)
    for i = 1, #people do
        -- check if the score is greater than 95
        if people[i].score > 95 then
            ll.Say(0, people[i].name)
        end
    end
end

--[[
jane
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- table_data_filter_by_score_less_than.lua

local people = {
    {
        name = "jane",
        score = 98
    },

    {
        name = "tabitha",
        score = 93
    }
}

function touch_start(total_number)
    for i = 1, #people do
        if people[i].score < 98 then
            ll.Say(0, people[i].name)
        end
    end
end

--[[
tabitha
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- table_data_filter_by_date.lua

local people = {
    {
        name = "jane",
        score = 98,
        date = '03/01/1980'
    },

    {
        name = "tabitha",
        score = 93,
        date = '10/05/1987'
    }
}

function touch_start(total_number)
    for i = 1, #people do
        if people[i].date == '03/01/1980' then
            ll.Say(0, people[i].name)
        end
    end
end

--[[
jane
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- table_data_filter_after_date.lua

local people = {
    {
        name = "jane",
        score = 98,
        date = '1980/03/01'
    },

    {
        name = "tabitha",
        score = 93,
        date = '1987/10/05'
    }
}

function touch_start(total_number)
    for i = 1, #people do
        if people[i].date > '03/01/1980' then
            ll.Say(0, people[i].name)
        end
    end
end

--[[
jane
tabitha
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- table_data_filter_before_date.lua

local people = {
    {
        name = "jane",
        score = 98,
        date = '1980/03/01'
    },

    {
        name = "tabitha",
        score = 93,
        date = '1987/10/05'
    }
}

function touch_start(total_number)
    for i = 1, #people do
        if people[i].date < '1989/01/05' then
            ll.Say(0, people[i].name)
        end
    end
end

--[[
jane
tabitha
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- table_data_filter_by_date_time.lua

local people = {
    {
        name = "jane",
        score = 98,
        date = '1980/03/01 08:00'
    },

    {
        name = "tabitha",
        score = 93,
        date = '1987/10/05 17:00'
    }
}

function touch_start(total_number)
    for i = 1, #people do
        if people[i].date == '1987/10/05 17:00' then
            ll.Say(0, people[i].name)
        end
    end
end

--[[
tabitha
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- table_data_filter_after_date_time.lua

local people = {
    {
        name = "jane",
        score = 98,
        date = '1980/03/01 08:00'
    },

    {
        name = "tabitha",
        score = 93,
        date = '1987/10/05 17:00'
    }
}

function touch_start(total_number)
    for i = 1, #people do
        if people[i].date > '1980/03/01 08:50' then
            ll.Say(0, people[i].name)
        end
    end
end

--[[
tabitha
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- table_data_filter_before_date_time.lua

local people = {
    {
        name = "jane",
        score = 98,
        date = '1980/03/01 08:00'
    },

    {
        name = "tabitha",
        score = 93,
        date = '1987/10/05 17:00'
    }
}

function touch_start(total_number)
    for i = 1, #people do
        if people[i].date < '1987/10/05 16:30' then
            ll.Say(0, people[i].name)
        end
    end
end

--[[
jane
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- table_data_filter_by_year.lua

local people = {
    {
        name = "jane",
        score = 98,
        date = "1980/03/01 08:00"
    },

    {
        name = "tabitha",
        score = 93,
        date = "1987/10/05 17:00"
    }
}

function touch_start(total_number)
    for i = 1, #people do
        -- extract first 4 characters
        local year = string.sub(people[i].date, 1, 4)

        -- check if year is "1987"
        if year == '1987' then
            ll.Say(0, people[i].name)
        end
    end
end

--[[
tabitha
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- table_data_filter_by_month.lua

local people = {
    {
        name = "jane",
        score = 98,
        date = "1980/03/01 08:00"
    },

    {
        name = "tabitha",
        score = 93,
        date = "1987/10/05 17:00"
    }
}

function touch_start(total_number)
    local targetMonth = "03"

    for i = 1, #people do
        -- extract month characters 6-7
        local month = string.sub(people[i].date, 6, 7)

        -- check if it matches target month
        if month == targetMonth then
            ll.Say(0, people[i].name)
        end
    end
end

--[[
jane
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- table_data_filter_by_year_month.lua

local people = {
    {
        name = "jane",
        score = 98,
        date = "1980/03/01 08:00"
    },

    {
        name = "tabitha",
        score = 93,
        date = "1987/10/05 17:00"
    }
}

function touch_start(total_number)
    local targetYearMonth = "1987/10"

    for i = 1, #people do
        -- extract year and month characters 1-7
        local yearMonth = string.sub(people[i].date, 1, 7)

        -- check if it matches target year and month
        if yearMonth == targetYearMonth then
            ll.Say(0, people[i].name)
        end
    end
end

--[[
tabitha
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- table_data_filter_by_month_day.lua

local people = {
    {
        name = "jane",
        score = 98,
        date = "1980/03/01 08:00"
    },

    {
        name = "tabitha",
        score = 93,
        date = "1987/10/05 17:00"
    }
}

function touch_start(total_number)
    local targetMonthDay = "03/01"

    for i = 1, #people do
        -- extract month and day characters 6-10
        local monthDay = string.sub(people[i].date, 6, 10)

        -- check if it matches target month and day
        if monthDay == targetMonthDay then
            ll.Say(0, people[i].name)
        end
    end
end

--[[
jane
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- GetDate.lua

function state_entry()
    ll.Say(0, ll.GetDate())
end

function touch_start(total_number)
    ll.Say(0, ll.GetDate())
end

state_entry()

--[[
2025-03-21
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- getDate.lua

function getDate()
    local currentDate = ll.GetDate();
    return currentDate;
end

function state_entry()
    ll.Say(0, getDate())
end

function touch_start(total_number)
    ll.Say(0, getDate())
end

state_entry()

--[[
2025-03-21
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- getYear.lua

function getYear()
    local currentDate = ll.GetDate()
    -- get the first 4 characters for year
    local year = string.sub(currentDate, 1, 4)
    return year
end

function state_entry()
    ll.Say(0, getYear())
end

function touch_start(total_number)
    ll.Say(0, getYear())
end

state_entry()

--[[
2025
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- getMonth.lua

function getMonth()
    local currentDate = ll.GetDate()
    -- get characters 6-7 for the month
    local month = string.sub(currentDate, 6, 7)
    return month
end

function state_entry()
    ll.Say(0, getMonth())
end

function touch_start(total_number)
    ll.Say(0, getMonth())
end

state_entry()

--[[
03
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- getDay.lua

function getDay()
    local currentDate = ll.GetDate()
    -- get characters 9-10 for the day
    local day = string.sub(currentDate, 9, 10)
    return day
end

function state_entry()
    ll.Say(0, getDay())
end

function touch_start(total_number)
    ll.Say(0, getDay())
end

state_entry()

--[[
21
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- getMonthName.lua

function getMonthName()
    local currentDate = ll.GetDate()
    -- get characters from 6-7 for month
    local monthNumber = tonumber(string.sub(currentDate, 6, 7))

    local monthNames = {
        "January", "February", "March", "April", "May", "June",
        "July", "August", "September", "October", "November", "December"
    }

    return monthNames[monthNumber]
end

function state_entry()
    ll.Say(0, getMonthName())
end

function touch_start(total_number)
    ll.Say(0, getMonthName())
end

state_entry()

--[[
March
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- getDayName.lua

function getDayName()
    -- YYYY-MM-DD
    local currentDate = ll.GetDate()

    -- days of the week
    local daysOfWeek = {
        ["Monday"] = 1,
        ["Tuesday"] = 2,
        ["Wednesday"] = 3,
        ["Thursday"] = 4,
        ["Friday"] = 5,
        ["Saturday"] = 6,
        ["Sunday"] = 7
    }

    -- get year, month and day from date
    local year, month, day = string.match(currentDate, "(%d+)-(%d+)-(%d+)")

    -- convert extracted values to numbers
    year = tonumber(year)
    month = tonumber(month)
    day = tonumber(day)

    local dayNames = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}

    local dayOfWeekIndex = (day + month + year) % 7

    return dayNames[dayOfWeekIndex + 1]
end

function state_entry()
    ll.Say(0, "Today is " .. getDayName())
end

function touch_start(total_number)
    ll.Say(0, "Today is " .. getDayName())
end

state_entry()

--[[
Today is Friday
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- getMonthDayYear.lua

function getMonthDayYear()
    local currentDate = ll.GetDate()

    -- get year, month and day from currentDate
    local year, month, day = string.match(currentDate, "(%d+)-(%d+)-(%d+)")

    -- format date as MM/DD/YYYY
    local formattedDate = string.format("%02d/%02d/%d", tonumber(month), tonumber(day), tonumber(year))

    return formattedDate
end

function state_entry()
    ll.Say(0, getMonthDayYear())
end

function touch_start(total_number)
    ll.Say(0, getMonthDayYear())
end

state_entry()

--[[
03/21/2025
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- getTime24PST.lua

function getTime24PST()
    local timeInSeconds = ll.GetWallclock()
    local hours = math.floor(timeInSeconds / 3600)
    local minutes = math.floor((timeInSeconds % 3600) / 60)
    local remainingSeconds = timeInSeconds % 60

    -- HH:MM:SS
    return string.format("%02d:%02d:%02d", hours, minutes, remainingSeconds)
end

function state_entry()
    ll.Say(0, "Current SL time: " .. getTime24PST())
end

function touch_start(total_number)
    ll.Say(0, "Current SL time: " .. getTime24PST())
end

state_entry()

--[[
Current SL time: 12:37:22
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- getTime24MST.lua

function getTime24MST()
    local timeInSeconds = ll.GetWallclock()
    local hours = math.floor(timeInSeconds / 3600)
    local minutes = math.floor((timeInSeconds % 3600) / 60)
    local remainingSeconds = timeInSeconds % 60

    -- we add 1 hour to convert PST to MST (UTC -8 to UTC -7)
    hours = (hours + 1) % 24

    -- HH:MM:SS
    return string.format("%02d:%02d:%02d", hours, minutes, remainingSeconds)
end

function state_entry()
    ll.Say(0, "Current SL time in MST: " .. getTime24MST())
end

function touch_start(total_number)
    ll.Say(0, "Current SL time in MST: " .. getTime24MST())
end

state_entry()

--[[
Current SL time in MST: 14:13:44
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- getTime24CST.lua

function getTime24CST()
    local timeInSeconds = ll.GetWallclock()
    local hours = math.floor(timeInSeconds / 3600)
    local minutes = math.floor((timeInSeconds % 3600) / 60)
    local remainingSeconds = timeInSeconds % 60

    -- we add 2 hours for Central Time (CST)
    hours = hours + 2

    -- handle hour overflow (wrap around if over 23)
    if hours >= 24 then
        hours = hours - 24
    end

    -- HH:MM:SS
    return string.format("%02d:%02d:%02d", hours, minutes, remainingSeconds)
end

function state_entry()
    ll.Say(0, "Current SL time in CST: " .. getTime24CST())
end

function touch_start(total_number)
    ll.Say(0, "Current SL time in CST: " .. getTime24CST())
end

state_entry()

--[[
Current SL time in CST: 15:50:04
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- getTime24EST.lua

function getTime24EST()
    local timeInSeconds = ll.GetWallclock()
    
    -- Convert seconds to hours, minutes, and seconds
    local hours = math.floor(timeInSeconds / 3600)
    local minutes = math.floor((timeInSeconds % 3600) / 60)
    local remainingSeconds = timeInSeconds % 60

    -- we add 3 hours for the EST time zone
    hours = hours + 3

    -- if hours go beyond 23, reset to 0
    if hours >= 24 then
        hours = hours - 24
    end

    -- HH:MM:SS format
    return string.format("%02d:%02d:%02d", hours, minutes, remainingSeconds)
end

function state_entry()
    ll.Say(0, "Current EST time: " .. getTime24EST())
end

function touch_start(total_number)
    ll.Say(0, "Current EST time: " .. getTime24EST())
end

state_entry()

--[[
Current EST time: 16:51:34
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- getTime12PST.lua

function getTime12PST()
    local timeInSeconds = ll.GetWallclock()
    local hours = math.floor(timeInSeconds / 3600)
    local minutes = math.floor((timeInSeconds % 3600) / 60)
    local remainingSeconds = timeInSeconds % 60

    -- convert to 12-hour format
    local period = "AM"
    if hours >= 12 then
        period = "PM"
        if hours > 12 then
            hours = hours - 12
        end
    elseif hours == 0 then
        hours = 12
    end

    -- 12-hour:MM:SS
    return string.format("%02d:%02d:%02d %s", hours, minutes, remainingSeconds, period)
end

function state_entry()
    ll.Say(0, "Current SL time: " .. getTime12PST())
end

function touch_start(total_number)
    ll.Say(0, "Current SL time: " .. getTime12PST())
end

state_entry()

--[[
Current SL time: 01:35:20 PM
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- getTime12MST.lua

function getTime12MST()
    local timeInSeconds = ll.GetWallclock()
    local hours = math.floor(timeInSeconds / 3600)
    local minutes = math.floor((timeInSeconds % 3600) / 60)
    local remainingSeconds = timeInSeconds % 60

    -- we add 1 hour to convert PST to MST (UTC -8 to UTC -7)
    hours = (hours + 1) % 24

    -- convert to 12-hour format
    local period = "AM"
    if hours >= 12 then
        period = "PM"
        if hours > 12 then
            hours = hours - 12
        end
    elseif hours == 0 then
        hours = 12
    end

    -- 12-hour:MM:SS
    return string.format("%02d:%02d:%02d %s", hours, minutes, remainingSeconds, period)
end

function state_entry()
    ll.Say(0, "Current SL time in MST: " .. getTime12MST())
end

function touch_start(total_number)
    ll.Say(0, "Current SL time in MST: " .. getTime12MST())
end

state_entry()

--[[
Current SL time in MST: 02:42:01 PM
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- getTime12CST.lua

function getTime12CST()
    local timeInSeconds = ll.GetWallclock()
    local hours = math.floor(timeInSeconds / 3600)
    local minutes = math.floor((timeInSeconds % 3600) / 60)
    local remainingSeconds = timeInSeconds % 60

    -- we add 2 hours for Central Time (CST)
    hours = hours + 2

    -- wrap around if over 23
    if hours >= 24 then
        hours = hours - 24
    end

    -- convert to 12-hour format
    local period = "AM"
    if hours >= 12 then
        period = "PM"
        if hours > 12 then
            hours = hours - 12
        end
    elseif hours == 0 then
        hours = 12
    end

    -- 12-hour:MM:SS
    return string.format("%02d:%02d:%02d %s", hours, minutes, remainingSeconds, period)
end

function state_entry()
    ll.Say(0, "Current SL time in CST: " .. getTime12CST())
end

function touch_start(total_number)
    ll.Say(0, "Current SL time in CST: " .. getTime12CST())
end

state_entry()

--[[
Current SL time in CST: 03:44:25 PM
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- getTime12EST.lua

function getTime12EST()
    local timeInSeconds = ll.GetWallclock()

    -- convert seconds to hours, minutes, and seconds
    local hours = math.floor(timeInSeconds / 3600)
    local minutes = math.floor((timeInSeconds % 3600) / 60)
    local remainingSeconds = timeInSeconds % 60

    -- we add 3 hours for EST time zone
    hours = hours + 3

    -- if hours go beyond 23, reset to 0
    if hours >= 24 then
        hours = hours - 24
    end

    -- convert to 12 hour format
    local period = "AM"
    if hours >= 12 then
        period = "PM"
        if hours > 12 then
            hours = hours - 12
        end
    elseif hours == 0 then
        hours = 12
    end

    -- 12-hour: MM:SS
    return string.format("%02d:%02d:%02d %s", hours, minutes, remainingSeconds, period)
end

function state_entry()
    ll.Say(0, "Current EST time: " .. getTime12EST())
end

function touch_start(total_number)
    ll.Say(0, "Current EST time: " .. getTime12EST())
end

state_entry()

--[[
Current EST time: 04:46:49 PM
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- gateAnd.lua

function gateAnd(a, b)
    if a == 1 and b == 1 then
        return "Both True"
    else
        return "Not Both True"
    end
end

function state_entry()
    ll.Say(0, gateAnd(1, 1))
end

function touch_start(total_number)
    ll.Say(0, gateAnd(1, 1))
end

state_entry()

--[[
Both True
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- gateNand.lua

function gateNand(a, b)
    if a == 0 or b == 0 then
        return "Both False or A True or B True"
    else
        return '0'
    end
end

function state_entry()
    ll.Say(0, gateNand(0, 1))
end

function touch_start(total_number)
    ll.Say(0, gateNand(0, 1))
end

state_entry()

--[[
Both False or A True or B True
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- gateOr.lua

function gateOr(a, b)
    if a == 1 or b == 1 then
        return "One or Both True"
    else
        return '0'
    end
end

function state_entry()
    ll.Say(0, gateOr(0, 1))
end

function touch_start()
    ll.Say(0, gateOr(0, 1))
end

state_entry()

--[[
One or Both True
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- gateNor.lua

function gateNor(a, b)
    if a == 0 and b == 0 then
        return "Both False"
    else
        return '0'
    end
end

function state_entry()
    ll.Say(0, gateNor(0, 0))
end

function touch_start()
    ll.Say(0, gateNor(0, 0))
end

state_entry()

--[[
Both False
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- gateXor.lua

function gateXor(a, b)
    if (a == 1 and b == 0) or (a == 0 and b == 1) then
        return "A True or B True"
    else
        return '0'
    end
end

function state_entry()
    ll.Say(0, gateXor(1, 0))
end

function touch_start()
    ll.Say(0, gateXor(1, 0))
end

state_entry()

--[[
A True or B True
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- gateXnor.lua

function gateXnor(a, b)
    if (a == 0 and b == 0) or (a == 1 and b == 1) then
        return "Both False or Both True"
    else
        return '0'
    end
end

function state_entry()
    ll.Say(0, gateXnor(1, 1))
end

function touch_start()
    ll.Say(0, gateXnor(1, 1))
end

state_entry()

--[[
Both False or Both True
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- gateCi.lua

function gateCi(a, b)
    if a == 1 or b == 0 then
        return "Both False or A True or Both True"
    else
        return '0'
    end
end

function state_entry()
    ll.Say(0, gateCi(1, 1))
end

function touch_start()
    ll.Say(0, gateCi(1, 1))
end

state_entry()

--[[
Both False or A True or Both True
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- gateCni.lua

function gateCni(a, b)
    if a == 0 and b == 1 then
        return "B True"
    else
        return '0'
    end
end

function state_entry()
    ll.Say(0, gateCni(0, 1))
end

function touch_start()
    ll.Say(0, gateCni(0, 1))
end

state_entry()

--[[
B True
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- gateMi.lua

function gateMi(a, b)
    if a == 0 or b == 1 then
        return "Both False or B True or Both True"
    else
        return '0'
    end
end

function state_entry()
    ll.Say(0, gateMi(0, 1))
end

function touch_start()
    ll.Say(0, gateMi(0, 1))
end

state_entry()

--[[
Both False or B True or Both True
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- gateMni.lua

function gateMni(a, b)
    if a == 1 and b == 0 then
        return "A True"
    else
        return '0'
    end
end

function state_entry()
    ll.Say(0, gateMni(1, 0))
end

function touch_start()
    ll.Say(0, gateMni(1, 0))
end

state_entry()

--[[
A True
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- gateRp.lua

function gateRp(a, b)
    if (a == 0 and b == 1) or (a == 1 and b == 1) then
        return "B True or Both True"
    else
        return '0'
    end
end

function state_entry()
    ll.Say(0, gateRp(0, 1))
end

function touch_start()
    ll.Say(0, gateRp(0, 1))
end

state_entry()

--[[
B True or Both True
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- gateRc.lua

function gateRc(a, b)
    if (a == 0 and b == 0) or (a == 1 and b == 0) then
        return "Both False or A True"
    else
        return '0'
    end
end

function state_entry()
    ll.Say(0, gateRc(1, 0))
end

function touch_start()
    ll.Say(0, gateRc(1, 0))
end

state_entry()

--[[
Both False or A True
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- gateLp.lua

function gateLp(a, b)
    if a == 1 then
        return "A True or Both True"
    else
        return '0'
    end
end

function state_entry()
    ll.Say(0, gateLp(1, 0))
end

function touch_start()
    ll.Say(0, gateLp(1, 0))
end

state_entry()

--[[
A True or Both True
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- gateLc.lua

function gateLc(a, b)
    if a == 0 then
        return "Both False or B True"
    else
        return '0'
    end
end

function state_entry()
    ll.Say(0, gateLc(0, 1))
end

function touch_start()
    ll.Say(0, gateLc(0, 1))
end

state_entry()

--[[
Both False or B True
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- gateTautology.lua

function gateTautology(a, b)
    if (a == 0 and b == 0) or
       (a == 0 and b == 1) or
       (a == 1 and b == 0) or
       (a == 1 and b == 1) then
        return "One or Both False or True"
    else
        return '0'
    end
end

function state_entry()
    ll.Say(0, gateTautology(0, 1))
end

function touch_start()
    ll.Say(0, gateTautology(0, 1))
end

state_entry()

--[[
One or Both False or True
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- gateContradiction.lua

function gateContradiction(a, b)
    if (a == 0 and b == 0) or
       (a == 0 and b == 1) or
       (a == 1 and b == 0) or
       (a == 1 and b == 1) then
        return "One or Both False or True."
    else
        return '0'
    end
end

function state_entry()
    ll.Say(0, gateContradiction(0, 1))
end

function touch_start()
    ll.Say(0, gateContradiction(0, 1))
end

state_entry()

--[[
One or Both False or True.
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- DetectedKey.lua

function state_entry()
   ll.Say(0, 'Touch to find out your uuid key')
end

function touch_start(total_number)
    ll.Say(0, ll.DetectedKey(0))
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

``` 
```lua 
-- DetectedName.lua

function state_entry()
   ll.Say(0, 'Touch to say your name')
end

function touch_start(total_number)
    ll.Say(0, ll.DetectedName(0))
end

state_entry()

--[[
Touch to say your name
Keystoner March
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- SetText.lua

local ourMessage = "Hi Everyone"

function state_entry()
    ll.SetText(ourMessage, vector(0, 255, 255), 1)
end

state_entry()

--[[
Hi Everyone
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- SetText_tostring.lua

local count = 0

function state_entry()
    ll.SetText(tostring(count), vector(0, 255, 255), 1)
end

state_entry()

--[[
0
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- SetText_tostring_increment_count.lua

local count = 0

function state_entry()
    ll.SetText(tostring(count), vector(0, 255, 255), 1)
end

function touch_start(total_number)
    count += 1

    ll.SetText(tostring(count), vector(0, 255, 255), 1)
end

state_entry()

--[[
0
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- SetText_tostring_decrement_count.lua

local count = 100

function state_entry()
    ll.SetText(tostring(count), vector(0, 255, 255), 1)
end

function touch_start(total_number)
    count -= 1

    ll.SetText(tostring(count), vector(0, 255, 255), 1)
end

state_entry()

--[[
100
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- SetText_tostring_multiply_count.lua

local count = 10

function state_entry()
    ll.SetText(tostring(count), vector(0, 255, 255), 1)
end

function touch_start(total_number)
    count *= 10

    ll.SetText(tostring(count), vector(0, 255, 255), 1)
end

state_entry()

--[[
10
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
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

``` 
```lua 
-- GetPos.lua

local currentPos;

function state_entry()
    currentPos = ll.GetPos()

    ll.SetText(tostring(currentPos), vector(0, 255, 255), 1)
end

function touch_start(total_number)
    currentPos = ll.GetPos()

    ll.SetText(tostring(currentPos), vector(0, 255, 255), 1)
end

state_entry()

--[[
<147.34339, 161.22520, 22.25000>
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- GetScale.lua

local currentScale;

function state_entry()
    currentScale = ll.GetScale()

    ll.SetText(tostring(currentScale), vector(0, 255, 255), 1)
end

function touch_start(total_number)
    currentScale = ll.GetScale()

    ll.SetText(tostring(currentScale), vector(0, 255, 255), 1)
end

state_entry()

--[[
<0.50000, 0.50000, 0.50000>
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
```lua 
-- GetFreeMemory.lua

local freeMemory;

function state_entry()
    freeMemory = ll.GetFreeMemory()

    ll.SetText(tostring(freeMemory), vector(0, 255, 255), 1)
end

function touch_start(total_number)
    freeMemory = ll.GetFreeMemory()

    ll.SetText(tostring(freeMemory), vector(0, 255, 255), 1)
end

state_entry()

--[[
16000
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2025
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

``` 
