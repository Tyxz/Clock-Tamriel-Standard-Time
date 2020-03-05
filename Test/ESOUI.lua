package.path = 'dev/esoui/?.lua;' .. package.path

-- Copied from Baertrams eso api lua intellij for testing purpose.

--- @return number frameTimeInSeconds
function GetFrameTimeSeconds() return 0 end

--- @param stringVariablePrefix string
--- @param contextId number
--- @return string stringValue
function GetString(stringVariablePrefix,contextId) return "String" end

--- @param timeValueInSeconds number
--- @param formatType number TimeFormatStyleCode|#TimeFormatStyleCode
--- @param precisionType number TimeFormatPrecisionCode|#TimeFormatPrecisionCode
--- @param direction number TimeFormatDirectionCode|#TimeFormatDirectionCode
--- @return string formattedTimeString
--- @return number nextUpdateTimeInSec
function FormatTimeSeconds(timeValueInSeconds,formatType,precisionType,direction) return "Time", 0 end

--- @return string displayName
function GetDisplayName() return "DisplayName" end

-- Replacements of internal ESO functions for testing

--- @param CVarName string
--- @return string value
GetCVar = function(key)
    if key == "Language.2" then
        return "en"
    end
    return "undefined"
end

EVENT_MANAGER = {}

--- @param control string name of the control object
--- @param eventHandler number of event
--- @param func function callback function
function EVENT_MANAGER:RegisterForEvent(control, eventHandler, func)
    if eventHandler == EVENT_ADD_ON_LOADED then
        func(eventHandler, "ClockTST")
    end
end

--- @param control string name of the control object
--- @param eventHandler number of event
function EVENT_MANAGER:UnregisterForEvent(control, eventHandler)
end

--- @param control string name of the control object
--- @param eventHandler number of event
--- @param func function callback function
function EVENT_MANAGER:RegisterForUpdate(control, eventHandler, func)
    func()
end

--- @param control string name of the control object
function EVENT_MANAGER:UnregisterForUpdate(control)
end
