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
-- Moon Attributes
-- ----------------

--- a function to get the stored style value for the moon
-- @return anchor for moon root control
function Settings:GetMoonAnchor()
    return settings.attributes.moon.anchor
end

--- a function to store the style value for the moon
-- @param anchor for moon root control
function Settings:SetMoonAnchor(value)
    settings.attributes.moon.anchor = value
end

--- a function to get the stored style value for the moon
-- @return dimension of moon root control
function Settings:GetMoonDimension()
    return settings.attributes.moon.dimension
end

--- a function to store the style value for the moon
-- @param dimension of moon root control
function Settings:SetMoonDimension(value)
    settings.attributes.moon.dimension = value
end

--- a function to get the stored style value for the moon
-- @return anchor for moon masser control
function Settings:GetMoonAnchorMasser()
    return settings.attributes.moon.masser.anchor
end

--- a function to store the style value for the moon
-- @param anchor for moon masser control
function Settings:SetMoonAnchorMasser(value)
    settings.attributes.moon.masser.anchor = value
end

--- a function to get the stored style value for the moon
-- @return dimension of moon masser control
function Settings:GetMoonDimensionMasser()
    return settings.attributes.moon.masser.dimension
end

--- a function to store the style value for the moon
-- @param dimension of moon masser control
function Settings:SetMoonDimensionMasser(value)
    settings.attributes.moon.masser.dimension = value
end

--- a function to get the stored style value for the moon
-- @return anchor for moon secunda control
function Settings:GetMoonAnchorSecunda()
    return settings.attributes.moon.secunda.anchor
end

--- a function to store the style value for the moon
-- @param anchor for moon secunda control
function Settings:SetMoonAnchorSecunda(value)
    settings.attributes.moon.secunda.anchor = value
end

--- a function to get the stored style value for the moon
-- @return dimension of moon secunda control
function Settings:GetMoonDimensionSecunda()
    return settings.attributes.moon.secunda.dimension
end

--- a function to store the style value for the moon
-- @param dimension of moon secunda control
function Settings:SetMoonDimensionSecunda(value)
    settings.attributes.moon.secunda.dimension = value
end


-- ----------------
-- Basic
-- ----------------

function Settings:ResetAttributes()
    settings.attributes = Clock_TST:Copy(const.Settings.attributes.DEFAULTS)
end

function Settings:ResetBooleans()
    settings.booleans = Clock_TST:Copy(const.Settings.booleans.DEFAULTS)
end

function Settings:ResetStyles()
    settings.styles = Clock_TST:Copy(const.Settings.styles.DEFAULTS)
end

function Settings:Reset()
    self:ResetAttributes()
    self:ResetBooleans()
    self:ResetStyles()
end

function Settings:New()
    settings.booleans = ZO_SavedVars:New(
            const.SAVED_NAME,
            const.SAVED_VERSION,
            const.Settings.booleans.SAVED_NAME,
            const.Settings.booleans.DEFAULTS
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