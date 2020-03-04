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
--- Lines are counted when separated by "\n"
--- @param str string with one or more lines
--- @return number length of largest line
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
--- @param object table where the keys should be extracted from
--- @return table of keys
function Clock_TST.GetKeys(object)
    assert(type(object) == "table", "Please provide a table.")
    local keys = {}
    for k, _ in pairs(object) do
        table.insert(keys, k)
    end
    return keys
end


--- Function to copy a table recursively
--- @param object any to be copied
--- @return any copy of object
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
--- @param table1 table first table
--- @param table2 table second table
--- @return boolean if the tables are the same
function Clock_TST.DeepCompare(table1, table2)
    if table2 and not table1 or table1 and not table2 then return false end
    for k, v1 in pairs(table1) do
        local v2 = table2[k]
        if type(v1) == "table" and type(v2) == "table" then
            return Clock_TST.DeepCompare(v1, v2)
        else
            return v1 == v2
        end
    end
end

--- Function to merge numerous tables together
--- @param ... table in a undefined number
--- @return table merge product of all inputs
function Clock_TST.MergeTable(...)
    local t1 = select(1, ...)
    for i = 2, select('#', ...) do
        local t2 = select(i, ...)
        for k, v in pairs(t2) do
            if (type(v) == "table") and (type(t1[k] or false) == "table") then
                merge(t1[k], t2[k])
            else
                t1[k] = v
            end
        end
    end
    return t1
end
