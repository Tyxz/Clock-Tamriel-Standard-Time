--[[--------------------------------------------
    Project:    Clock - Tamriel Standard Time
    Author:     Arne Rantzen (Tyx)
    Created:    2020-01-22
    Updated:    2020-02-11
    License:    GPL-3.0
--------------------------------------------]]--

Clock_TST = Clock_TST or {}

local Time = ZO_Object:Subclass()
local const = Clock_TST.CONSTANTS()
local i18n = Clock_TST.I18N().view
local settings

-- ----------------
-- Update
-- ----------------

--- Update the Time anchor
function Time:UpdatePositions()
    local attribute = settings:GetTimeAttributes()

    local function UpdateControl(control, atr)
        local anchor = atr.anchor
        control:ClearAnchors()
        control:SetAnchor(
                anchor.point, anchor.relativeTo, anchor.relativePoint,
                anchor.offsetX, anchor.offsetY
        )
        control:SetDimensions(atr.dimension.width, atr.dimension.height)
    end

    UpdateControl(self.control, attribute)
end

--- Update the visibility and fragment visibility of the Time object
function Time:UpdateVisibility()

    Clock_TST.TIME_FRAGMENT:SetHiddenForReason("Settings", not settings:GetTimeIsVisible())

    if settings:GetTimeIsVisible() then
        local backgroundIsHidden = not settings:GetTimeHasBackground()
        self.background:SetHidden(backgroundIsHidden)

        local namespace = self.control:GetName()

        HUD_SCENE:AddFragment(Clock_TST.TIME_FRAGMENT)
        HUD_UI_SCENE:AddFragment(Clock_TST.TIME_FRAGMENT)
        WORLD_MAP_SCENE:RemoveFragment(Clock_TST.TIME_FRAGMENT)
        EVENT_MANAGER:UnregisterForEvent(namespace, EVENT_PLAYER_COMBAT_STATE)
        if settings:GetHideInFight() then
            EVENT_MANAGER:RegisterForEvent(namespace, EVENT_PLAYER_COMBAT_STATE, function(_, inCombat)
                Clock_TST.TIME_FRAGMENT:SetHiddenForReason("Combat", inCombat)
                d(inCombat)
            end)
        elseif settings:GetOnlyShowOnMap() then
            HUD_SCENE:RemoveFragment(Clock_TST.TIME_FRAGMENT)
            HUD_UI_SCENE:RemoveFragment(Clock_TST.TIME_FRAGMENT)
            WORLD_MAP_SCENE:AddFragment(Clock_TST.TIME_FRAGMENT)
        end

        self:RegisterForUpdates()
    else
        self.UnregisterForUpdates()
    end
end

--- Update if the object is interactable with the mouse
function Time:UpdateMouse()
    self.control:SetMovable(settings:GetTimeIsMovable())
    self.control:SetMouseEnabled(settings:GetTimeIsMouseEnabled())
end

--- Update the background texture and alpha value
function Time:UpdateBackground()
    local texture = const.UI.BACKGROUNDS.time[settings:GetTimeBackground()]
    self.background:SetTexture(texture.path .. texture.background)
    self.background:SetColor(1, 1, 1, settings:GetTimeBackgroundStrength())
end

--- Update the dimension and offset of the control
-- Only if the sizeHasUpdated variable is true!
function Time:UpdateSize()
    if not self.sizeHasUpdated then
        return
    end
    self.sizeHasUpdated = false

    local baseLength = 35
    local baseSize = const.Settings.styles.DEFAULTS.time.size
    local size = settings:GetTimeSize()
    local length = Clock_TST.GetLargestLine(self.label:GetText())
    local lines = settings:GetTimeLineCount()

    local function CreateDimension(dimension, baseDimension, offsetX)
        dimension.height = size / baseSize * math.max(1, lines * 0.66) * baseDimension.height
        dimension.width = length / baseLength * size / baseSize * baseDimension.width + offsetX
    end

    local function CreateOffset(x, y, width, height, dimension)
        local offsetX = x + (width - dimension.width) * .1
        local offsetY = y + (height - dimension.height) * .1
        return offsetX, offsetY
    end
    local width, height = settings:GetTimeDimension().width, settings:GetTimeDimension().height
    CreateDimension(
            settings:GetTimeDimension(),
            const.Settings.attributes.DEFAULTS.time.dimension,
            settings:GetTimeBackgroundOffset()
    )
    local x, y = settings:GetTimeOffset()
    settings:SetTimeOffset(
            CreateOffset(
                    x, y,
                    width, height,
                    settings:GetTimeDimension()
            )
    )


    self:UpdatePositions()
end

