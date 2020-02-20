--[[--------------------------------------------
    Project:    Clock - Tamriel Standard Time
    Author:     Arne Rantzen (Tyx)
    Created:    2020-01-22
    Updated:    2020-02-19
    License:    GPL-3.0
--------------------------------------------]]--

Clock_TST = Clock_TST or {}
local const = Clock_TST.CONSTANTS()
local Settings = {
    account = {},
    booleans = {},
    styles = {},
    attributes = {}
}
-- ----------------
-- Core Booleans
-- ----------------

--- a function to get the stored boolean value for the core elements
-- @return if the saved variable is account wide
function Settings:GetSaveAccountWide()
    return self.account.saveAccountWide
end

--- a function to store the boolean value for the core elements
-- @param value if the saved variable is account wide
function Settings:SetSaveAccountWide(value)
    self.account.saveAccountWide = value
end

--- a function to get the stored boolean value for the core elements
-- if it is linked to time, the moon moves with the time object
-- @return if the moon is linked to time
function Settings:GetTimeAndMoonAreLinked()
    return self.booleans.core.timeAndMoonAreLinked
end

--- a function to store the boolean value for the core elements
-- @param value if the moon is linked to time
function Settings:SetTimeAndMoonAreLinked(value)
    self.booleans.core.timeAndMoonAreLinked = value
end

--- a function to get the stored boolean value for the core elements
-- @return if the view should be hidden in fights
function Settings:GetHideInFight()
    return self.booleans.core.hideInFight
end

--- a function to store the boolean value for the core elements
-- @param value if the view should be hidden in fights
function Settings:SetHideInFight(value)
    self.booleans.core.hideInFight = value
end

--- a function to get the stored boolean value for the core elements
-- @return if the view should be only visible on the map
function Settings:GetOnlyShowOnMap()
    return self.booleans.core.onlyShowOnMap
end

--- a function to store the boolean value for the core elements
-- @param value if the view should be only visible on the map
function Settings:SetOnlyShowOnMap(value)
    self.booleans.core.onlyShowOnMap = value
end

-- ----------------
-- Time Booleans
-- ----------------

--- a function to get the stored boolean value for the time
-- @return if the time is visible
function Settings:GetTimeIsVisible()
    return self.booleans.time.isVisible
end

--- a function to store the boolean value for the time
-- @param value if the time is visible
function Settings:SetTimeIsVisible(value)
    self.booleans.time.isVisible = value
end

--- a function to get the stored boolean value for the time
-- @return if the time is mouseEnabled
function Settings:GetTimeIsMouseEnabled()
    return self.booleans.time.isMouseEnabled
end

--- a function to store the boolean value for the time
-- @param value if the time is mouseEnabled
function Settings:SetTimeIsMouseEnabled(value)
    self.booleans.time.isMouseEnabled = value
end

--- a function to get the stored boolean value for the time
-- @return if the time is movable
function Settings:GetTimeIsMovable()
    return self.booleans.time.isMovable
end

--- a function to store the boolean value for the time
-- @param value if the time is movable
function Settings:SetTimeIsMovable(value)
    self.booleans.time.isMovable = value
end

--- a function to get the stored boolean value for the time
-- @return if the time has tooltip
function Settings:GetTimeHasTooltip()
    return self.booleans.time.hasTooltip
end

--- a function to store the boolean value for the time
-- @param value if the time has tooltip
function Settings:SetTimeHasTooltip(value)
    self.booleans.time.hasTooltip = value
end

--- a function to get the stored boolean value for the time
-- @return if the time has background
function Settings:GetTimeHasBackground()
    return self.booleans.time.hasBackground
end

--- a function to store the boolean value for the time
-- @param value if the time has background
function Settings:SetTimeHasBackground(value)
    self.booleans.time.hasBackground = value
end

--- a function to get the stored boolean value for the time
-- @return if a 0 should be added before a single digit
function Settings:GetTimeAddZero()
    return self.booleans.time.addZero
end

--- a function to store the boolean value for the time
-- @param value if a 0 should be added before a single digit
function Settings:SetTimeAddZero(value)
    self.booleans.time.addZero = value
end

--- a function to get the stored boolean value for the time
-- @return if the time has US format {12,1,...,11} am : {12,1,...,11} pm
function Settings:GetTimeHasUSFormat()
    return self.booleans.time.hasUSFormat
end

--- a function to store the boolean value for the time
-- @param value if the time has the US format
function Settings:SetTimeHasUSFormat(value)
    self.booleans.time.hasUSFormat = value
