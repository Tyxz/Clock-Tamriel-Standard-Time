--[[--------------------------------------------
    Project:    Clock - Tamriel Standard Time
    Author:     Arne Rantzen (Tyx)
    Created:    2020-02-16
    Updated:    2020-02-16
    License:    GPL-3.0
--------------------------------------------]]--

Clock_TST = Clock_TST or {}
local const = Clock_TST.CONSTANTS()

--- Create the LibAddonMenu panel
local function SetupMenu()
    local settings = Clock_TST.settings
    local time = Clock_TST.time
    local moon = Clock_TST.moon
    local i18n = Clock_TST.I18N().menu
    local lang = GetCVar("Language.2")
    local link = "https://" .. lang .. ".liberapay.com/Tyx/"
    local panel = {
        type = "panel",
        name = const.NAME,
        displayName = const.DISPLAY,
        author = "|c5175ea" .. const.AUTHOR .. "|r",
        version = const.VERSION,
        website = "https://rantzen.net/clock-tamriel-standard-time/",
        feedback = "https://github.com/Tyxz/Clock-Tamriel-Standard-Time/issues/new/choose",
        translation = "https://poeditor.com/join/project/NJq0ZZpySZ",
        donation = link,
        slashCommand = "/tstmenu",
        registerForRefresh = true,
        registerForDefaults = true,
        resetFunc = function()
            settings:Reset()
            time:Setup()
            moon:Setup()
        end,
    }
    local LAM = LibAddonMenu2
    CLOCK_TST_MENU = LAM:RegisterAddonPanel(const.NAME, panel)

    -- ----------------
    -- Attributes
    -- ----------------

    -- Create the boolean submenu
    local function AddBooleans()
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
                        time:UpdateVisibility()
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
                        time:UpdateMouse()
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
                        time:UpdateMouse()
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
                        time:UpdateTooltip()
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
                        time:UpdateVisibility()
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
                        time:RegisterForUpdates()
                    end,
                    disabled = function()
                        return not settings:GetTimeIsVisible()
                    end,
                    name = i18n.booleans.nFake,
                    tooltip = i18n.booleans.tFake,
                },
                {
                    type = "checkbox",
                    getFunc = function()
                        return settings:GetTimeScaleWhenHover()
                    end,
                    setFunc = function(value)
                        settings:SetTimeScaleWhenHover(value)
                    end,
                    disabled = function()
                        return not settings:GetTimeIsVisible()
                    end,
                    name = i18n.booleans.nHoverScale,
                },
                {
                    type = "checkbox",
                    getFunc = function()
                        return settings:GetTimeHighlightWhenHover()
                    end,
                    setFunc = function(value)
                        settings:SetTimeHighlightWhenHover(value)
                    end,
                    disabled = function()
                        return not settings:GetTimeIsVisible()
                    end,
                    name = i18n.booleans.nHoverColour,
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
                        moon:UpdateVisibility()
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
                        moon:UpdateMouse()
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
                        moon:UpdateMouse()
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
                        moon:RegisterForUpdates()
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
                        moon:UpdateVisibility()
                    end,
                    disabled = function()
                        return not settings:GetMoonIsVisible()
                    end,
                    name = i18n.booleans.nBackground,
                },
                {
                    type = "checkbox",
                    getFunc = function()
                        return settings:GetMoonScaleWhenHover()
                    end,
                    setFunc = function(value)
                        settings:SetMoonScaleWhenHover(value)
                    end,
                    disabled = function()
                        return not settings:GetMoonIsVisible()
                    end,
                    name = i18n.booleans.nHoverScale,
                },
                {
                    type = "checkbox",
                    getFunc = function()
                        return settings:GetMoonHighlightWhenHover()
                    end,
                    setFunc = function(value)
                        settings:SetMoonHighlightWhenHover(value)
                    end,
                    disabled = function()
                        return not settings:GetMoonIsVisible()
                    end,
                    name = i18n.booleans.nHoverColour,
                },
                {
                    type = "header",
                    name = i18n.core.nHeadGeneral,
                },
                {
                    type = "checkbox",
                    getFunc = function()
                        return settings:GetHideInFight()
                    end,
                    setFunc = function(value)
                        settings:SetHideInFight(value)
                        if value then
                            settings:SetOnlyShowOnMap(not value)
                        end

                        time:UpdateVisibility()
                        moon:UpdateVisibility()
                    end,
                    disabled = function()
                        return not (settings:GetTimeIsVisible() and settings:GetMoonIsVisible())
                                and settings:GetOnlyShowOnMap()
                    end,
                    name = i18n.booleans.nFight,
                },
                {
                    type = "checkbox",
                    getFunc = function()
                        return settings:GetOnlyShowOnMap()
                    end,
                    setFunc = function(value)
                        settings:SetOnlyShowOnMap(value)
                        if value then
                            settings:SetHideInFight(not value)
                        end

                        time:UpdateVisibility()
                        moon:UpdateVisibility()
                    end,
                    disabled = function()
                        return not (settings:GetTimeIsVisible() and settings:GetMoonIsVisible())
                                and settings:GetHideInFight()
                    end,
                    name = i18n.booleans.nMap,
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

    --- Create the Style submenu
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
                        local _, count = string.gsub(value, "\n", "")
                        if count == 0 then
                            count = 1
                        end
                        settings:SetTimeLineCount(count)
                        local _, loreCount = string.gsub(value, "#", "")
                        settings:SetTimeHasLoreDate(loreCount ~= 0)
                        local _, realCount = string.gsub(value, "%%", "")
                        settings:SetTimeHasRealDate(realCount ~= 0)
                        settings:SetTimeIsVisible(realCount ~= 0 or loreCount ~= 0)
                        time:ResetReplacement()
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
                        time:UpdateStyle()
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
                        time:UpdateStyle()
                        time:ResetReplacement()
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
                        time:UpdateStyle()
                        time:ResetReplacement()
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
                        time:UpdateStyle()
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
                        time:UpdateBackground()
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
                    step = .01,
                    getFunc = function()
                        return settings:GetTimeBackgroundStrength()
                    end,
                    setFunc = function(value)
                        settings:SetTimeBackgroundStrength(value)
                        time:UpdateBackground()
                    end,
                    name = i18n.styles.nBackgroundStrength,
                    width = "half",
                },
                {
                    type = "slider",
                    disabled = function()
                        return not settings:GetTimeIsVisible()
                    end,
                    min = -500,
                    max = 500,
                    step = 10,
                    getFunc = function()
                        return settings:GetTimeBackgroundOffset().x
                    end,
                    setFunc = function(value)
                        local y = settings:GetTimeBackgroundOffset().y
                        settings:SetTimeBackgroundOffset({
                            x = value,
                            y = y
                        })
                        time:ResetReplacement()
                    end,
                    name = i18n.styles.nBackgroundOffsetX,
                    tooltip = i18n.styles.tBackgroundOffsetX,
                    width = "half",
                },
                {
                    type = "slider",
                    disabled = function()
                        return not settings:GetTimeIsVisible()
                    end,
                    min = -500,
                    max = 500,
                    step = 10,
                    getFunc = function()
                        return settings:GetTimeBackgroundOffset().y
                    end,
                    setFunc = function(value)
                        local x = settings:GetTimeBackgroundOffset().x
                        settings:SetTimeBackgroundOffset({
                            x = x,
                            y = value,
                        })
                        time:ResetReplacement()
                    end,
                    name = i18n.styles.nBackgroundOffsetY,
                    tooltip = i18n.styles.tBackgroundOffsetY,
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
                        moon:RegisterForUpdates()
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
                        moon:RegisterForUpdates()
                    end,
                    name = i18n.styles.nSecunda,
                    width = "half",
                },
                {
                    type = "slider",
                    disabled = function()
                        return not settings:GetMoonIsVisible()
                    end,
                    min = settings:GetMoonMasserAttributes().dimension.height,
                    max = settings:GetMoonMasserAttributes().dimension.height * 5,
                    step = 5,
                    getFunc = function()
                        return settings:GetMoonDimension().height
                    end,
                    setFunc = function(value)
                        local width = settings:GetMoonDimension().width
                        settings:SetMoonDimension({
                            width = width,
                            height = value
                        })
                        moon:UpdatePositions()
                    end,
                    name = i18n.styles.nMoonHeight,
                    width = "half",
                },
                {
                    type = "slider",
                    disabled = function()
                        return not settings:GetMoonIsVisible()
                    end,
                    min = settings:GetMoonMasserAttributes().dimension.width,
                    max = settings:GetMoonMasserAttributes().dimension.width * 5,
                    step = 5,
                    getFunc = function()
                        return settings:GetMoonDimension().width
                    end,
                    setFunc = function(value)
                        local height = settings:GetMoonDimension().height
                        settings:SetMoonDimension({
                            width = value,
                            height = height,
                        })
                        moon:UpdatePositions()
                    end,
                    name = i18n.styles.nMoonWidth,
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
                        moon:RegisterForUpdates()
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
                    step = .01,
                    getFunc = function()
                        return settings:GetMoonBackgroundStrength()
                    end,
                    setFunc = function(value)
                        settings:SetMoonBackgroundStrength(value)
                        moon:RegisterForUpdates()
                    end,
                    name = i18n.styles.nBackgroundStrength,
                    width = "half",
                },
                {
                    type = "slider",
                    disabled = function()
                        return not settings:GetMoonIsVisible()
                    end,
                    min = 0,
                    max = 1,
                    step = .01,
                    getFunc = function()
                        return settings:GetMoonAlpha()
                    end,
                    setFunc = function(value)
                        settings:SetMoonAlpha(value)
                        moon:RegisterForUpdates()
                    end,
                    name = i18n.styles.nAlpha,
                    width = "half",
                },
                {
                    type = "header",
                    name = i18n.core.nHeadGeneral,
                },
                {
                    type = "slider",
                    min = 1,
                    max = 4,
                    step = .1,
                    getFunc = function()
                        return settings:GetScaleFactor()
                    end,
                    setFunc = function(value)
                        settings:SetScaleFactor(value)
                    end,
                    name = i18n.styles.nScaleFactor,
                    tooltip = i18n.styles.tScaleFactor,
                },

            }
        }
    end

    -- ----------------
    -- Feedback
    -- ----------------

    local function AddFeedback()
        if LibFeedback then
            local buttons =
            {
                { panel.feedback, i18n.feedback.nGitHub, false },
            }
            local worldName = GetWorldName()
            if worldName == "EU Megaserver" then
                table.insert(buttons, { 0, i18n.feedback.nMail, false })
                table.insert(buttons, { 5000, i18n.feedback.nLessGold, true })
                table.insert(buttons, { 50000, i18n.feedback.nMoreGold, true })
            end
            table.insert(buttons, { panel.donation, i18n.feedback.nRealGold, false })
            return LibFeedback:initializeFeedbackWindow(
                    Clock_TST,
                    const.NAME,
                    CLOCK_TST_MENU,
                    const.AUTHOR,
                    {12 , CLOCK_TST_MENU, 12 , -20, 20}, -- Anchor
                    buttons,
                    i18n.feedback.tFeedback
            )
        end
    end

    -- ----------------
    -- Visibility
    -- ----------------

    local function ShowInMenu()
        CALLBACK_MANAGER:RegisterCallback("LAM-PanelOpened",
                function(libPanel)
                    if libPanel == CLOCK_TST_MENU then
                        GAME_MENU_SCENE:AddFragment(Clock_TST.TIME_FRAGMENT)
                        GAME_MENU_SCENE:AddFragment(Clock_TST.MOON_FRAGMENT)
                    end
                end
        )
        CALLBACK_MANAGER:RegisterCallback("LAM-PanelClosed",
                function(libPanel)
                    if libPanel == CLOCK_TST_MENU then
                        GAME_MENU_SCENE:RemoveFragment(Clock_TST.TIME_FRAGMENT)
                        GAME_MENU_SCENE:RemoveFragment(Clock_TST.MOON_FRAGMENT)
                    end
                end
        )
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
        AddBooleans(),
        AddStyles(),
    }
    AddFeedback()

    LAM:RegisterOptionControls(const.NAME, data)

    ShowInMenu()
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