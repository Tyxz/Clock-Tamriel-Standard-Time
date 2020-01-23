--[[----------------------------------------
    Project:    Clock - Tamriel Standard Time
    Location:   Clock.lua
    Author:     Arne Rantzen (Tyx)
    Created:    2020-01-22
    Updated:    2020-01-22
    License:    GPL-3.0
----------------------------------------]]--

Clock_TST = Clock_TST or {}

local displayName = Clock_TST.CONSTANTS.DISPLAY

-- ----------------
-- Events
-- ----------------
function Clock_TST_Time_OnMouseEnter(control)
    d("Time" .. "Enter")
end
function Clock_TST_Time_OnMouseExit(control)
    d("Time" .. "Exit")
end
function Clock_TST_Time_OnMoveStop(control)
    d("Time" .. "MoveStop")
end
function Clock_TST_Time_OnInitialized(control)
    d("Time" .. "Init")
end

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
    if addonName ~= Clock_TST.CONSTANTS.NAME then return end
    -- wait for the first loaded event
    EVENT_MANAGER:UnregisterForEvent(displayName, EVENT_ADD_ON_LOADED)
    Clock_TST.settings = Clock_TST.Settings:New()

    RegisterCommands()
end
EVENT_MANAGER:RegisterForEvent(displayName, EVENT_ADD_ON_LOADED, OnLoad)