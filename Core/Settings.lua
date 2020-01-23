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

function Settings:New()
    self.toggles = ZO_SavedVars:New(
            const.SAVED_NAME,
            const.SAVED_VERSION,
            const.Settings.toggles.SAVED_NAME,
            const.Settings.toggles.DEFAULTS
    )
    self.styles = ZO_SavedVars:New(
            const.SAVED_NAME,
            const.SAVED_VERSION,
            const.Settings.styles.SAVED_NAME,
            const.Settings.styles.DEFAULTS
    )
    self.attributes = ZO_SavedVars:New(
            const.SAVED_NAME,
            const.SAVED_VERSION,
            const.Settings.attributes.SAVED_NAME,
            const.Settings.attributes.DEFAULTS
    )
    return self
end