--- Update the Style of the label
function Time:UpdateStyle()
    local size = settings:GetTimeSize()
    local font = const.UI.FONTS[settings:GetTimeFont()]
    local style = settings:GetTimeStyle()
    local look = zo_strformat("<<1>>|<<2>>|<<3>>", font, size, style)

    self.label:SetFont(look)
    self.label:SetColor(settings:GetTimeColour())
end

--- Update the content of the label
function Time:UpdateLabel()
    local format = settings:GetTimeFormat()

    if settings:GetTimeHasRealDate() then
        local rDate = self.replacement.date.real
        local rTime = self.replacement.time.real
        format = format:gsub("%%x", rDate.x)
        format = format:gsub("%%A", rDate.A)
        format = format:gsub("%%a", rDate.a)
        format = format:gsub("%%B", rDate.B)
        format = format:gsub("%%b", rDate.b)
        format = format:gsub("%%d", rDate.d)
        format = format:gsub("%%m", rDate.m)
        format = format:gsub("%%w", rDate.w)
        format = format:gsub("%%Y", rDate.Y)
        format = format:gsub("%%y", rDate.y)
        format = format:gsub("%%X", rTime.X)
        format = format:gsub("%%H", rTime.H)
        format = format:gsub("%%I", rTime.I)
        format = format:gsub("%%M", rTime.M)
        format = format:gsub("%%S", rTime.S)
        format = format:gsub("%%p", rTime.p)
    end

    if settings:GetTimeHasLoreDate() or settings:GetTimeHasFakeLoreDate() then
        local lDate = self.replacement.date.lore
        local lTime = self.replacement.time.lore
        format = format:gsub("#x", lDate.x)
        format = format:gsub("#A", lDate.A)
        format = format:gsub("#a", lDate.a)
        format = format:gsub("#B", lDate.B)
        format = format:gsub("#b", lDate.b)
        format = format:gsub("#d", lDate.d)
        format = format:gsub("#m", lDate.m)
        format = format:gsub("#w", lDate.w)
        format = format:gsub("#Y", lDate.Y)
        format = format:gsub("#y", lDate.y)
        format = format:gsub("#X", lTime.X)
        format = format:gsub("#H", lTime.H)
        format = format:gsub("#I", lTime.I)
        format = format:gsub("#M", lTime.M)
        format = format:gsub("#S", lTime.S)
        format = format:gsub("#p", lTime.p)
    end

    self.label:SetText(format)
end

--- Update the content of the tooltip
function Time:UpdateTooltip()
    local loreTime = self.replacement.time.lore
    local loreDate = self.replacement.date.lore
    self.tooltip = zo_strformat("<<1>>, <<2>>. <<t:3>> <<4>> <<5>> <<6>>\n",
            loreDate.A, loreDate.d, loreDate.B, loreDate.E, loreDate.Y, loreTime.X)

    local realTime = self.replacement.time.real
    local realDate = self.replacement.date.real
    self.tooltip = self.tooltip .. zo_strformat("<<1>>, <<2>>. <<t:3>> <<4>> <<5>>",
            loreDate.A, realDate.d, realDate.B, realDate.Y, realTime.X)
end

--- Add a zero in front of a number if smaller than 10
--@param value is the number
local function AddZero(value)
    local number = tonumber(value)
    if not settings:GetTimeAddZero() then
        return number
    end
    if number < 10 then
        return "0" .. number
    end
    return number
end

--- Create the values for the time to be exchanged with their respective chars
--@param loreTime is the lore time object with { hour = h, minute = m, second = s }
function Time:CreateTimeReplacements(loreTime)
    local function I(hour)
        local h = tonumber(hour)
        if h > 12 then
            return 12 - h
        elseif settings:GetTimeHasUSFormat() and not settings:GetTimeHasJapFormat() and h == 0 then
            return 12
        end
        return h
    end
    local function p(hour)
        local h = tonumber(hour)
        if h < 12 or settings:GetTimeHasJapFormat() and h < 13 then
            return i18n.time.am
        else
            return i18n.time.pm
        end
    end
    local format = TIME_FORMAT_PRECISION_TWENTY_FOUR_HOUR
    if settings:GetTimeHasUSFormat() then
        format = TIME_FORMAT_PRECISION_TWELVE_HOUR
    end
    local h, m, s = GetTimeString():match("(%d+):(%d+):(%d+)")
    self.replacement.time.real = {
        X = ZO_FormatTime(GetSecondsSinceMidnight(), TIME_FORMAT_STYLE_CLOCK_TIME, format), -- GetTimeString(),
        H = h,
        I = AddZero(I(h)),
        M = m,
        S = s,
        p = p(h)
    }
    local lh, lm, ls = AddZero(loreTime.hour), AddZero(loreTime.minute), AddZero(loreTime.second)
    -- zo_strformat("<<1>>:<<2>>:<<3>>", lh, lm, ls)
    self.replacement.time.lore = {
        X = ZO_FormatTime(lh * 3600 + lm * 60 + ls, TIME_FORMAT_STYLE_CLOCK_TIME, format),
        H = lh,
        I = AddZero(I(loreTime.hour)),
        M = lm,
        S = ls,
        p = p(lh)
    }
