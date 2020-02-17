--[[--------------------------------------------
    Project:    Clock - Tamriel Standard Time
    Author:     Arne Rantzen (Tyx)
    Created:    2020-01-22
    Updated:    2020-02-11
    License:    GPL-3.0
--------------------------------------------]]--

Clock_TST = Clock_TST or {}
Clock_TST.DEBUG = true

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


