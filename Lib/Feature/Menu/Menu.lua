--[[--------------------------------------------
    Project:    Clock - Tamriel Standard Time
    Author:     Arne Rantzen (Tyx)
    Created:    2020-02-16
    Updated:    2020-02-16
    License:    GPL-3.0
--------------------------------------------]]--

Clock_TST = Clock_TST or {}
local const = Clock_TST.CONSTANTS()

local function SetupMenu()
    local settings = Clock_TST.settings
    local i18n = Clock_TST.I18N().menu
    local panel = {
        type = "panel",
        name = "Clock",
        displayName = "|cFFD700Clock|r - Tamriel Standard Time",
        author = "|c5175ea@Tyx|r",
        version = const.VERSION,
        website = "https://rantzen.net/clock-tamriel-standard-time/",
        feedback = "https://github.com/Tyxz/Clock-Tamriel-Standard-Time/issues/new/choose",
        translation = "https://poeditor.com/join/project/3ldrMQvCrU",
        donation = "https://www.esoui.com/downloads/info241-Clock-TamrielStandardTime.html#donate",
        slashCommand = "/clsettings",
        registerForRefresh = true,
        registerForDefaults = true,
        resetFunc = function()
            settings:Reset()
        end,
    }
    local LAM = LibAddonMenu2
    LAM:RegisterAddonPanel("ClockSettings", panel)

    -- ----------------
    -- Attributes
    -- ----------------

    local function AddAttributes()
        return {
            type = "submenu",
            name = i18n.booleans.nSub,
            controls = {
                {
                    type = "header",
                    name = i18n.core.nHeadTime
                },
                {
                    type = "checkbox",
                    getFunc = function()
                        return settings:GetTimeIsVisible()
                    end,
                    setFunc = function(value)
                        settings:SetTimeIsVisible(value)
                    end,
                    name = i18n.booleans.nTimeVisible,
                },
                {
                    type = "checkbox",
                    getFunc = function()
                        return settings:GetTimeIsMouseEnabled()
                    end,
                    setFunc = function(value)
                        settings:SetTimeIsMouseEnabled(value)
                    end,
                    disabled = function()
                        return not settings:GetTimeIsVisible()
                    end,
                    name = i18n.booleans.nMouseEnabled,
                },
                {
                    type = "checkbox",
                    getFunc = function()
                        return settings:GetTimeIsMovable()
                    end,
                    setFunc = function(value)
                        settings:SetTimeIsMovable(value)
                    end,
                    disabled = function()
                        return not (settings:GetTimeIsMouseEnabled() and settings:GetTimeIsVisible())
                    end,
                    name = i18n.booleans.nMovable,
                    tooltip = i18n.booleans.tMovable,

                },
                {
                    type = "checkbox",
                    getFunc = function()
                        return settings:GetTimeHasTooltip()
                    end,
                    setFunc = function(value)
                        settings:SetTimeHasTooltip(value)
                    end,
                    disabled = function()
                        return not (settings:GetTimeIsMouseEnabled() and settings:GetTimeIsVisible())
                    end,
                    name = i18n.booleans.nTooltip,
                },
                {
                    type = "checkbox",
                    getFunc = function()
                        return settings:GetTimeHasBackground()
                    end,
                    setFunc = function(value)
                        settings:SetTimeHasBackground(value)
                    end,
                    disabled = function()
                        return not settings:GetTimeIsVisible()
                    end,
                    name = i18n.booleans.nBackground,
                    tooltip = i18n.booleans.tTimeBackground,
                },
                {
                    type = "checkbox",
                    getFunc = function()
                        return settings:GetTimeAddZero()
                    end,
                    setFunc = function(value)
                        settings:SetTimeAddZero(value)
                    end,
                    disabled = function()
                        return not settings:GetTimeIsVisible()
                    end,
                    name = i18n.booleans.nAddZero,
                    tooltip = i18n.booleans.tAddZero,
                    warning = i18n.booleans.wAffect,
                },
                {
                    type = "checkbox",
                    getFunc = function()
                        return settings:GetTimeHasUSFormat()
                    end,
                    setFunc = function(value)
                        settings:SetTimeHasUSFormat(value)
                    end,
                    disabled = function()
                        return not settings:GetTimeIsVisible()
                    end,
                    name = i18n.booleans.nUSFormat,
                },
                {
                    type = "checkbox",
                    getFunc = function()
                        return settings:GetTimeHasJapFormat()
                    end,
                    setFunc = function(value)
                        settings:SetTimeHasJapFormat(value)
                    end,
                    disabled = function()
                        return not (settings:GetTimeHasUSFormat() and settings:GetTimeIsVisible())
                    end,
                    name = i18n.booleans.nJapanese,
                    warning = i18n.booleans.wAffect,
                },
                {
                    type = "checkbox",
                    getFunc = function()
                        return settings:GetTimeHasFakeLoreDate()
                    end,
                    setFunc = function(value)
                        settings:SetTimeHasFakeLoreDate(value)
                    end,
                    disabled = function()
                        return not settings:GetTimeIsVisible()
                    end,
                    name = i18n.booleans.nFake,
                    tooltip = i18n.booleans.tFake,
                },
                {
                    type = "header",
                    name = i18n.core.nHeadMoon
                },
                {
                    type = "checkbox",
                    getFunc = function()
                        return settings:GetMoonIsVisible()
                    end,
                    setFunc = function(value)
                        settings:SetMoonIsVisible(value)
                    end,
                    name = i18n.booleans.nMoonVisible,
                },
                {
                    type = "checkbox",
                    getFunc = function()
                        return settings:GetMoonIsMouseEnabled()
                    end,
                    setFunc = function(value)
                        settings:SetMoonIsMouseEnabled(value)
                    end,
                    disabled = function()
                        return not settings:GetMoonIsVisible()
                    end,
                    name = i18n.booleans.nMouseEnabled,
                },
                {
                    type = "checkbox",
                    getFunc = function()
                        return settings:GetMoonIsMovable()
                    end,
                    setFunc = function(value)
                        settings:SetMoonIsMovable(value)
                    end,
                    disabled = function()
                        return not (settings:GetMoonIsMouseEnabled() and settings:GetMoonIsVisible())
                    end,
                    name = i18n.booleans.nMovable,
                    tooltip = i18n.booleans.tMovable,

                },
                {
                    type = "checkbox",
                    getFunc = function()
                        return settings:GetMoonHasTooltip()
                    end,
                    setFunc = function(value)
                        settings:SetMoonHasTooltip(value)
                    end,
                    disabled = function()
                        return not (settings:GetMoonIsMouseEnabled() and settings:GetMoonIsVisible())
                    end,
                    name = i18n.booleans.nTooltip,
                },
                {
                    type = "checkbox",
                    getFunc = function()
                        return settings:GetMoonHasBackground()
                    end,
                    setFunc = function(value)
                        settings:SetMoonHasBackground(value)
                    end,
                    disabled = function()
                        return not settings:GetMoonIsVisible()
                    end,
                    name = i18n.booleans.nBackground,
                },
                {
                    type = "header",
                    name = i18n.core.nHeadGeneral,
                },
                {
                    type = "checkbox",
                    getFunc = function()
                        return settings:GetTimeAndMoonAreLinked()
                    end,
                    setFunc = function(value)
                        settings:SetTimeAndMoonAreLinked(value)
                    end,
                    disabled = function()
                        return not (settings:GetTimeIsVisible() and settings:GetMoonIsVisible())
                    end,
                    name = i18n.booleans.nLink,
                },
            }
        }
    end

    -- ----------------
    -- Styles
    -- ----------------

    local function AddStyles()
        return {
            type = "submenu",
            name = i18n.styles.nSub,
            controls = {
                {
                    type = "header",
                    name = i18n.core.nHeadTime
                },
                {
                    type = "description",
                    title = i18n.styles.nFormat,
                    text = i18n.styles.tFormat,
                },
                {
                    type = "description",
                    text = i18n.styles.dFormat,
                    width = "half",
                },
                {
                    type = "editbox",
                    disabled = function()
                        return not settings:GetTimeIsVisible()
                    end,
                    getFunc = function()
                        return settings:GetTimeFormat()
                    end,
                    setFunc = function(value)
                        settings:SetTimeFormat(value)
                    end,
                    isMultiline = true,
                    width = "half",
                },
                {
                    type = "colorpicker",
                    disabled = function()
                        return not settings:GetTimeIsVisible()
                    end,
                    getFunc = function()
                        return settings:GetTimeColour()
                    end,
                    setFunc = function(r, g, b, a)
                        settings:SetTimeColour(r, g, b, a)
                    end,
                    name = i18n.styles.nColor,
                    tooltip = i18n.styles.tColor,
                    width = "half",
                },
                {
                    type = "slider",
                    disabled = function()
                        return not settings:GetTimeIsVisible()
                    end,
                    min = 4,
                    max = 72,
                    step = 2,
                    getFunc = function()
                        return settings:GetTimeSize()
                    end,
                    setFunc = function(value)
                        settings:SetTimeSize(value)
                    end,
                    name = i18n.styles.nSize,
                    tooltip = i18n.styles.tSize,
                    width = "half",
                },
                {
                    type = "dropdown",
                    disabled = function()
                        return not settings:GetTimeIsVisible()
                    end,
                    choices = const.Menu.time.FONTS,
                    getFunc = function()
                        return settings:GetTimeFont()
                    end,
                    setFunc = function(value)
                        settings:SetTimeFont(value)
                    end,
                    name = i18n.styles.nFont,
                    tooltip = i18n.styles.tFont,
                    width = "half",
                },
                {
                    type = "dropdown",
                    disabled = function()
                        return not settings:GetTimeIsVisible()
                    end,
                    choices = const.Menu.time.STYLES,
                    getFunc = function()
                        return settings:GetTimeStyle()
                    end,
                    setFunc = function(value)
                        settings:SetTimeStyle(value)
                    end,
                    name = i18n.styles.nStyle,
                    tooltip = i18n.styles.tStyle,
                    width = "half",
                },
                {
                    type = "dropdown",
                    disabled = function()
                        return not settings:GetTimeIsVisible()
                    end,
                    choices = const.Menu.time.BACKGROUND,
                    getFunc = function()
                        return settings:GetTimeBackground()
                    end,
                    setFunc = function(value)
                        settings:SetTimeBackground(value)
                        Clock_TST.time:UpdateBackground()
                    end,
                    name = i18n.styles.nBackground,
                    width = "half",
                },
                {
                    type = "slider",
                    disabled = function()
                        return not settings:GetTimeIsVisible()
                    end,
                    min = 0,
                    max = 1,
                    step = .1,
                    getFunc = function()
                        return settings:GetTimeBackgroundStrength()
                    end,
                    setFunc = function(value)
                        settings:SetTimeBackgroundStrength(value)
                        Clock_TST.time:UpdateBackground()
                    end,
                    name = i18n.styles.nBackgroundStrength,
                    width = "half",
                },
                {
                    type = "header",
                    name = i18n.core.nHeadMoon
                },
                {
                    type = "dropdown",
                    disabled = function()
                        return not settings:GetMoonIsVisible()
                    end,
                    choices = const.Menu.moon.MASSER,
                    getFunc = function()
                        return settings:GetMoonTextureKeyMasser()
                    end,
                    setFunc = function(value)
                        settings:SetMoonTextureKeyMasser(value)
                    end,
                    name = i18n.styles.nMasser,
                    width = "half",
                },
                {
                    type = "dropdown",
                    disabled = function()
                        return not settings:GetMoonIsVisible()
                    end,
                    choices = const.Menu.moon.SECUNDA,
                    getFunc = function()
                        return settings:GetMoonTextureKeySecunda()
                    end,
                    setFunc = function(value)
                        settings:SetMoonTextureKeySecunda(value)
                    end,
                    name = i18n.styles.nSecunda,
                    width = "half",
                },
                {
                    type = "dropdown",
                    disabled = function()
                        return not settings:GetMoonIsVisible()
                    end,
                    choices = const.Menu.moon.BACKGROUND,
                    getFunc = function()
                        return settings:GetMoonBackground()
                    end,
                    setFunc = function(value)
                        settings:SetMoonBackground(value)
                    end,
                    name = i18n.styles.nBackground,
                    width = "half",
                },
                {
                    type = "slider",
                    disabled = function()
                        return not settings:GetMoonIsVisible()
                    end,
                    min = 0,
                    max = 1,
                    step = .1,
                    getFunc = function()
                        return settings:GetMoonBackgroundStrength()
                    end,
                    setFunc = function(value)
                        settings:SetMoonBackgroundStrength(value)
                    end,
                    name = i18n.styles.nBackgroundStrength,
                    width = "half",
                },

            }
        }
    end
    -- ----------------
    -- Register
    -- ----------------

    local data = {
        {
            type = "checkbox",
            getFunc = function()
                return settings:GetSaveAccountWide()
            end,
            setFunc = function(value)
                settings:SetSaveAccountWide(value)
            end,
            requiresReload = true,
            name = i18n.account.nAccount,
            tooltip = i18n.account.tAccount
        },
        AddAttributes(),
        AddStyles(),
    }

    LAM:RegisterOptionControls("ClockSettings", data)
end

-- ----------------
-- Start
-- ----------------

local eventHandle = const.DISPLAY .. "Menu"
-- Event to be called on Load
local function OnLoad(_, addonName)
    if addonName ~= const.NAME then
        return
    end
    SetupMenu()
    -- wait for the first loaded event
    EVENT_MANAGER:UnregisterForEvent(eventHandle, EVENT_ADD_ON_LOADED)
end
EVENT_MANAGER:RegisterForEvent(eventHandle, EVENT_ADD_ON_LOADED, OnLoad)
