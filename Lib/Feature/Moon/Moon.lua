--[[--------------------------------------------
    Project:    Clock - Tamriel Standard Time
    Author:     Arne Rantzen (Tyx)
    Created:    2020-01-22
    Updated:    2020-02-11
    License:    GPL-3.0
--------------------------------------------]]--

Clock_TST = Clock_TST or {}

local Moon = ZO_Object:Subclass()
local i18n = Clock_TST.I18N().view.moon
local tooltip_format = i18n.tooltip
local const = Clock_TST.CONSTANTS()
local settings

-- ----------------
-- Update
-- ----------------

function Moon:UpdatePositions()
    local atr = settings.GetMoonAttributes()

    local function UpdateControl(control, atr)
        local anchor = atr.anchor
        control:ClearAnchors()
        control:SetAnchor(anchor.point, anchor.relativeTo, anchor.relativePoint, anchor.offsetX, anchor.offsetY)
        control:SetDimensions(atr.dimension.width, atr.dimension.height)
    end

    UpdateControl(self.control, atr)
    UpdateControl(self.masser_background, atr.masser)
    UpdateControl(self.secunda_background, atr.secunda)
end

function Moon:UpdateVisibility()
    local backgroundIsHidden = not settings:GetMoonHasBackground()
    self.masser_background:SetHidden(backgroundIsHidden)
    self.secunda_background:SetHidden(backgroundIsHidden)

    Clock_TST.MOON_FRAGMENT:SetHiddenForReason("Settings", not settings:GetMoonIsVisible(), 0, 0)
end

function Moon:UpdateMovable()
    self.control:SetMovable(settings:GetMoonIsMovable())
end

function Moon:UpdateTexture(currentPhaseName)
    if currentPhaseName == "new" then
        self.masser:SetHidden(true)
        self.secunda:SetHidden(true)
    else
        for name, texture in pairs(const.UI.MOONS.masser) do
            if currentPhaseName == name then
                self.masser:SetHidden(false)
                self.masser:SetTexture(texture)
            end
        end
        for name, texture in pairs(const.UI.MOONS.secunda) do
            if currentPhaseName == name then
                self.secunda:SetHidden(false)
                self.secunda:SetTexture(texture)
            end
        end
    end
    if settings:GetMoonHasBackground() then
        local background = const.UI.BACKGROUNDS.moon[settings:GetMoonBackground()]
        self.masser_background:SetTexture(background)
    end
end

function Moon:UpdateTooltip(moon)
    local days
    if moon.isFull then
        local hours = math.floor(moon.secondsUntilNextPhase / 3600)
        days = math.floor(moon.daysUntilNextPhase)
        self.tooltip = zo_strformat(tooltip_format.full, hours)
    else
        local percentage = math.floor(moon.percentageOfFullMoon * 100)
        local hours = math.floor(moon.secondsUntilFullMoon / 3600)
        days = math.floor(moon.daysUntilFullMoon)
        if moon.isWaxing then
            self.tooltip = zo_strformat(tooltip_format.isWaxing, percentage, hours)
        else
            self.tooltip = zo_strformat(tooltip_format.isWaning, percentage, hours)
        end
    end
    self.tooltip = self.tooltip .. zo_strformat(tooltip_format.duration, days)
end

function Moon:UpdateMoon(moon)
    self:UpdateTexture(moon.currentPhaseName)
    self:UpdateTooltip(moon)
end

-- ----------------
-- Start
-- ----------------

function Moon:RegisterForUpdates()
    local lib = LibClockTST:Instance()
    lib:RegisterForMoon(const.NAME, function(...) self:UpdateMoon(...) end)
end

function Moon:SetupTooltip()
    self.control:SetHandler("OnMouseEnter", function(control)
        if settings:GetMoonIsMouseEnabled() then
            InitializeTooltip(InformationTooltip, control, TOP, 0, 0)
            SetTooltipText(InformationTooltip, self.tooltip or tooltip_format.error)
        end
    end)
    self.control:SetHandler("OnMouseExit", function(_)
        ClearTooltip(InformationTooltip)
    end)
end

function Moon:SetupMovement()
    self.control:SetHandler("OnMoveStop", function(control)
        local offsetX, offsetY = control:GetLeft(), control:GetTop()

        if settings:GetMoonIsLinkedToTime() then
            local timeOffsetX, timeOffsetY = settings:GetTimeOffset()
            local oldOffsetX, oldOffsetY = settings:GetMoonOffset()
            local newTimeOffsetX  = timeOffsetX + offsetX - oldOffsetX
            local newTimeOffsetY  = timeOffsetY + offsetY - oldOffsetY
            settings:SetTimeOffset(newTimeOffsetX, newTimeOffsetY)
            Clock_TST.time:UpdatePositions()
        end

        settings:SetMoonOffset(offsetX, offsetY)
        self:UpdatePositions()
    end)
end

function Moon:SetupScale()
    self.control:SetHandler("OnMouseWheel", function(_, delta)
        local factor_masser = settings:GetScaleFactor() * delta
        local factor_secunda = factor_masser * .625 -- size of secunda / size of masser

        local function ChangeDimension(dimension, default, factor)
            dimension.width = math.max(default.width * .1, dimension.width + factor)
            dimension.height = math.max(default.height * .1, dimension.height + factor)
            return dimension
        end

        local default = settings:GetMoonDefaultAttributes()
        local moon_dimension = settings:GetMoonAttributes().dimension
        local masser_dimension = settings:GetMoonMasserAttributes().dimension
        local secunda_dimension = settings:GetMoonSecundaAttributes().dimension

        masser_dimension = ChangeDimension(masser_dimension, default.masser.dimension, factor_masser)

        secunda_dimension = ChangeDimension(secunda_dimension, default.secunda.dimension, factor_secunda)
        moon_dimension.width = masser_dimension.width + secunda_dimension.width * .5
        moon_dimension.height = masser_dimension.height * .5 + secunda_dimension.height

        self:UpdatePositions()
    end)
end

function Moon:SetupControls(control)
    self.control = control
    self.masser = GetControl(control, "Masser")
    self.masser_background = GetControl(control, "Masser_Background")
    self.secunda = GetControl(control, "Secunda")
    self.secunda_background = GetControl(control, "Secunda_Background")

    Clock_TST.MOON_FRAGMENT = ZO_HUDFadeSceneFragment:New(control)
end

function Moon:New(...)
    local container = ZO_Object.New(self)
    container:SetupControls(...)
    return container
end

-- ----------------
-- Start
-- ----------------

local function OnAddOnLoaded(_, name)
    local moon = Moon:New(Clock_TST_Moon)

    if name == const.NAME then
        settings = Clock_TST.settings
        moon:UpdatePositions()
        moon:UpdateVisibility()
        moon:UpdateMovable()
        moon:RegisterForUpdates()
        moon:SetupTooltip()
        moon:SetupMovement()
        moon:SetupScale()
        Clock_TST.moon = moon
        Clock_TST_Moon:UnregisterForEvent(EVENT_ADD_ON_LOADED)
    end
end

Clock_TST_Moon:RegisterForEvent(EVENT_ADD_ON_LOADED, OnAddOnLoaded)
