--[[--------------------------------------------
    Project:    Clock - Tamriel Standard Time
    Author:     Arne Rantzen (Tyx)
    Created:    2020-01-22
    Updated:    2020-02-19
    License:    GPL-3.0
--------------------------------------------]]--

Clock_TST = Clock_TST or {}
Clock_TST.DEBUG = true

--- Constant table with all settings for Clock
function Clock_TST.CONSTANTS()
    local lang = GetCVar("Language.2")
    return {
        NAME = "Clock",
        DISPLAY = "Clock - Tamriel Standard Time",
        VERSION = "2.0.0",
        SAVED_VERSION = 1,
        SAVED_NAME = "Clock_Settings",
        Menu = {
            time = {
                -- Possible replace: esoui/fontdefs/keyboard/defaultfontdefs_keyboard.xml
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
                    "Futura Condensed Light",
                    "ProseAntique",
                    "Skyrim Handwritten",
                    "Trajan Pro",
                    "Univers 55",
                    "Univers 57",
                    "Univers 67",
                },
                BACKGROUND = {
                    -- "Munge",
                    "Brush",
                    "Phase",
                    "Splash",
                    "Stroke",
                },
            },
            moon = {
                MASSER = {
                    "Crimson",
                    "Pale",
                },
                SECUNDA = {
                    "Ghost",
                },
                BACKGROUND = {
                    "Brush",
                    "Splash",
                    "Solid",
                },
            },
        },
        UI = {
            STYLES = {
                normal = "FONT_STYLE_NORMAL",
                outline = "FONT_STYLE_OUTLINE",
                thick_outline = "FONT_STYLE_OUTLINE_THICK",
                shadow = "FONT_STYLE_SHADOW",
                thick_shadow = "FONT_STYLE_SOFT_SHADOW_THICK",
                thin_shadow = "FONT_STYLE_SOFT_SHADOW_THIN",
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
                    -- ["Munge"] = "EsoUI/Art/Performance/StatusMeterMunge.dds",
                    ["Brush"] = {
                        path = "Clock\\Asset\\Texture\\Time\\Background\\Brush\\",
                        background = "background.dds",
                        hover = "hover.dds",
                    },
                    ["Phase"] = {
                        path = "Clock\\Asset\\Texture\\Time\\Background\\Phase\\",
                        background = "background.dds",
                        hover = "hover.dds",
                    },
                    ["Splash"] = {
                        path = "Clock\\Asset\\Texture\\Time\\Background\\Splash\\",
                        background = "background.dds",
                        hover = "hover.dds",
                    },
                    ["Stroke"] = {
                        path = "Clock\\Asset\\Texture\\Time\\Background\\Stroke\\",
                        background = "background.dds",
                        hover = "hover.dds",
                    },
                },
                moon = {
                    ["Brush"] = {
                        path = "Clock\\Asset\\Texture\\Time\\Background\\Brush\\",
                        background = "background.dds",
                        hover = "hover.dds",
                    },
                    ["Splash"] = {
                        path = "Clock\\Asset\\Texture\\Time\\Background\\Splash\\",
                        background = "background.dds",
                        hover = "hover.dds",
                    },
                    ["Solid"] = {
                        path = "Clock\\Asset\\Texture\\Moon\\Background\\Solid\\",
                        background = "background.dds",
                        hover = "hover.dds",
                    },
                },
            },
            MOONS = {
                masser = {
                    ["Crimson"] = {
                        path = "Clock\\Asset\\Texture\\Moon\\Masser\\Crimson\\",
                        waxingCrescent = "masser_one_wax_256x256.dds",
                        firstQuarter = "masser_half_wax_256x256.dds",
                        waxingGibbous = "masser_three_wax_256x256.dds",
                        full = "masser_full_256x256.dds",
                        waningGibbous = "masser_three_wan_256x256.dds",
                        thirdQuarter = "masser_half_wan_256x256.dds",
                        waningCrescent = "masser_one_wan_256x256.dds",
                    },
                    ["Pale"] = {
                        path = "Clock\\Asset\\Texture\\Moon\\Masser\\Pale\\",
                        waxingCrescent = "masser_one_wax_256x256.dds",
                        firstQuarter = "masser_half_wax_256x256.dds",
                        waxingGibbous = "masser_three_wax_256x256.dds",
                        full = "masser_full_256x256.dds",
                        waningGibbous = "masser_three_wan_256x256.dds",
                        thirdQuarter = "masser_half_wan_256x256.dds",
                        waningCrescent = "masser_one_wan_256x256.dds",
                    },
                },
                secunda = {
                    ["Ghost"] = {
                        path = "Clock\\Asset\\Texture\\Moon\\Secunda\\Ghost\\",
                        waxingCrescent = "secunda_one_wax_256x256.dds",
                        firstQuarter = "secunda_half_wax_256x256.dds",
                        waxingGibbous = "secunda_three_wax_256x256.dds",
                        full = "secunda_full_256x256.dds",
                        waningGibbous = "secunda_three_wan_256x256.dds",
                        thirdQuarter = "secunda_half_wan_256x256.dds",
                        waningCrescent = "secunda_one_wan_256x256.dds",
                    }
                }
            },
        },
        Settings = {
            account = {
                SAVED_NAME = "account",
                DEFAULTS = {
                    saveAccountWide = true,
                }
            },
            booleans = {
                SAVED_NAME = "booleans",
                DEFAULTS = {
                    core = {
                        timeAndMoonAreLinked = true,
                        hideInFight = true,
                        onlyShowOnMap = false,
                    },
                    time = {
                        isVisible = true,
                        isMovable = true,
                        isMouseEnabled = true,
                        hasBackground = true,
                        hasTooltip = true,
                        scaleWhenHover = false,
                        highlightWhenHover = true,

                        hasUSFormat = lang == "en" or lang == "jp",
                        hasJapFormat = lang == "jp", -- if [hasUSFormat] then 12 am <=> pm
                        addZero = lang ~= "en", -- show 0[0-9] instead of [0-9]

                        hasLoreDate = true,
                        hasFakeDate = false,
                        hasRealDate = true,
                    },
                    moon = {
                        isVisible = true,
                        isMovable = true,
                        isMouseEnabled = true,
                        hasBackground = true,
                        hasTooltip = true,
                        scaleWhenHover = true,
                        highlightWhenHover = false,
                    },
                },
            },
            styles = {
                SAVED_NAME = "styles",
                DEFAULTS = {
                    time = {
                        background = "Stroke",
                        backgroundStrength = .5,
                        format = "#A, #d #B #Y #X\n%A, %d %B %Y %X", -- "#A, #d #B #Y #X\n%A, %d %B %Y %X"
                        lineCount = 2, -- number of lines in format
                        colour = {
                            r = 0.77254909276962,
                            g = 0.7607843875885,
                            b = 0.61960786581039,
                            a = 1,
                        },
                        font = "ProseAntique",
                        style = "outline",
                        size = 20,
                    },
                    moon = {
                        background = "Solid",
                        backgroundStrength = 0.5,
                        masser = "Pale",
                        secunda = "Ghost",
                    },
                },
            },
            attributes = {
                SAVED_NAME = "attributes",
                DEFAULTS = {
                    core = {
                        scaleFactor = 1.1,
                    },
                    time = {
                        anchor = {
                            point = 3, -- TOPLEFT
                            relativeTo = GuiRoot,
                            relativePoint = nil,
                            offsetX = 100,
                            offsetY = 30,
                        },
                        dimension = {
                            width = 400,
                            height = 50,
                        },
                    },
                    moon = {
                        scale = 1,
                        anchor = {
                            point = 3, -- TOPLEFT
                            relativeTo = GuiRoot,
                            relativePoint = nil,
                            offsetX = 34,
                            offsetY = 30,
                        },
                        dimension = {
                            width = 130,
                            height = 90,
                        },
                        masser = {
                            anchor = {
                                point = 128, -- CENTER
                                relativeTo = Clock_TST_Moon,
                                relativePoint = 128, -- CENTER
                                offsetX = 0,
                                offsetY = 0,
                            },
                            dimension = {
                                width = 80,
                                height = 80,
                            },
                        },
                        secunda = {
                            anchor = {
                                point = 1, -- TOP
                                relativeTo = Clock_TST_Moon_Masser,
                                relativePoint = 8, -- RIGHT
                                offsetX = 0,
                                offsetY = 0,
                            },
                            dimension = {
                                width = 50,
                                height = 50,
                            },
                        },
                    },
                },
            },
        },
    }
end