end

--- a function to get the stored boolean value for the time
-- @return if the time has Japanese format {0,1,...,11} am : {12,1,...,11} pm
function Settings:GetTimeHasJapFormat()
    return self.booleans.time.hasJapFormat
end

--- a function to store the boolean value for the time
-- @param value if the time has the Japanese format
function Settings:SetTimeHasJapFormat(value)
    self.booleans.time.hasJapFormat = value
end

--- a function to get the stored boolean value for the time
-- @return if the time has a lore date
function Settings:GetTimeHasLoreDate()
    return self.booleans.time.hasLoreDate
end

--- a function to store the boolean value for the time
-- @return if the time has a lore date
function Settings:SetTimeHasLoreDate(value)
    self.booleans.time.hasLoreDate = value
end

--- a function to get the stored boolean value for the time
-- @return if the time has a fake lore date
function Settings:GetTimeHasFakeLoreDate()
    return self.booleans.time.hasFakeLoreDate
end

--- a function to store the boolean value for the time
-- @return if the time has a fake lore date
function Settings:SetTimeHasFakeLoreDate(value)
    self.booleans.time.hasFakeLoreDate = value
end

--- a function to get the stored boolean value for the time
-- @return if the time has a real date
function Settings:GetTimeHasRealDate()
    return self.booleans.time.hasRealDate
end

--- a function to store the boolean value for the time
-- @return if the time has a real date
function Settings:SetTimeHasRealDate(value)
    self.booleans.time.hasRealDate = value
end

--- a function to get the stored boolean value for the time
-- @return if the time should scale up when hovering over
function Settings:GetTimeScaleWhenHover()
    return self.booleans.time.scaleWhenHover
end

--- a function to store the boolean value for the time
-- @param value if the time should scale up when hovering over
function Settings:SetTimeScaleWhenHover(value)
    self.booleans.time.scaleWhenHover = value
end

--- a function to get the stored boolean value for the time
-- @return if the time should change colour when hovering over
function Settings:GetTimeHighlightWhenHover()
    return self.booleans.time.highlightWhenHover
end

--- a function to store the boolean value for the time
-- @param value if the time should change colour when hovering over
function Settings:SetTimeHighlightWhenHover(value)
    self.booleans.time.highlightWhenHover = value
end

-- ----------------
-- Moon Booleans
-- ----------------

--- a function to get the stored boolean value for the moon
-- @return if the moon is visible
function Settings:GetMoonIsVisible()
    return self.booleans.moon.isVisible
end

--- a function to store the boolean value for the moon
-- @param value if the moon is visible
function Settings:SetMoonIsVisible(value)
    self.booleans.moon.isVisible = value
end

--- a function to get the stored boolean value for the moon
-- @return if the moon is mouseEnabled
function Settings:GetMoonIsMouseEnabled()
    return self.booleans.moon.isMouseEnabled
end

--- a function to store the boolean value for the moon
-- @param value if the moon is mouseEnabled
function Settings:SetMoonIsMouseEnabled(value)
    self.booleans.moon.isMouseEnabled = value
end

--- a function to get the stored boolean value for the moon
-- @return if the moon is movable
function Settings:GetMoonIsMovable()
    return self.booleans.moon.isMovable
end

--- a function to store the boolean value for the moon
-- @param value if the moon is movable
function Settings:SetMoonIsMovable(value)
    self.booleans.moon.isMovable = value
end

--- a function to get the stored boolean value for the moon
-- @return if the moon has background
function Settings:GetMoonHasBackground()
    return self.booleans.moon.hasBackground
end

--- a function to store the boolean value for the moon
-- @param value if the moon has background
function Settings:SetMoonHasBackground(value)
    self.booleans.moon.hasBackground = value
end

--- a function to get the stored boolean value for the moon
-- @return if the moon has tooltip
function Settings:GetMoonHasTooltip()
    return self.booleans.moon.hasTooltip
end

--- a function to store the boolean value for the moon
-- @param value if the moon has tooltip
function Settings:SetMoonHasTooltip(value)
    self.booleans.moon.hasTooltip = value
end

--- a function to get the stored boolean value for the moon
-- @return if the moon should scale up when hovering over
function Settings:GetMoonScaleWhenHover()
    return self.booleans.moon.scaleWhenHover
end

--- a function to store the boolean value for the moon
-- @param value if the moon should scale up when hovering over
function Settings:SetMoonScaleWhenHover(value)
    self.booleans.moon.scaleWhenHover = value
