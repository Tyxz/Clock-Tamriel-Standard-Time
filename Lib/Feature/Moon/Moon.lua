--[[--------------------------------------------
    Project:    Clock - Tamriel Standard Time
    Author:     Arne Rantzen (Tyx)
    Created:    2020-01-22
    Updated:    2020-02-11
    License:    GPL-3.0
--------------------------------------------]]--

Clock_TST = Clock_TST or {}

local Moon = ZO_Object:Subclass()
local const = Clock_TST.CONSTANTS()
local i18n = Clock_TST.I18N().view
local settings

-- ----------------
-- Update
-- ----------------

--- Update the anchor of the moon controls
function Moon:UpdatePositions()
    local attribute = settings:GetMoonAttributes()

    local function UpdateControl(control, atr)
        local anchor = atr.anchor
        control:ClearAnchors()
        control:SetAnchor(
                anchor.point, _G[anchor.relativeTo], anchor.relativePoint,
                anchor.offsetX, anchor.offsetY
        )
        control:SetDimensions(atr.dimension.width, atr.dimension.height)
    end

    UpdateControl(self.control, attribute)
    UpdateControl(self.masser_background, attribute.masser)
    UpdateControl(self.secunda_background, attribute.secunda)
end

--- Update the visibility of the moon controls and manage their fragments
function Moon:UpdateVisibility()

    Clock_TST.MOON_FRAGMENT:SetHiddenForReason("Settings", not settings:GetMoonIsVisible())

    if settings:GetMoonIsVisible() then
        local backgroundIsHidden = not settings:GetMoonHasBackground()
        self.masser_background:SetHidden(backgroundIsHidden)
        self.secunda_background:SetHidden(backgroundIsHidden)

        local namespace = self.control:GetName()

        HUD_SCENE:AddFragment(Clock_TST.MOON_FRAGMENT)
        HUD_UI_SCENE:AddFragment(Clock_TST.MOON_FRAGMENT)
        WORLD_MAP_SCENE:RemoveFragment(Clock_TST.MOON_FRAGMENT)
        EVENT_MANAGER:UnregisterForEvent(namespace, EVENT_PLAYER_COMBAT_STATE)
        if settings:GetHideInFight() then
            EVENT_MANAGER:RegisterForEvent(namespace, EVENT_PLAYER_COMBAT_STATE, function(_, inCombat)
                Clock_TST.MOON_FRAGMENT:SetHiddenForReason("Combat", inCombat)
            end)
        elseif settings:GetOnlyShowOnMap() then
            HUD_SCENE:RemoveFragment(Clock_TST.MOON_FRAGMENT)
            HUD_UI_SCENE:RemoveFragment(Clock_TST.MOON_FRAGMENT)
            WORLD_MAP_SCENE:AddFragment(Clock_TST.MOON_FRAGMENT)
        end

        self:RegisterForUpdates()
    else
        self.UnregisterForUpdates()
    end
end

--- Update if mouse interactions are possible
function Moon:UpdateMouse()
    self.control:SetMovable(settings:GetMoonIsMovable())
    self.control:SetMouseEnabled(settings:GetMoonIsMouseEnabled() and settings:GetMoonIsVisible())
end

--- Update the background texture
function Moon:UpdateBackground()
    local texture = const.UI.BACKGROUNDS.moon[settings:GetMoonBackground()]
    local alpha = settings:GetMoonBackgroundStrength() * settings:GetMoonAlpha()
    self.masser_background:SetTexture(texture.path .. texture.background)
    self.masser_background:SetColor(1, 1, 1, alpha)
    self.secunda_background:SetTexture(texture.path .. texture.background)
    self.secunda_background:SetColor(1, 1, 1, alpha)
end

