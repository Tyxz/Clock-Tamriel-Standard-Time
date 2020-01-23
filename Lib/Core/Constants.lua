--[[----------------------------------------
    Location:   Core/Constants.lua
    Author:     Arne Rantzen (Tyx)
    Created:    2020-01-22
    License:    GPL-3.0
----------------------------------------]]--

Clock_TST = Clock_TST or {}

local Constants = {
    NAME = "Clock",
    DISPLAY = "Clock - Tamriel Standard Time",
    VERSION = "2.0.0",
    SAVED_VERSION = 1,
    SAVED_NAME = "Clock_Settings",
    Menu = {
        STYLES = {
            "normal",
            "outline",
            "thick-outline",
            "shadow",
            "soft-shadow-thick",
            "soft-shadow-thin",
        },
        FONTS = {
            "Consolas",
            "Futura Condensed",
            "Futura Condensed Bold",
            "Fututra Condensed Light",
            "ProseAntique",
            "Skyrim Handwritten",
            "Trajan Pro",
            "Univers 55",
            "Univers 57",
            "Univers 67",
        },
    },
    UI = {
        FORMATS = {
            int = TIME_FORMAT_PRECISION_TWENTY_FOUR_HOUR,
            us = TIME_FORMAT_PRECISION_TWELVE_HOUR,
        },
        STYLES = {
            normal          = "FONT_STYLE_NORMAL",
            outline         = "FONT_STYLE_OUTLINE",
            thick_outtline  = "FONT_STYLE_OUTLINE_THICK",
            shadow          = "FONT_STYLE_SHADOW",
            thick_shadow    = "FONT_STYLE_SOFT_SHADOW_THICK",
            thin_shadow     = "FONT_STYLE_SOFT_SHADOW_THIN",
        },
        FONTS = {
            ["Consolas"]                = "EsoUI/Common/Fonts/consola.ttf",
            ["Futura Condensed"]        = "EsoUI/Common/Fonts/FTN57.otf",
            ["Futura Condensed Bold"]   = "EsoUI/Common/Fonts/FTN87.otf",
            ["Futura Condensed Light"]  = "EsoUI/Common/Fonts/FTN47.otf",
            ["ProseAntique"]            = "EsoUI/Common/Fonts/ProseAntiquePSMT.otf",
            ["Skyrim Handwritten"]      = "EsoUI/Common/Fonts/Handwritten_Bold.otf",
            ["Trajan Pro"]              = "EsoUI/Common/Fonts/trajanpro-regular.otf",
            ["Univers 55"]              = "EsoUI/Common/Fonts/univers55.otf",
            ["Univers 57"]              = "EsoUI/Common/Fonts/univers57.otf",
            ["Univers 67"]              = "EsoUI/Common/Fonts/univers67.otf",
        },
        BACKGROUNDS = {
            time = {
                munge = "EsoUI/Art/Performance/StatusMeterMunge.dds",
            },
            moon = {
                [25] = "Clock/Art/Moon/background_25.dds",
                [33] = "Clock/Art/Moon/background_33.dds",
                [50] = "Clock/Art/Moon/background_50.dds",
                [66] = "Clock/Art/Moon/background_66.dds",
                [75] = "Clock/Art/Moon/background_75.dds",
                [100] = "Clock/Art/Moon/background.dds",
            },
        },
        MOONS = {
            masser = {
                waxingCrescent      = "Clock/Art/Moon/masser_wax_cres.dds",
                firstQuarter        = "Clock/Art/Moon/masser_wax_half.dds",
                waxingGibbonus      = "Clock/Art/Moon/masser_wax_gib.dds",
                full                = "Clock/Art/Moon/masser_full.dds",
                waningGibbonus      = "Clock/Art/Moon/masser_wan_gib.dds",
                thirdQuarter        = "Clock/Art/Moon/masser_wan_half.dds",
                waningCrescent      = "Clock/Art/Moon/masser_wan_cres.dds",
            },
            secunda = {
                waxingCrescent      = "Clock/Art/Moon/secunda_wax_cres.dds",
                firstQuarter        = "Clock/Art/Moon/secunda_wax_half.dds",
                waxingGibbonus      = "Clock/Art/Moon/secunda_wax_gib.dds",
                full                = "Clock/Art/Moon/secunda_full.dds",
                waningGibbonus      = "Clock/Art/Moon/secunda_wan_gib.dds",
                thirdQuarter        = "Clock/Art/Moon/secunda_wan_half.dds",
                waningCrescent      = "Clock/Art/Moon/secunda_wan_cres.dds",
            }
        },
    },
    Settings = {
        booleans = {
            SAVED_NAME = "booleans",
            DEFAULTS = {
                time = {
                    isVisible = true,
                    isMovable = true,
                    isMouseEnabled = true,
                    hasBackground = true,

                    hasUSFormat = false,
                    hasJapanFormat = false, -- if [hasUSFormat] then 12 am <=> pm
                    fillUpNumber = true, -- show 0[0-9] instead of [0-9]
                    hasLoreDate = true,
                    hasFakeDate = false,
                    hasRealDate = false,

                    isLinkedToMoon = true,
                },
                moon = {
                    isVisible = true,
                    isMovable = true,
                    isMouseEnabled = true,
                    hasBackground = true,

                    isLinkedToTime = true,
                },
            },
        },
        styles = {
            SAVED_NAME = "styles",
            DEFAULTS = {
                time = {
                    background = "munge",
                    format = "_DDD, _D. _MMM _YY _hh:_mm:_ss",
                    lineCount = 2, -- number of lines in format
                    color = {
                        r = 1,
                        g = 1,
                        b = 1,
                        a = 0.75,
                    },
                    font = "ProseAntique",
                    style = "outline",
                    size = 24,
                },
                moon = {
                  background = 50
                },
            },
        },
        attributes = {
            SAVED_NAME = "attributes",
            DEFAULTS = {
                time = {
                    anchor = {
                        point = "TOPLEFT",
                        relativeTo = "GuiRoot",
                        relativePoint = "CENTER",
                        offsetX = 100,
                        offsetY = 20,
                    },
                    dimension = {
                        width = 300,
                        height = 70,
                    },
                    background = {
                        anchor = {
                            point = "CENTER",
                            relativeTo = "Clock_TST_Time",
                            relativePoint = "CENTER",
                            offsetX = 0,
                            offsetY = 0,
                        },
                        dimension = {
                            width = 600,
                            height = 256,
                        },
                    },
                    label = {
                        anchor = {
                            point = "CENTER",
                            relativeTo = "Clock_TST_Time",
                            relativePoint = "CENTER",
                            offsetX = 0,
                            offsetY = 0,
                        },
                        dimension = {
                            width = nil,
                            height = nil,
                        },
                    },
                },
                moon = {
                    anchor = {
                        point = "RIGHT",
                        relativeTo = "Clock_TST_Time",
                        relativePoint = "LEFT",
                        offsetX = 18,
                        offsetY = 8,
                    },
                    dimension = {
                        width = 84,
                        height = 72,
                    },
                    masser = {
                        anchor = {
                            point = "CENTER",
                            relativeTo = "Clock_TST_Moon",
                            relativePoint = "CENTER",
                            offsetX = 0,
                            offsetY = 0,
                        },
                        dimension = {
                            width = 64,
                            height = 64,
                        },
                    },
                    secunda = {
                        anchor = {
                            point = "TOP",
                            relativeTo = "Clock_TST_Moon_Masser",
                            relativePoint = "RIGHT",
                            offsetX = 0,
                            offsetY = 0,
                        },
                        dimension = {
                            width = 40,
                            height = 40,
                        },
                    },
                },
            },
        },
    },
}

-- Makes a table read-only
-- Source: http://andrejs-cainikovs.blogspot.com/2009/05/lua-constants.html
-- @param tbl any table to be made read-only
-- @return a read-only table
local function Protect(tbl)
    return setmetatable({}, {
        __index = tbl,
        __newindex = function(t, key, value)
            error("attempting to change constant " ..
                    tostring(key) .. " to " .. tostring(value), 2)
        end,
        __metatable = false,
    })
end

-- Makes a table read-only recursively
-- @param tbl any table to be made read-only
-- @return a recursive read-only table
local function DeepProtect(tbl)
    for k, v in pairs(tbl) do
        if type(v) == "table" then
            tbl[k] = DeepProtect(v)
        end
    end
    return Protect(tbl)
end

--- @todo make read-only
Clock_TST.CONSTANTS = Constants
