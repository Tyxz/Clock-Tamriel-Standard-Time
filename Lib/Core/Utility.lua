--[[----------------------------------------
    Location:   Core/Utility.lua
    Author:     Arne Rantzen (Tyx)
    Created:    2020-01-22
    License:    GPL-3.0
----------------------------------------]]--

Clock_TST = Clock_TST or {}

--- Makes a table read-only
-- Source: http://andrejs-cainikovs.blogspot.com/2009/05/lua-constants.html
-- @param tbl any table to be made read-only
-- @return a read-only table
function Clock_TST:Protect(tbl)
    return setmetatable({}, {
        __index = tbl,
        __newindex = function(t, key, value)
            error("attempting to change constant " ..
                    tostring(key) .. " to " .. tostring(value), 2)
        end
    })
end