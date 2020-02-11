--[[--------------------------------------------
    Project:    Clock - Tamriel Standard Time
    Author:     Arne Rantzen (Tyx)
    Created:    2020-01-22
    Updated:    2020-02-11
    License:    GPL-3.0
--------------------------------------------]]--

Clock_TST = Clock_TST or {}
local const = Clock_TST.CONSTANTS()
local Settings = {}
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
-- @return background texture table key
function Settings:GetMoonBackground()
    return settings.styles.moon.background
end

--- a function to store the style value for the moon
-- @param table key for background texture
function Settings:SetMoonBackground(value)
    settings.styles.moon.background = value
end
-- ----------------
-- Core Attributes
-- ----------------

--- a function to get the stored scale factor
-- @return number range (-inf:inf)
function Settings:GetScaleFactor()
    return settings.attributes.core.scale_factor
end

--- a function to store the scale factor
-- @param number (-inf:inf)
function Settings:SetScaleFactor(value)
    settings.attributes.core.scale_factor = value
end
-- ----------------
-- Time Attributes
-- ----------------

--- a function to get the current attributes for the time.
-- Inside are also the attribute tables of label and background.
-- @return time = {
--    anchor = { point, relativeTo, relativePoint, offsetX, offsetY, },
--    dimension = { width, height, },
--    background = {
--        anchor = { point, relativeTo, relativePoint, offsetX, offsetY, },
--        dimension = { width, height, },
--        background = {
--            anchor = { point, relativeTo, relativePoint, offsetX, offsetY, },
--            dimension = { width, height, },
--        },
--    },
--    label = {
--        anchor = { point, relativeTo, relativePoint, offsetX, offsetY, },
--        dimension = { width, height, },
--        background = {
--            anchor = { point, relativeTo, relativePoint, offsetX, offsetY, },
--            dimension = { width, height, },
--        },
--    },
--}
function Settings:GetTimeAttributes()
    return settings.attributes.time
end

--- a function to get the current offset of the time
-- @return offsetX, offsetY
function Settings:GetTimeOffset()
    local anchor = settings.attributes.time.anchor
    return anchor.offsetX, anchor.offsetY
end

--- a function to save the current offset of the time
-- @param x offset
-- @param y offset
function Settings:SetTimeOffset(x, y)
    settings.attributes.time.anchor.offsetX = x
    settings.attributes.time.anchor.offsetY = y
end

-- ----------------
-- Moon Attributes
-- ----------------

--- a function to get the default attributes for the moon.
-- Inside are also the attribute tables of Secunda and Masser.
-- @return moon = {
--    anchor = { point, relativeTo, relativePoint, offsetX, offsetY, },
--    dimension = { width, height, },
--    masser = {
--        anchor = { point, relativeTo, relativePoint, offsetX, offsetY, },
--        dimension = { width, height, },
--        background = {
--            anchor = { point, relativeTo, relativePoint, offsetX, offsetY, },
--            dimension = { width, height, },
--        },
--    },
--    secunda = {
--        anchor = { point, relativeTo, relativePoint, offsetX, offsetY, },
--        dimension = { width, height, },
--        background = {
--            anchor = { point, relativeTo, relativePoint, offsetX, offsetY, },
--            dimension = { width, height, },
--        },
--    },
--}
function Settings:GetMoonDefaultAttributes()
    return const.Settings.attributes.DEFAULTS.moon
end

--- a function to get the current attributes for the moon.
-- Inside are also the attribute tables of Secunda and Masser.
-- @return moon = {
--    anchor = { point, relativeTo, relativePoint, offsetX, offsetY, },
--    dimension = { width, height, },
--    masser = {
--        anchor = { point, relativeTo, relativePoint, offsetX, offsetY, },
--        dimension = { width, height, },
--        background = {
--            anchor = { point, relativeTo, relativePoint, offsetX, offsetY, },
--            dimension = { width, height, },
--        },
--    },
--    secunda = {
--        anchor = { point, relativeTo, relativePoint, offsetX, offsetY, },
--        dimension = { width, height, },
--        background = {
--            anchor = { point, relativeTo, relativePoint, offsetX, offsetY, },
--            dimension = { width, height, },
--        },
--    },
--}
function Settings:GetMoonAttributes()
    return settings.attributes.moon
