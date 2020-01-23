--[[----------------------------------------------------
    Location:   Test/Core/SettingsTest.lua
    Author:     Arne Rantzen (Tyx)
    Created:    2020-01-23
    Updated:    2020-01-23
    License:    GPL-3.0
----------------------------------------------------]]--

Clock_TST = Clock_TST or {}

--- Makes a copy of an object
-- @param obj to be copied
-- @return copy of object
function Clock_TST:Copy(obj)
    if type(obj) ~= 'table' then return obj end
    local res = {}
    for k, v in pairs(obj) do
        res[k] = self:Copy(v)
    end
    return res
end