--- Update the texture of the moons to fit the phases
--@param currentPhaseName is the name of the current phase in English
function Moon:UpdateTexture(currentPhaseName)
    if currentPhaseName == "new" then
        self.masser:SetHidden(true)
        self.secunda:SetHidden(true)
    else
        local texturesMasser = const.UI.MOONS.masser[settings:GetMoonTextureKeyMasser()]
        for name, texture in pairs(texturesMasser) do
            if currentPhaseName == name then
                self.masser:SetHidden(false)
                self.masser:SetTexture(texturesMasser.path .. texture)
                self.masser:SetColor(1, 1, 1, settings:GetMoonAlpha())
            end
        end
        local texturesSecunda = const.UI.MOONS.secunda[settings:GetMoonTextureKeySecunda()]
        for name, texture in pairs(texturesSecunda) do
            if currentPhaseName == name then
                self.secunda:SetHidden(false)
                self.secunda:SetTexture(texturesSecunda.path .. texture)
                self.secunda:SetColor(1, 1, 1, settings:GetMoonAlpha())
            end
        end
    end
    if settings:GetMoonHasBackground() then
        self:UpdateBackground()
    end
end

--- Update the tooltip information
--@param moon object { ... }
function Moon:UpdateTooltip(moon)
    local tooltip_format = i18n.moon.tooltip
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

--- Update the moon texture and tooltip
-- This function is meant to be given to the LibClockTST.
--@param moon object { ... }
function Moon:UpdateMoon(moon)
    self:UpdateTexture(moon.currentPhaseName)

    if settings:GetMoonHasTooltip() then
        self:UpdateTooltip(moon)
    end
end

-- ----------------
-- Start
-- ----------------

--- Register the moon updates with the LibClockTST
function Moon:RegisterForUpdates()
    local lib = LibClockTST:Instance()
    lib:RegisterForMoon(const.NAME, function(...)
        self:UpdateMoon(...)
    end)
end

--- Stop further updates from the LibClockTST
function Moon.UnregisterForUpdates()
    local lib = LibClockTST:Instance()
    lib:CancelSubscriptionForMoon(const.NAME)
end

--- Setup a tooltip to be shown if hovering over the moon control
function Moon:SetupTooltip()
    self.control:SetHandler("OnMouseEnter", function(control)
        if settings:GetMoonHasTooltip() then
            InitializeTooltip(InformationTooltip, control, TOP, 0, 0)
            SetTooltipText(InformationTooltip, self.tooltip or Clock_TST.I18N().error.library)
        end

        -- Hover
        if settings:GetMoonHighlightWhenHover() then
            local texture = const.UI.BACKGROUNDS.moon[settings:GetMoonBackground()]
            local alpha = math.min(1, settings:GetMoonBackgroundStrength() * 1.1)
            self.masser_background:SetTexture(texture.path .. texture.hover)
            self.masser_background:SetColor(1, 1, 1, alpha)
            self.secunda_background:SetTexture(texture.path .. texture.hover)
            self.secunda_background:SetColor(1, 1, 1, alpha)
        end

        if settings:GetMoonScaleWhenHover() then
            local scale = settings:GetMoonScale()
            control:SetScale(scale * settings:GetScaleFactor())
        end
    end)
    self.control:SetHandler("OnMouseExit", function(control)
        ClearTooltip(InformationTooltip)

        -- Hover
        self:UpdateBackground()

        control:SetScale(settings:GetMoonScale())
    end)
end

