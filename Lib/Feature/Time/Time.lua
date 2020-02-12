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

function Time:UpdatePositions()
    local attribute = settings.GetTimeAttributes()

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
    UpdateControl(self.background, attribute.background)
end

function Time:UpdateVisibility()
    local backgroundIsHidden = not settings.GetTimeHasBackground()
    self.background:SetHidden(backgroundIsHidden)

    Clock_TST.TIME_FRAGMENT:SetHiddenForReason("Settings", not settings.GetTimeIsVisible(), 0, 0)
end

function Time:UpdateMouse()
    self.control:SetMovable(settings.GetTimeIsMovable())
    self.control:SetMouseEnabled(settings.GetTimeIsMouseEnabled())
end

function Time:UpdateSize()
    if not self.sizeHasUpdated then
        return
    end
    self.sizeHasUpdated = false

    local baseLength = 35
    local baseSize = const.Settings.styles.DEFAULTS.time.size
    local size = settings.GetTimeSize()
    local length = Clock_TST.GetLargestLine(self.label:GetText())
    local lines = settings.GetTimeLineCount()

    local function CreateDimension(dimension, baseDimension)
        dimension.height = size / baseSize * math.max(1, lines * 0.66) * baseDimension.height
        dimension.width = length / baseLength * baseDimension.width
    end

    CreateDimension(
            settings.GetTimeBackgroundDimension(),
            const.Settings.attributes.DEFAULTS.time.background.dimension
    )
    CreateDimension(
            settings.GetTimeDimension(),
            const.Settings.attributes.DEFAULTS.time.dimension
    )
    self:UpdatePositions()
end

function Time:UpdateLabel()
    local format = settings.GetTimeFormat()

    if settings.GetTimeHasRealDate() then
        local lTime = self.replacement.time.lore
        local rTime = self.replacement.time.real
        format = format:gsub("#X", lTime.X)
        format = format:gsub("%%X", rTime.X)
        format = format:gsub("#H", lTime.H)
        format = format:gsub("%%H", rTime.H)
        format = format:gsub("#I", lTime.I)
        format = format:gsub("%%I", rTime.I)
        format = format:gsub("#M", lTime.M)
        format = format:gsub("%%M", rTime.M)
        format = format:gsub("#S", lTime.S)
        format = format:gsub("%%S", rTime.S)
        format = format:gsub("#p", lTime.p)
        format = format:gsub("%%p", rTime.p)
    end

    if settings.GetTimeHasLoreDate() then
        local lDate = self.replacement.date.lore
        local rDate = self.replacement.date.real
        format = format:gsub("#x", lDate.x)
        format = format:gsub("%%x", rDate.x)
        format = format:gsub("#A", lDate.A)
        format = format:gsub("#a", lDate.a)
        format = format:gsub("#B", lDate.B)
        format = format:gsub("%%B", rDate.B)
        format = format:gsub("#b", lDate.b)
        format = format:gsub("%%b", rDate.b)
        format = format:gsub("#d", lDate.d)
        format = format:gsub("%%d", rDate.d)
        format = format:gsub("#m", lDate.m)
        format = format:gsub("%%m", rDate.m)
        format = format:gsub("#w", lDate.w)
        format = format:gsub("#Y", lDate.Y)
        format = format:gsub("%%Y", rDate.Y)
        format = format:gsub("#y", lDate.y)
        format = format:gsub("%%y", rDate.y)
    end

    self.label:SetText(format)
end

function Time:UpdateTooltip()
    local loreTime = self.replacement.time.lore
    local loreDate = self.replacement.date.lore
    self.tooltip = zo_strformat("<<1>>, <<2>>. <<t:3>> <<4>> <<5>> <<6>>\n",
            loreDate.A, loreDate.d, loreDate.B, loreDate.E, loreDate.Y, loreTime.X)

    local realTime = self.replacement.time.real
    local realDate = self.replacement.date.real
    self.tooltip = self.tooltip .. zo_strformat("             <<1>>. <<t:2>> <<3>> <<4>>",
            realDate.d, realDate.B, realDate.Y, realTime.X)
end

local function AddZero(value)
    local number = tonumber(value)
    if number < 10 then
        return "0" .. number
    end
    return number
end

function Time:CreateTimeReplacements(loreTime)
    local function I(hour)
        local h = tonumber(hour)
        if h > 12 then
            return 12 - h
        elseif settings.GetTimeHasUSFormat() and h == 0 then
            return 12
        end
        return h
    end
    local function p(hour)
        local h = tonumber(hour)
        if settings.GetTimeHasUSFormat() and h < 12 then
            return i18n.time.am
        else
            return i18n.time.pm
        end
        return nil
    end
    local h, m, s = GetTimeString():match("(%d+):(%d+):(%d+)")
    self.replacement.time.real = {
        X = GetTimeString(),
        H = h,
        I = AddZero(I(h)),
        M = m,
        S = s,
        p = p(h)
    }
    lh, lm, ls = AddZero(loreTime.hour), AddZero(loreTime.minute), AddZero(loreTime.second)
    self.replacement.time.lore = {
        X = zo_strformat("<<1>>:<<2>>:<<3>>", lh, lm, ls),
        H = lh,
        I = AddZero(I(loreTime.hour)),
        M = lm,
        S = ls,
        p = p(lh)
    }
