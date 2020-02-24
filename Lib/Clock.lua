--[[--------------------------------------------
    Project:    Clock - Tamriel Standard Time
    Author:     Arne Rantzen (Tyx)
    Created:    2020-02-16
    Updated:    2020-02-16
    License:    GPL-3.0
--------------------------------------------]]--
Clock_TST = Clock_TST or {}
local const = Clock_TST.CONSTANTS()
local eventHandle = const.DISPLAY

--- Initialize the Clock TST
--@param _ eventId doesn't matter
--@param name of the addon is Clock
local function OnLoad(_, addonName)
    if addonName ~= const.NAME then return end

    if LibDebugLogger then
        Clock_TST.logger = LibDebugLogger(const.NAME)
    end

    Clock_TST:SetupSettings()
    Clock_TST:SetupBindings()
    Clock_TST:SetupTime()
    Clock_TST:SetupMoon()
    Clock_TST:SetupMenu()

    -- wait for the first loaded event
    EVENT_MANAGER:UnregisterForEvent(eventHandle, EVENT_ADD_ON_LOADED)
end
EVENT_MANAGER:RegisterForEvent(eventHandle, EVENT_ADD_ON_LOADED, OnLoad)