end

--- Create the values for the date to be exchanged with their respective chars
--@param loreDate is the lore date object with { day = d, weekDay = w, month = m, year = y }
function Time:CreateDateReplacements(loreDate)
    local realDateString = GetDateStringFromTimestamp(GetTimeStamp())
    local rd, rm, ry = realDateString:match("(%d+).(%d+).(%d+)")
    rd, rm, ry = tonumber(rd), tonumber(rm), tonumber(ry)
    local rw = LibClockTST.GetWeekDay({ year = ry, month = rm, day = rd })
    self.replacement.date.real = {
        x = realDateString,
        A = i18n.date.real.week[rw],
        a = i18n.date.real.week[rw]:sub(1, 3),
        B = i18n.date.real.months[rm],
        b = i18n.date.real.months[rm]:sub(1, 3),
        d = zo_strformat("<<i:1>>", AddZero(rd)),
        m = AddZero(rm),
        w = rw,
        Y = "20" .. ry,
        y = ry
    }

    if settings:GetTimeHasFakeLoreDate() then
        self.replacement.date.lore = {
            x = zo_strformat(
                    "<<1>>.<<2>>.<<3>><<4>>",
                    loreDate.day, loreDate.month, i18n.date.lore.year, loreDate.year
            ),
            A = i18n.date.lore.week[rw],
            a = i18n.date.lore.week[rw]:sub(1, 3),
            B = i18n.date.lore.months[rm],
            b = i18n.date.lore.months[rm]:sub(1, 3),
            d = zo_strformat("<<i:1>>", AddZero(rd)),
            m = AddZero(rm),
            w = rw,
            Y = i18n.date.lore.year .. loreDate.year,
            y = loreDate.year
        }
    else
        self.replacement.date.lore = {
            x = zo_strformat(
                    "<<1>>.<<2>>.<<3>><<4>>",
                    loreDate.day, loreDate.month, i18n.date.lore.year, loreDate.year
            ),
            A = i18n.date.lore.week[loreDate.weekDay],
            a = i18n.date.lore.week[loreDate.weekDay]:sub(1, 3),
            B = i18n.date.lore.months[loreDate.month],
            b = i18n.date.lore.months[loreDate.month]:sub(1, 3),
            d = zo_strformat("<<i:1>>", AddZero(loreDate.day)),
            m = AddZero(loreDate.month),
            w = loreDate.weekDay,
            Y = i18n.date.lore.year .. loreDate.year,
            y = loreDate.year
        }
    end
end

--- Function to be given to the LibClockTST for the time and date updates
-- It will handle the updates of the label and tooltip
--@param time for the time object { hour = h, minute = m, second = s }
--@param date for the date object { day = d, weekDay = w, month = m, year = y }
function Time:UpdateTime(time, date)
    self:CreateTimeReplacements(time)
    if tonumber(self.replacement.date.d) ~= date.day then
        self:CreateDateReplacements(date)
    end
    self:UpdateLabel()
    self:UpdateSize()
    if settings:GetTimeHasTooltip() then
        self:UpdateTooltip()
    end
end

-- ----------------
-- Start
-- ----------------

--- Reset the previous saved replacements and mark the size as updated
function Time:ResetReplacement()
    self.replacement = {
        date = { real = {}, lore = {} },
        time = { real = {}, lore = {} }
    }
    self.sizeHasUpdated = true
end

--- Register the update function with the LibClockTST
function Time:RegisterForUpdates()
    local lib = LibClockTST:Instance()
    self:ResetReplacement()
    lib:Register(const.NAME, function(time, date)
        self:UpdateTime(time, date)
    end)
end

--- Remove this object from receiving further updates from the LibClockTST
function Time.UnregisterForUpdates()
    local lib = LibClockTST:Instance()
    lib:CancelSubscription(const.NAME)
end

