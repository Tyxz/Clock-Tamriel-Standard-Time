--[[----------------------------------------
    Location:   Core/Settings.lua
    Author:     Arne Rantzen (Tyx)
    Created:    2020-01-22
    License:    GPL-3.0
----------------------------------------]]--

Clock_TST = Clock_TST or {}
Clock_TST.Settings = {}

local const = Clock_TST.CONSTANTS
local Settings = Clock_TST.Settings
local settings = {}

-- ----------------
-- Moon Booleans
-- ----------------

--- a function to get the stored boolean value for the moon
-- @return if the moon is movable
function Settings:GetMoonIsMovable()
    return settings.booleans.moon.isMovable
end

--- a function to store the boolean value for the moon
-- @param if the moon is movable
function Settings:SetMoonIsMovable(value)
    settings.booleans.moon.isMovable = value
end

--- a function to get the stored boolean value for the moon
-- @return if the moon is visible
function Settings:GetMoonIsVisible()
    return settings.booleans.moon.isVisible
end

--- a function to store the boolean value for the moon
-- @param if the moon is visible
function Settings:SetMoonIsVisible(value)
    settings.booleans.moon.isVisible = value
end

--- a function to get the stored boolean value for the moon
-- @return if the moon is mouseEnabled
function Settings:GetMoonIsMouseEnabled()
    return settings.booleans.moon.isMouseEnabled
end

--- a function to store the boolean value for the moon
-- @param if the moon is mouseEnabled
function Settings:SetMoonIsMouseEnabled(value)
    settings.booleans.moon.isMouseEnabled = value
end

--- a function to get the stored boolean value for the moon
-- @return if the moon has background
function Settings:GetMoonHasBackground()
    return settings.booleans.moon.hasBackground
end

--- a function to store the boolean value for the moon
-- @param if the moon has background
function Settings:SetMoonHasBackground(value)
    settings.booleans.moon.hasBackground = value
end

--- a function to get the stored boolean value for the moon
-- if it is linked to time, the moon moves with the time object
-- @return if the moon is linked to time
function Settings:GetMoonIsLinkedToTime()
    return settings.booleans.moon.isLinkedToTime
end

--- a function to store the boolean value for the moon
-- @param if the moon is linked to time
function Settings:SetMoonIsLinkedToTime(value)
    settings.booleans.moon.isLinkedToTime = value
end

-- ----------------
-- Moon Styles
-- ----------------

--- a function to get the stored style value for the moon
-- if it is linked to time, the moon moves with the time object
-- @return background texture
function Settings:GetMoonBackground()
    local backgroundNumber = settings.styles.moon.background
    return Clock_TST.CONSTANTS.UI.BACKGROUNDS.moon[backgroundNumber]
end

--- a function to store the style value for the moon
-- @param table key for background texture
function Settings:SetMoonBackground(value)
    settings.styles.moon.background = value
end
-- ----------------
-- Moon Attributes
-- ----------------

--- a function to get the stored style value for the moon
-- if it is linked to time, the moon moves with the time object
-- @return background texture
function Settings:GetMoonAnchor()
    local backgroundNumber = settings.attributes.moon.background
    return Clock_TST.CONSTANTS.UI.BACKGROUNDS.moon[backgroundNumber]
end

--- a function to store the style value for the moon
-- @param table key for background texture
function Settings:SetMoonAnchor(value)
    settings.attributes.moon.background = value
end


-- ----------------
-- Start
-- ----------------

function Settings:New()
    settings.booleans = ZO_SavedVars:New(
            const.SAVED_NAME,
            const.SAVED_VERSION,
            const.Settings.toggles.SAVED_NAME,
            const.Settings.toggles.DEFAULTS
    )
    settings.styles = ZO_SavedVars:New(
            const.SAVED_NAME,
            const.SAVED_VERSION,
            const.Settings.styles.SAVED_NAME,
            const.Settings.styles.DEFAULTS
    )
    settings.attributes = ZO_SavedVars:New(
            const.SAVED_NAME,
            const.SAVED_VERSION,
            const.Settings.attributes.SAVED_NAME,
            const.Settings.attributes.DEFAULTS
    )
    return self
end