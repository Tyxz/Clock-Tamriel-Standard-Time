--[[--------------------------------------------
    Project:    Clock - Tamriel Standard Time
    Author:     Arne Rantzen (Tyx)
    Created:    2020-01-22
    Updated:    2020-02-11
    License:    GPL-3.0
--------------------------------------------]]--

Clock_TST = Clock_TST or {}
function Clock_TST.CONSTANTS()
    return {
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
                "Futura Condensed Light",
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
                us  = TIME_FORMAT_PRECISION_TWELVE_HOUR,
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
                    [25]    = "Clock\\Asset\\Texture\\Moon\\Background\\background_25.dds",
                    [33]    = "Clock\\Asset\\Texture\\Moon\\Background\\background_33.dds",
                    [50]    = "Clock\\Asset\\Texture\\Moon\\Background\\background_50.dds",
                    [66]    = "Clock\\Asset\\Texture\\Moon\\Background\\background_66.dds",
                    [75]    = "Clock\\Asset\\Texture\\Moon\\Background\\background_75.dds",
                    [100]   = "Clock\\Asset\\Texture\\Moon\\Background\\background.dds",
                },
            },
            MOONS = {
                masser = {
                    waxingCrescent  = "Clock\\Asset\\Texture\\Moon\\Masser\\masser_one_wax_256x256.dds",
                    firstQuarter    = "Clock\\Asset\\Texture\\Moon\\Masser\\masser_half_wax_256x256.dds",
                    waxingGibbous   = "Clock\\Asset\\Texture\\Moon\\Masser\\masser_three_wax_256x256.dds",
                    full            = "Clock\\Asset\\Texture\\Moon\\Masser\\masser_full_256x256.dds",
                    waningGibbous   = "Clock\\Asset\\Texture\\Moon\\Masser\\masser_three_wan_256x256.dds",
                    thirdQuarter    = "Clock\\Asset\\Texture\\Moon\\Masser\\masser_half_wan_256x256.dds",
                    waningCrescent  = "Clock\\Asset\\Texture\\Moon\\Masser\\masser_one_wan_256x256.dds",
                },
                secunda = {
                    waxingCrescent  = "Clock\\Asset\\Texture\\Moon\\Secunda\\secunda_one_wax_256x256.dds",
                    firstQuarter    = "Clock\\Asset\\Texture\\Moon\\Secunda\\secunda_half_wax_256x256.dds",
                    waxingGibbous   = "Clock\\Asset\\Texture\\Moon\\Secunda\\secunda_three_wax_256x256.dds",
                    full            = "Clock\\Asset\\Texture\\Moon\\Secunda\\secunda_full_256x256.dds",
                    waningGibbous   = "Clock\\Asset\\Texture\\Moon\\Secunda\\secunda_three_wan_256x256.dds",
                    thirdQuarter    = "Clock\\Asset\\Texture\\Moon\\Secunda\\secunda_half_wan_256x256.dds",
                    waningCrescent  = "Clock\\Asset\\Texture\\Moon\\Secunda\\secunda_one_wan_256x256.dds",
                }
            },
        },
        Settings = {
            account = {
                SAVED_NAME = "account",
                DEFAULTS = {
                    saveAccountWide     = true,
                }
            },
            booleans = {
                SAVED_NAME = "booleans",
                DEFAULTS = {
                    time = {
                        isVisible       = true,
                        isMovable       = true,
                        isMouseEnabled  = true,
                        hasBackground   = true,

                        hasUSFormat     = false,
                        hasJapanFormat  = false, -- if [hasUSFormat] then 12 am <=> pm
                        fillUpNumber    = true, -- show 0[0-9] instead of [0-9]
                        hasLoreDate     = true,
                        hasFakeDate     = false,
                        hasRealDate     = false,

                        isLinkedToMoon  = true,
                    },
                    moon = {
                        isVisible       = true,
                        isMovable       = true,
                        isMouseEnabled  = true,
                        hasBackground   = true,

                        isLinkedToTime  = true,
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
                    core = {
                        scale_factor = 10,
                    },
                    time = {
                        anchor = {
                            point = 3, -- TOPLEFT
                            relativeTo = GuiRoot,
                            relativePoint = nil,
                            offsetX = 100,
                            offsetY = 20,
                        },
                        dimension = {
                            width = 300,
                            height = 70,
                        },
                        background = {
                            anchor = {
                                point = 128, -- CENTER
                                relativeTo = "Clock_TST_Time",
                                relativePoint = 128, -- CENTER
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
                                point = 128, -- CENTER
                                relativeTo = Clock_TST_Time,
                                relativePoint = 128, -- CENTER
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
                            point = 3, -- TOPLEFT
                            relativeTo = GuiRoot,
                            relativePoint = nil,
                            offsetX = 34,
                            offsetY = 30,
                        },
                        dimension = {
                            width = 84,
                            height = 72,
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
                                width = 64,
                                height = 64,
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
                                width = 40,
                                height = 40,
                            },
                        },
                    },
                },
            },
        },
    }
end
