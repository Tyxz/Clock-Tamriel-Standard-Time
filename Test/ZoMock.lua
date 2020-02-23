--[[--------------------------------------------
    Project:    Clock - Tamriel Standard Time
    Author:     Arne Rantzen (Tyx)
    Created:    2020-02-19
    Updated:    2020-02-19
    License:    GPL-3.0
--------------------------------------------]]--

_G.ZO_ONE_MONTH_IN_SECONDS = 2592000
_G.EVENT_ADD_ON_LOADED = 0

_G.GetCVar = function(key)
    if key == "Language.2" then
        return "en"
    end
    return "undefined"
end

_G.EVENT_MANAGER = {}
function _G.EVENT_MANAGER:RegisterForEvent(_, event, func)
    if event == EVENT_ADD_ON_LOADED then
        require("Lib.Data.Constants")
        func(event, Clock_TST.CONSTANTS().NAME)
    end
end
function _G.EVENT_MANAGER:UnregisterForEvent(_, _)
end
function _G.EVENT_MANAGER:RegisterForUpdate(_, _, func)
    func()
end
function _G.EVENT_MANAGER:UnregisterForUpdate(_)
end

_G.ZO_SavedVars = {}
function _G.ZO_SavedVars:New(_, _, _, defaults)
    return defaults
end
function _G.ZO_SavedVars:NewAccountWide(_, _, _, defaults)
    return defaults
end

_G.ZO_Object = {}
function _G.ZO_Object:Subclass()
    return setmetatable({}, { __index = self })
end
function _G.ZO_Object:New(template)
    template = template or self

    local newObject = setmetatable ({}, template)

    local mt = getmetatable (newObject)
    mt.__index = template

    return newObject
end

_G.d = function(...)
    for i = 1, select('#', ...) do
        local element = select(i, ...)
        if type(element) == "table" then
            require("pl.pretty").dump(element)
        else
            print(element)
        end
    end
end

local Control = {}
function Control:New(template)
    template = template or self
    local newObject = setmetatable({}, template)
    local mt = getmetatable(newObject)
    mt.__index = template

    return newObject
end
function Control:RegisterForEvent(eventID, func)
    EVENT_MANAGER:RegisterForEvent(nil, eventID, func)
end

_G.Clock_TST_Time = Control:New(EVENT_MANAGER)
