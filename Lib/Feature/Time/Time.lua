

--[[----------------------------------------
Project:    Clock - Tamriel Standard Time
Location:   View/Moon.lua
Author:     Arne Rantzen (Tyx)
Created:    2020-01-23
Updated:    2020-01-23
License:    GPL-3.0
----------------------------------------]]--

Clock_TST = Clock_TST or {}

local Time = ZO_Object:Subclass()
local settings = Clock_TST.settings

-- ----------------
-- Update
-- ----------------

local function UpdateControl(control, atr)
    control:ClearAnchors()
    control:SetAnchor(atr.point, atr.relativeTo, atr.relativePoint, atr.offsetX, atr.offsetY)
    control:SetDimension(atr.dimension.width, atr.dimension.height)
end

function Time:UpdatePositions()
    -- UpdateControl(self.control, atr)
end

function Time:UpdateVisibility()
    self.masser_background:SetHidden(settings.GetMoonHasBackground())
    self.secunda_background:SetHidden(settings.GetMoonHasBackground())

    Clock_TST.MOON_FRAGMENT:SetHiddenForReason("Settings", not settings.GetMoonIsVisible(), 0, 0)
end

function Time:UpdateMovable()
    self.control:SetMovable(settings.GetMoonIsMovable())
end

-- ----------------
-- Start
-- ----------------

function Time:SetupControls(control)
    self.control = control
    self.background = GetControl(control, "Background")
    self.label = GetControl(control, "Label")

    local function OnAddOnLoaded(_, name)
        if name == Clock_TST.CONSTANTS.NAME then
            --self:UpdatePositions()
            --self:UpdateVisibility()
            --self:UpdateMovable()
            self.control:UnregisterForEvent(EVENT_ADD_ON_LOADED)
        end
    end

    self.control:RegisterForEvent(EVENT_ADD_ON_LOADED, OnAddOnLoaded)

    Clock_TST.MOON_FRAGMENT = ZO_HUDFadeSceneFragment:New(control)
end

function Time:New(...)
    local container = ZO_Object.New(self)
    container:SetupControls(...)
    return container
end

-- ----------------
-- Events
-- ----------------

function Clock_TST_Time_OnMouseEnter(control)
    -- TODO: Choice to disable tooltip
    InitializeTooltip(InformationTooltip, control, TOP, 0, 0)
    SetTooltipText(InformationTooltip, "")
end

function Clock_TST_Time_OnMouseExit(control)
    ClearTooltip(InformationTooltip)
end

function Clock_TST_Time_OnMoveStop(control)
    d("Time" .. "MoveStop")
end

function Clock_TST_Time_OnInitialized(control)
    Clock_TST.Time = Time:New(control)
end