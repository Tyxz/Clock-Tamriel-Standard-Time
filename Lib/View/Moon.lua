--[[----------------------------------------
    Project:    Clock - Tamriel Standard Time
    Location:   View/Moon.lua
    Author:     Arne Rantzen (Tyx)
    Created:    2020-01-23
    Updated:    2020-01-23
    License:    GPL-3.0
----------------------------------------]]--

Clock_TST = Clock_TST or {}

local Moon = ZO_Object:Subclass()
local settings = Clock_TST.settings

-- ----------------
-- Update
-- ----------------

local function UpdateControl(control, atr)
    control:ClearAnchors()
    control:SetAnchor(atr.point, atr.relativeTo, atr.relativePoint, atr.offsetX, atr.offsetY)
    control:SetDimension(atr.dimension.width, atr.dimension.height)
end

function Moon:UpdatePositions()
    UpdateControl(self.control, atr)
    UpdateControl(self.masser_background, atr.masser)
    UpdateControl(self.secunda_background, atr.secunda)
end

function Moon:UpdateVisibility()
    self.masser_background:SetHidden(settings.GetMoonHasBackground())
    self.secunda_background:SetHidden(settings.GetMoonHasBackground())

    Clock_TST.MOON_FRAGMENT:SetHiddenForReason("Settings", not settings.GetMoonIsVisible(), 0, 0)
end

function Moon:UpdateMovable()
    self.control:SetMovable(settings.GetMoonIsMovable())
end

-- ----------------
-- Start
-- ----------------

function Moon:SetupControls(control)
    self.control = control
    self.masser = GetControl(control, "Masser")
    self.masser_background = GetControl(control, "Masser_Background")
    self.secunda = GetControl(control, "Secunda")
    self.secunda_background = GetControl(control, "Secunda_Background")

    local function OnAddOnLoaded(_, name)
        if name == Clock_TST.CONSTANTS.NAME then
            self:UpdatePositions()
            self:UpdateVisibility()
            self:UpdateMovable()
            self.control:UnregisterForEvent(EVENT_ADD_ON_LOADED)
        end
    end

    self.control:RegisterForEvent(EVENT_ADD_ON_LOADED, OnAddOnLoaded)

    Clock_TST.MOON_FRAGMENT = ZO_HUDFadeSceneFragment:New(control)
end

function Moon:New(...)
    local container = ZO_Object.New(self)
    container:SetupControls(...)
    return container
end

-- ----------------
-- Events
-- ----------------

function Clock_TST_Moon_OnMouseEnter(control)
    d("Moon" .. "Enter")
end

function Clock_TST_Moon_OnMouseExit(control)
    d("Moon" .. "Exit")
end

function Clock_TST_Moon_OnMoveStop(control)
    d("Moon" .. "MoveStop")
end

function Clock_TST_Moon_OnInitialized(control)
    Clock_TST.Moon = Moon:New(control)
end
