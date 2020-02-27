--[[--------------------------------------------
    Project:    Clock - Tamriel Standard Time
    Author:     Arne Rantzen (Tyx)
    Created:    2020-01-22
    Updated:    2020-02-11
    License:    GPL-3.0
--------------------------------------------]]--

Clock_TST = Clock_TST or {}

ZO_ONE_YEAR_IN_SECONDS = ZO_ONE_MONTH_IN_SECONDS * 12 -- 31104000

--- Find the largest line in a string
-- Lines are counted when separated by "\n"
-- @param str with one or more lines
-- @return length of largest line
function Clock_TST.GetLargestLine(str)
    if str:sub(-1) ~= "\n" then
        str = str .. "\n"
    end
    local length = str:len()
    for l in str:gmatch("(.-)\n") do
        if length == str:len() or l:len() > length then
            length = l:len()
        end
    end
    return length
end

--- Function to get a list of keys of a table
-- @param table where the keys should be extracted from
-- @return table of keys
function Clock_TST.GetKeys(object)
    assert(type(object) == "table", "Please provide a table.")
    local keys = {}
    for k, _ in pairs(object) do
        table.insert(keys, k)
    end
    return keys
end


--- Function to copy a table recursively
-- @param object to be copied
-- @return copy of object
function Clock_TST.DeepCopy(object)
    if type(object) == "table" then
        local copy = {}
        for k, v in pairs(object) do
            copy[k] = Clock_TST.DeepCopy(v)
        end
        return copy
    else
        return object
    end
end

--- Function to deeply compare two tables if the are the same
-- @param1 table1 first table
-- @param2 table1 second table
-- @return boolean if the tables are the same
function Clock_TST.DeepCompare(table1, table2)
    if type(table1) ~= "table" then return table1 == table2 end
    for k, v in pairs(table1) do
        if not Clock_TST.DeepCopy(v, table2[k]) then return false end
    end
    return true
end