end

--- a function to get the current moon anchor
-- @return anchor = { point, relativeTo, relativePoint, offsetX, offsetY, }
function Settings:GetMoonAnchor()
    return settings.attributes.moon.anchor
end

--- a function to get the current offset of the moon
-- @return offsetX, offsetY
function Settings:GetMoonOffset()
    local anchor = settings.attributes.moon.anchor
    return anchor.offsetX, anchor.offsetY
end

--- a function to save the current offset of the moon
-- @param x offset
-- @param y offset
function Settings:SetMoonOffset(x, y)
    settings.attributes.moon.anchor.offsetX = x
    settings.attributes.moon.anchor.offsetY = y
end

--- a function to get the current attributes for the moon Masser.
-- @return masser = {
--    anchor = { point, relativeTo, relativePoint, offsetX, offsetY, },
--    dimension = { width, height, },
--    background = {
--        anchor = { point, relativeTo, relativePoint, offsetX, offsetY, },
--        dimension = { width, height, },
--}
function Settings:GetMoonMasserAttributes()
    return settings.attributes.moon.masser
end

--- a function to get the current attributes for the moon Secunda.
-- @return secunda = {
--    anchor = { point, relativeTo, relativePoint, offsetX, offsetY, },
--    dimension = { width, height, },
--    background = {
--        anchor = { point, relativeTo, relativePoint, offsetX, offsetY, },
--        dimension = { width, height, },
--}
function Settings:GetMoonSecundaAttributes()
    return settings.attributes.moon.secunda
end

-- ----------------
-- Reset
-- ----------------

--- Resets the attributes table to the default values
function Settings:ResetAttributes()
    settings.attributes = Clock_TST:Copy(const.Settings.attributes.DEFAULTS)
end

--- Resets the booleans table to the default values
function Settings:ResetBooleans()
    settings.booleans = Clock_TST:Copy(const.Settings.booleans.DEFAULTS)
end

--- Resets the styles table to the default values
function Settings:ResetStyles()
    settings.styles = Clock_TST:Copy(const.Settings.styles.DEFAULTS)
end

--- Resets the settings table to the default values
function Settings:Reset()
    self:ResetAttributes()
    self:ResetBooleans()
    self:ResetStyles()
end

-- ----------------
-- Initialize
-- ----------------

--- Load the SavedVariables or register the default values.
function Settings:New()
    local function InitializeSavedVariable(table, isAccountWide)
        if isAccountWide then
            return ZO_SavedVars:NewAccountWide(
                    const.SAVED_NAME,
                    const.SAVED_VERSION,
                    table.SAVED_NAME,
                    table.DEFAULTS
                )
        else
            return ZO_SavedVars:New(
                const.SAVED_NAME,
                const.SAVED_VERSION,
                table.SAVED_NAME,
                table.DEFAULTS
            )
        end
    end
    if not Clock_TST.DEBUG then
        settings.account = InitializeSavedVariable(
                const.Settings.account,
                true
        )
        settings.booleans = InitializeSavedVariable(
                const.Settings.booleans,
                settings.account.saveAccountWide
        )
        settings.styles = InitializeSavedVariable(
                const.Settings.styles,
                settings.account.saveAccountWide
        )
        settings.attributes = InitializeSavedVariable(
                const.Settings.attributes,
                settings.account.saveAccountWide
        )
    else
        settings.account = const.Settings.account.DEFAULTS
        settings.booleans = const.Settings.booleans.DEFAULTS
        settings.styles = const.Settings.styles.DEFAULTS
        settings.attributes = const.Settings.attributes.DEFAULTS
    end
    return self
end

local eventHandle = const.DISPLAY .. "Settings"
-- Event to be called on Load
local function OnLoad(_, addonName)
    if addonName ~= const.NAME then return end
    Clock_TST.settings = Settings:New()

    -- wait for the first loaded event
    EVENT_MANAGER:UnregisterForEvent(eventHandle, EVENT_ADD_ON_LOADED)
end
EVENT_MANAGER:RegisterForEvent(eventHandle, EVENT_ADD_ON_LOADED, OnLoad)
