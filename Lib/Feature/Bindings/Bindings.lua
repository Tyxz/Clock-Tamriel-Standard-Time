--[[--------------------------------------------
    Project:    Clock - Tamriel Standard Time
    Author:     Arne Rantzen (Tyx)
    Created:    2020-02-23
    Updated:    2020-02-23
    License:    GPL-3.0
--------------------------------------------]]--

Clock_TST = Clock_TST or {}
local const = Clock_TST.CONSTANTS()
local settings
local Bindings = ZO_Object:Subclass()

-- ----------------
-- Updates
-- ----------------

--- Function to toggle the visibility of the time and date
-- will update the time object and the settings
local function ToggleTimeVisibility(isVisible)
    settings:SetTimeIsVisible(isVisible)
    Clock_TST.time:UpdateVisibility()
    Clock_TST.time:UpdateMouse()
end

--- Function to toggle the visibility of the moon
-- will update the moon object and the settings
local function ToggleMoonVisibility(isVisible)
    settings:SetMoonIsVisible(isVisible)
    Clock_TST.moon:UpdateVisibility()
    Clock_TST.moon:UpdateMouse()
end

-- ----------------
-- Toggles
-- ----------------

--- Function to toggle the visibility of the moon and time and date
function Bindings.Toggle()
    local visibility = not settings:GetTimeIsVisible()
    ToggleTimeVisibility(visibility)
    ToggleMoonVisibility(visibility)
end

--- Function to toggle the visibility of the time and date
function Bindings.ToggleTime()
    local visibility = not settings:GetTimeIsVisible()
    ToggleTimeVisibility(visibility)
end

--- Function to toggle the visibility of the moon
function Bindings.ToggleMoon()
    local visibility = not settings:GetMoonIsVisible()
    ToggleMoonVisibility(visibility)
end

-- ----------------
-- Start
-- ----------------

local eventHandle = const.DISPLAY .. "Bindings"
-- Event to be called on Load
local function OnLoad(_, addonName)
    if addonName ~= const.NAME then
        return
    end
    settings = Clock_TST.settings
    Clock_TST.bindings = Bindings:New()
    -- wait for the first loaded event
    EVENT_MANAGER:UnregisterForEvent(eventHandle, EVENT_ADD_ON_LOADED)
end
EVENT_MANAGER:RegisterForEvent(eventHandle, EVENT_ADD_ON_LOADED, OnLoad)