--- Setup the movement of the moon control and link the time control to it if set
function Moon:SetupMovement()
    local function LeftClick(control)
        local offsetX, offsetY = control:GetLeft(), control:GetTop()

        if settings:GetTimeAndMoonAreLinked() then
            local timeOffsetX, timeOffsetY = settings:GetTimeOffset()
            local oldOffsetX, oldOffsetY = settings:GetMoonOffset()
            local newTimeOffsetX = timeOffsetX + offsetX - oldOffsetX
            local newTimeOffsetY = timeOffsetY + offsetY - oldOffsetY
            settings:SetTimeOffset(newTimeOffsetX, newTimeOffsetY)
            Clock_TST.time:UpdatePositions()
        end

        settings:SetMoonOffset(offsetX, offsetY)
        self:UpdatePositions()
    end

    --- Create menu if user clicks right
    -- control is the main control
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
        Setup(settings:GetMoonIsMovable(), function(value)
            settings:SetMoonIsMovable(value)
            self:UpdateMouse()
        end, i18n.core.menu.movable)
        Setup(settings:GetTimeAndMoonAreLinked(), function(value)
            settings:SetTimeAndMoonAreLinked(value)
        end, i18n.core.menu.link)
        Setup(settings:GetMoonHasTooltip(), function(value)
            settings:SetMoonHasTooltip(value)
        end, i18n.core.menu.tooltip)
        Setup(settings:GetMoonHasBackground(), function(value)
            settings:SetMoonHasBackground(value)
            self:UpdateVisibility()
        end, i18n.core.menu.background)
        AddMenuItem( i18n.core.menu.open, function() LibAddonMenu2:OpenToPanel(CLOCK_TST_MENU) end)
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

--- Setup a mouse wheel interaction to change the size of the moon
function Moon:SetupScale()
    self.control:SetScale(settings:GetMoonScale())
    self.control:SetHandler("OnMouseWheel", function(_, delta)
        --[[
        local factor_masser = settings:GetScaleFactor() * delta
        local factor_secunda = factor_masser * .625 -- size of secunda / size of masser

        local function ChangeDimension(dimension, default, factor)
            dimension.width = math.max(default.width * .1, dimension.width + factor)
            dimension.height = math.max(default.height * .1, dimension.height + factor)
            return dimension
        end

        local default = const.Settings.attributes.DEFAULTS.moon
        local moon_dimension = settings:GetMoonAttributes().dimension
        local masser_dimension = settings:GetMoonMasserAttributes().dimension
        local secunda_dimension = settings:GetMoonSecundaAttributes().dimension

        masser_dimension = ChangeDimension(masser_dimension, default.masser.dimension, factor_masser)

        secunda_dimension = ChangeDimension(secunda_dimension, default.secunda.dimension, factor_secunda)
        moon_dimension.width = masser_dimension.width + secunda_dimension.width * .5
        moon_dimension.height = masser_dimension.height * .5 + secunda_dimension.height

        self:UpdatePositions()
        ]]--
        local scale = settings:GetMoonScale()
        scale = scale + delta * 0.02
        self.control:SetScale(scale)
        settings:SetMoonScale(scale)
    end)
end

--- Setup the controls and the fragment
--@param control of the TopLevelControl
function Moon:SetupControls(control)
    self.control = control
    self.masser = GetControl(control, "Masser")
    self.masser_background = GetControl(control, "Masser_Background")
    self.secunda = GetControl(control, "Secunda")
    self.secunda_background = GetControl(control, "Secunda_Background")

    Clock_TST.MOON_FRAGMENT = ZO_HUDFadeSceneFragment:New(control)
end

--- Create a new Moon object
function Moon:New(...)
    local container = ZO_Object.New(self)
    container:SetupControls(...)
    return container
end

--- function to reload all values from the settings
function Moon:Setup()
    self:SetupTooltip()
    self:SetupMovement()
    self:SetupScale()

    self:UpdatePositions()
    self:UpdateVisibility()
    self:UpdateMouse()
end

-- ----------------
-- Start
-- ----------------

--- Initialize the Moon
--@param _ eventId doesn't matter
--@param name of the addon is Clock
local function OnAddOnLoaded(_, name)
    if name == const.NAME then
        settings = Clock_TST.settings
        local moon = Moon:New(Clock_TST_Moon)
        moon:Setup()
        Clock_TST.moon = moon
        Clock_TST_Moon:UnregisterForEvent(EVENT_ADD_ON_LOADED)
    end
end

Clock_TST_Moon:RegisterForEvent(EVENT_ADD_ON_LOADED, OnAddOnLoaded)
