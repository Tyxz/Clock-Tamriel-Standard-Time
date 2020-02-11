--[[--------------------------------------------
    Project:    Clock - Tamriel Standard Time
    Author:     Arne Rantzen (Tyx)
    Created:    2020-01-22
    Updated:    2020-02-11
    License:    GPL-3.0
--------------------------------------------]]--

Clock_TST = Clock_TST or {}
local const = Clock_TST.CONSTANTS()

-- Register the slash command 'LibClockTST'
local function RegisterCommands()
    SLASH_COMMANDS["/cl"] = function (extra)
        local options = {}
        local searchResult = { string.match(extra,"^(%S*)%s*(.-)$") }
        for i,v in pairs(searchResult) do
            if (v ~= nil and v ~= "") then
                options[i] = string.lower(v)
            end
        end
        --CommandHandler(options)
    end
end

-- ----------------
-- Start
-- ----------------

-- Event to be called on Load
local function OnLoad(_, addonName)
    if addonName ~= const.DISPLAY then return end

    RegisterCommands()

    -- wait for the first loaded event
    EVENT_MANAGER:UnregisterForEvent(const.DISPLAY, EVENT_ADD_ON_LOADED)
end
EVENT_MANAGER:RegisterForEvent(const.DISPLAY, EVENT_ADD_ON_LOADED, OnLoad)