end

function Time:CreateDateReplacements(loreDate)
    local realDateString = GetDateStringFromTimestamp(GetTimeStamp())
    local rd, rm, ry = realDateString:match("(%d+).(%d+).(%d+)")
    rd, rm, ry = tonumber(rd), tonumber(rm), tonumber(ry)
    self.replacement.date.real = {
        x = realDateString,
        B = i18n.date.real.months[rm],
        b = i18n.date.real.months[rm]:sub(1, 3),
        d = zo_strformat("<<i:1>>", AddZero(rd)),
        m = AddZero(rm),
        Y = "20" .. ry,
        y = ry
    }
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

function Time:UpdateTime(time, date)
    self:CreateTimeReplacements(time)
    if tonumber(self.replacement.date.d) ~= date.day then
        self:CreateDateReplacements(date)
    end
    self:UpdateLabel()
    self:UpdateSize()
    if settings.GetTimeHasTooltip() then
        self:UpdateTooltip()
    end
end

-- ----------------
-- Start
-- ----------------

function Time:RegisterForUpdates()
    local lib = LibClockTST:Instance()
    self.replacement = {
        date = { real, lore },
        time = { real, lore }
    }
    lib:Register(const.NAME, function(time, date)
        self:UpdateTime(time, date)
    end)
end

function Time:SetupTooltip()
    self.control:SetHandler("OnMouseEnter", function(control)
        if settings.GetTimeHasTooltip() then
            InitializeTooltip(InformationTooltip, control, TOP, 0, 0)
            SetTooltipText(InformationTooltip, self.tooltip or Clock_TST.I18N().error.library)
        end
    end)
    self.control:SetHandler("OnMouseExit", function(_)
        ClearTooltip(InformationTooltip)
    end)
end

function Time:SetupMovement()
    local function LeftClick(control)
        local offsetX, offsetY = control:GetCenter()

        if settings.GetTimeAndMoonAreLinked() then
            local moonOffsetX, moonOffsetY = settings.GetMoonOffset()
            local oldOffsetX, oldOffsetY = settings.GetTimeOffset()
            local newMoonOffsetX = moonOffsetX + offsetX - oldOffsetX
            local newMoonOffsetY = moonOffsetY + offsetY - oldOffsetY
            settings.SetMoonOffset(newMoonOffsetX, newMoonOffsetY)
            Clock_TST.moon:UpdatePositions()
        end

        settings.SetTimeOffset(offsetX, offsetY)
        self:UpdatePositions()
    end

    local function RightClick(control)
        local function Setup(isEnabled, func, text)
            if isEnabled then
                AddMenuItem("[X]\t" .. text,
                        function()
                            func(false)
                        end)
            else
                AddMenuItem("[ ]\t" .. text,
                        function()
                            func(true)
                        end)
            end
        end
        ClearMenu()
        Setup(settings.GetTimeIsMovable(), function(value)
            settings.SetTimeIsMovable(value)
            self:UpdateMouse()
        end, i18n.core.menu.movable)
        Setup(settings.GetTimeAndMoonAreLinked(), settings.SetTimeAndMoonAreLinked, i18n.core.menu.link)
        Setup(settings.GetTimeHasTooltip(), settings.SetTimeHasTooltip, i18n.core.menu.tooltip)
        Setup(settings.GetTimeHasBackground(), function(value)
            settings.SetTimeHasBackground(value)
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

function Time:SetupScale()
    self.control:SetHandler("OnMouseWheel", function(_, _)
        self:UpdatePositions()
    end)
end

function Time:SetupControls(control)
    self.control = control
    self.background = GetControl(control, "Background")
    self.label = GetControl(control, "Label")

    Clock_TST.TIME_FRAGMENT = ZO_HUDFadeSceneFragment:New(control)
end

function Time:New(...)
    local container = ZO_Object.New(self)
    container:SetupControls(...)
    return container
end

-- ----------------
-- Start
-- ----------------

local function OnAddOnLoaded(_, name)
    if name == const.NAME then
        local time = Time:New(Clock_TST_Time)
        settings = Clock_TST.settings
        time:UpdatePositions()
        time:UpdateVisibility()
        time:UpdateMouse()
        time:RegisterForUpdates()
        time:SetupTooltip()
        time:SetupMovement()
        time:SetupScale()
        time.sizeHasUpdated = true
        Clock_TST.time = time
        Clock_TST_Time:UnregisterForEvent(EVENT_ADD_ON_LOADED)
    end
end

Clock_TST_Time:RegisterForEvent(EVENT_ADD_ON_LOADED, OnAddOnLoaded)