end

--- a function to get the stored boolean value for the moon
-- @return if the moon should change colour when hovering over
function Settings:GetMoonHighlightWhenHover()
    return self.booleans.moon.highlightWhenHover
end

--- a function to store the boolean value for the moon
-- @param value if the moon should change colour when hovering over
function Settings:SetMoonHighlightWhenHover(value)
    self.booleans.moon.highlightWhenHover = value
end

-- ----------------
-- Time Styles
-- ----------------

--- a function to get the stored style value for the time
-- @return the format for the time
function Settings:GetTimeFormat()
    return self.styles.time.format
end

--- a function to store the style value for the moon
-- @param value the format for the time
function Settings:SetTimeFormat(value)
    self.styles.time.format = value
end

--- a function to get the stored style value for the time
-- @return the size for the time
function Settings:GetTimeSize()
    return self.styles.time.size
end

--- a function to store the style value for the moon
-- @param value the size for the time
function Settings:SetTimeSize(value)
    self.styles.time.size = value
end

--- a function to get the stored style value for the time
-- @return r red colour
-- @return g green colour
-- @return b blue colour
-- @return a alpha value
function Settings:GetTimeColour()
    local colour = self.styles.time.colour
    return colour.r, colour.g, colour.b, colour.a
end

--- a function to store the style value for the moon
-- @param r red colour
-- @param g green colour
-- @param b blue colour
-- @param a alpha value
function Settings:SetTimeColour(r, g, b, a)
    self.styles.time.colour = {
        r = r,
        g = g,
        b = b,
        a = a
    }
end

--- a function to get the stored style value for the time
-- @return the font for the time
function Settings:GetTimeFont()
    return self.styles.time.font
end

--- a function to store the style value for the moon
-- @param value the font for the time
function Settings:SetTimeFont(value)
    self.styles.time.font = value
end

--- a function to get the stored style value for the time
-- @return the style for the time
function Settings:GetTimeStyle()
    return self.styles.time.style
end

--- a function to store the style value for the moon
-- @param value the style for the time
function Settings:SetTimeStyle(value)
    self.styles.time.style = value
end

--- a function to get the stored style value for the time
-- @return the line count for the time
function Settings:GetTimeLineCount()
    return self.styles.time.lineCount
end

--- a function to store the style value for the moon
-- @param value the line count for the time
function Settings:SetTimeLineCount(value)
    self.styles.time.lineCount = value
end

--- a function to get the stored style value for the time
-- @return background texture table key
function Settings:GetTimeBackground()
    return self.styles.time.background
end

--- a function to store the style value for the time
-- @param value table key for background name
function Settings:SetTimeBackground(value)
    self.styles.time.background = value
end

--- a function to get the stored style value for the time
-- @return background texture strength
function Settings:GetTimeBackgroundStrength()
    return self.styles.time.backgroundStrength
end

--- a function to store the style value for the time
-- @param value background texture strength
function Settings:SetTimeBackgroundStrength(value)
    self.styles.time.backgroundStrength = value
end

--- a function to get the stored style value for the time
-- @return background width offset
function Settings:GetTimeBackgroundOffset()
    return self.styles.time.backgroundOffset
end

--- a function to store the style value for the time
-- @param value background width offset
function Settings:SetTimeBackgroundOffset(value)
    self.styles.time.backgroundOffset = value
end

-- ----------------
-- Moon Styles
-- ----------------

--- a function to get the stored style value for the moon
-- @return background texture table key
function Settings:GetMoonBackground()
    return self.styles.moon.background
end

--- a function to store the style value for the moon
-- @param value background texture table key
function Settings:SetMoonBackground(value)
    self.styles.moon.background = value
end

--- a function to get the stored style value for the moon
-- @return background texture strength
function Settings:GetMoonBackgroundStrength()
    return self.styles.moon.backgroundStrength
end

--- a function to store the style value for the moon
-- @param value background texture strength
function Settings:SetMoonBackgroundStrength(value)
    self.styles.moon.backgroundStrength = value
end

--- a function to get the stored style value for the moon
-- @return table key for masser texture
function Settings:GetMoonTextureKeyMasser()
    return self.styles.moon.masser
end

--- a function to store the style value for the moon
-- @param value table key for masser texture
function Settings:SetMoonTextureKeyMasser(value)
    self.styles.moon.masser = value
end

--- a function to get the stored style value for the moon
-- @return table key for secunda texture
function Settings:GetMoonTextureKeySecunda()
    return self.styles.moon.secunda
