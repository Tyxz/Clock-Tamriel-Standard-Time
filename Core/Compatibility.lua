--[[----------------------------------------
    Location:   Core/Compatibility.lua
    Author:     Arne Rantzen (Tyx)
    Created:    2020-01-22
    License:    GPL-3.0
----------------------------------------]]--

--- a global function to get the current Tamriel Standard Time
-- @deprecated Use the LibClockTST library instead to subscribe to TST updates
-- @usage local hour, minute, second = GetTST()
-- @return[1] hour in 24h format
-- @return[2] minute
-- @return[3] second
function GetTime()
    return LibClockTST:GetTime()
end