--- Setup the tooltip to show when hovering over the label
function Time:SetupTooltip()
    local scale
    self.control:SetHandler("OnMouseEnter", function(control)
        if settings:GetTimeHasTooltip() then
            InitializeTooltip(InformationTooltip, control, TOP, 0, 0)
            SetTooltipText(InformationTooltip, self.tooltip or Clock_TST.I18N().error.library)
        end

        -- Hover
        if settings:GetTimeHighlightWhenHover() then
            local texture = const.UI.BACKGROUNDS.time[settings:GetTimeBackground()]
            local alpha = settings:GetTimeBackgroundStrength()
            self.background:SetTexture(texture.path .. texture.hover)
            self.background:SetColor(1, 1, 1, math.min(1, alpha * 1.1))
        end

        if settings:GetTimeScaleWhenHover() then
            scale = control:GetScale()
            control:SetScale(scale * settings:GetScaleFactor())
        end
    end)
    self.control:SetHandler("OnMouseExit", function(control)
        ClearTooltip(InformationTooltip)

        -- Hover
        self:UpdateBackground()

        control:SetScale(scale or 1)
    end)
end

--- Setup the movement of the Time and link it with the Moon control
function Time:SetupMovement()
    local function LeftClick(control)
        local offsetX, offsetY = control:GetLeft(), control:GetTop()

        if settings:GetTimeAndMoonAreLinked() then
            local moonOffsetX, moonOffsetY = settings:GetMoonOffset()
            local oldOffsetX, oldOffsetY = settings:GetTimeOffset()
            local newMoonOffsetX = moonOffsetX + offsetX - oldOffsetX
            local newMoonOffsetY = moonOffsetY + offsetY - oldOffsetY
            settings:SetMoonOffset(newMoonOffsetX, newMoonOffsetY)
            Clock_TST.moon:UpdatePositions()
        end

        settings:SetTimeOffset(offsetX, offsetY)
        self:UpdatePositions()
    end

    local function RightClick(control)
        local function Setup(isEnabled, func, text)
            if isEnabled then
                AddMenuItem("[X]\t" .. text, function()
                    func(false)
                end)
            else
                AddMenuItem("[ ]\t" .. text, function()
                    func(true)
                end)
            end
        end
        ClearMenu()
        Setup(settings:GetTimeIsMovable(), function(value)
            settings:SetTimeIsMovable(value)
            self:UpdateMouse()
        end, i18n.core.menu.movable)
        Setup(settings:GetTimeAndMoonAreLinked(), function(value)
            settings:SetTimeAndMoonAreLinked(value)
        end, i18n.core.menu.link)
        Setup(settings:GetTimeHasTooltip(), function(value)
            settings:SetTimeHasTooltip(value)
        end, i18n.core.menu.tooltip)
        Setup(settings:GetTimeHasBackground(), function(value)
            settings:SetTimeHasBackground(value)
            self:UpdateVisibility()
        end, i18n.core.menu.background)
        ShowMenu(control)
    end

    self.control:SetHandler("OnMouseDown", function(control, button)
        if button == 2 then
            control:SetMovable(false)
        end
    end)

    self.control:SetHandler("OnMouseUp", function(control, button)
        if button == 2 then
            RightClick(control)
            self:UpdateMouse()
        else
            LeftClick(control)
        end
    end)
end

--- Setup the mouse wheel interaction to change the size of the font when scrolling
function Time:SetupScale()
    self.control:SetHandler("OnMouseWheel", function(_, delta)
        local size = settings:GetTimeSize()
        settings:SetTimeSize(math.max(4, math.min(size + delta, 72)))
        self:UpdateStyle()
        self.sizeHasUpdated = true
    end)
end

--- Setup all controls and the Time fragment
--@param control of the TopLevelControl
function Time:SetupControls(control)
    self.control = control
    self.background = GetControl(control, "Background")
    self.label = GetControl(control, "Label")

    Clock_TST.TIME_FRAGMENT = ZO_HUDFadeSceneFragment:New(control)
    GAME_MENU_SCENE:AddFragment(Clock_TST.TIME_FRAGMENT)
end

--- Create a new time object
function Time:New(...)
    local container = ZO_Object.New(self)
    container:SetupControls(...)
    return container
end

-- ----------------
-- Start
-- ----------------

--- Initialize the Time
--@param _ eventId doesn't matter
--@param name of the addon is Clock
local function OnAddOnLoaded(_, name)
    if name == const.NAME then
        local time = Time:New(Clock_TST_Time)
        settings = Clock_TST.settings
        time:UpdatePositions()
        time:UpdateVisibility()
        time:UpdateMouse()
        time:SetupTooltip()
        time:SetupMovement()
        time:SetupScale()
        time:UpdateStyle()
        time:UpdateBackground()
        Clock_TST.time = time
        Clock_TST_Time:UnregisterForEvent(EVENT_ADD_ON_LOADED)
    end
end

Clock_TST_Time:RegisterForEvent(EVENT_ADD_ON_LOADED, OnAddOnLoaded)