end

--- a function to store the style value for the moon
-- @param value table key for secunda texture
function Settings:SetMoonTextureKeySecunda(value)
    self.styles.moon.secunda = value
end

--- a function to get the stored style value for the moon
-- @return value of how much the moon texture is visible
function Settings:GetMoonAlpha()
    return self.styles.moon.alpha
end

--- a function to store the style value for the moon
-- @param value of how much the moon texture is visible
function Settings:SetMoonAlpha(value)
    self.styles.moon.alpha = value
end

-- ----------------
-- Core Attributes
-- ----------------

--- a function to get the stored scale factor
-- @return number range (-inf:inf)
function Settings:GetScaleFactor()
    return self.attributes.core.scaleFactor
end

--- a function to store the scale factor
-- @param value number (-inf:inf)
function Settings:SetScaleFactor(value)
    self.attributes.core.scaleFactor = value
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
    return self.attributes.time
end

--- a function to get the current offset of the time
-- @return offsetX
-- @return offsetY
function Settings:GetTimeOffset()
    local anchor = self.attributes.time.anchor
    return anchor.offsetX, anchor.offsetY
end

--- a function to save the current offset of the time
-- @param x offset
-- @param y offset
function Settings:SetTimeOffset(x, y)
    self.attributes.time.anchor.offsetX = x
    self.attributes.time.anchor.offsetY = y
end

--- a function to get the current dimension for the time.
-- @return dimension = { width, height, }
function Settings:GetTimeDimension()
    return self.attributes.time.dimension
end

--- a function to get the current dimension for the time.
-- @param value dimension = { width, height, }
function Settings:SetTimeDimension(value)
    self.attributes.time.dimension = value
end

-- ----------------
-- Moon Attributes
-- ----------------

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
    return self.attributes.moon
end

--- a function to get the current moon anchor
-- @return anchor = { point, relativeTo, relativePoint, offsetX, offsetY, }
function Settings:GetMoonAnchor()
    return self.attributes.moon.anchor
end

--- a function to get the current offset of the moon
-- @return offsetX
-- @return offsetY
function Settings:GetMoonOffset()
    local anchor = self.attributes.moon.anchor
    return anchor.offsetX, anchor.offsetY
end

--- a function to save the current offset of the moon
-- @param x offset
-- @param y offset
function Settings:SetMoonOffset(x, y)
    self.attributes.moon.anchor.offsetX = x
    self.attributes.moon.anchor.offsetY = y
end

--- a function to get the current dimension for the moon.
-- @return dimension = { width, height, }
function Settings:GetMoonDimension()
    return self.attributes.moon.dimension
end

--- a function to get the current dimension for the moon.
-- @param value dimension = { width, height, }
function Settings:SetMoonDimension(value)
    self.attributes.moon.dimension = value
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
    return self.attributes.moon.masser
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
    return self.attributes.moon.secunda
end

--- a function to get the stored scale
-- @return number range [0, inf)
function Settings:GetMoonScale()
    return self.attributes.moon.scale
end

--- a function to store the scale
-- @param value number [0, inf)
function Settings:SetMoonScale(value)
    self.attributes.moon.scale = value
end

-- ----------------
-- Reset
-- ----------------

--- Resets the attributes table to the default values
function Settings:ResetAttributes()
    self.attributes = Clock_TST.CONSTANTS().Settings.attributes.DEFAULTS
end

--- Resets the booleans table to the default values
function Settings:ResetBooleans()
    self.booleans = Clock_TST.CONSTANTS().Settings.booleans.DEFAULTS
end

--- Resets the styles table to the default values
function Settings:ResetStyles()
    self.styles = Clock_TST.CONSTANTS().Settings.styles.DEFAULTS
end

--- Resets the self table to the default values
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
        self.account = InitializeSavedVariable(
                const.Settings.account,
                true
        )
        self.booleans = InitializeSavedVariable(
                const.Settings.booleans,
                self.account.saveAccountWide
        )
        self.styles = InitializeSavedVariable(
                const.Settings.styles,
                self.account.saveAccountWide
        )
        self.attributes = InitializeSavedVariable(
                const.Settings.attributes,
                self.account.saveAccountWide
        )
    else
        self.account = const.Settings.account.DEFAULTS
        self.booleans = const.Settings.booleans.DEFAULTS
        self.styles = const.Settings.styles.DEFAULTS
        self.attributes = const.Settings.attributes.DEFAULTS
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
