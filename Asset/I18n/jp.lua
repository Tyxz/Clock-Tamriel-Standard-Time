--[[--------------------------------------------
    Project:    Clock - Tamriel Standard Time
    Author:     Arne Rantzen (Tyx)
    Created:    2020-02-18
    Updated:    2020-02-18
    License:    GPL-3.0
--------------------------------------------]]--

Clock_TST = Clock_TST or {}
function Clock_TST.I18N()
    return {
        bindings = {
            nToggle = "Toggle visibility",
            nToggleTime = "Toggle date visibility",
            nToggleMoon = "Toggle moon visibility"
        },
        error = {
            library = "Could not connect to the LibClockTST library."
        },
        menu = {
            core = {
                nHeadTime = "Time and date",
                nHeadMoon = "Moon",
                nHeadGeneral = "General",
                nHeadDebug = "Debug",
            },
            presets = {
                nPreset = "Preset",
                wPreset = "This will replace your current settings with a preset",
                nSave = "Save",
                wSave = "This will overwrite you current preset.",
                nDelete = "Delete",
                wDelete = "This will delete your current preset.",
                nCurrent = "Current preset",
            },
            account = {
                nAccount = "Synchronize settings",
                tAccount = "Use the same settings for all characters."
            },
            booleans = {
                nSub = "設定のオン/オフ", -- togOpt
                nTimeVisible = "時間の表示", -- sTime
                nMouseEnabled = "Interactable",
                nMovable = "移動可能", -- sMove
                tMovable = "Clockが移動可能になります。", -- tMove
                nTooltip = "Show tooltip when hovering",
                nBackground = "背景の表示", -- nsBg
                tTimeBackground = "Clockの背景を追加します。", -- tsBg
                nAddZero = "ゼロ追加", -- sNum
                tAddZero = "桁の数字にゼロを追加します: 1:24 -> 01:24.", -- tNum
                nUSFormat = "12時間形式", -- sFormat,
                nJapanese = "真夜中を0時として表示", --sJap
                wAffect = "This does only affect a custom format not #X or %X.",
                nHoverScale = "Scale when hovering",
                nHoverColour = "Highlight when hovering",
                nMoonVisible = "月齢の表示", -- sMoon
                nFight = "Hide in fights",
                nMap = "Only show on map",
                nLink = "Link the movements of the label with the moon",
                nGroup = "Hide in groups",
                nDebug = "Debug mode",
            },
            styles = {
                nSub = "見た目のオプション", -- look
                nFormat = "Write your own format of the time and date",
                tFormat = "You can write a symbol (# for lore, % for real and $ for fake lore) followed by a letter:",
                dFormatDate = "%A\t\t full weekday name [Friday]\n"
                        .. "%a\t\t for the abbreviated [Fri]\n"
                        .. "%B\t\t full month name [March]\n"
                        .. "%b\t\t for the abbreviated [Mar]\n"
                        .. "%d\t\t day of the month\n"
                        .. "%m\t\t month\n"
                        .. "%w\t\t weekday [1-7 = Monday-Sunday]\n"
                        .. "%x\t\t date [17.02.20]\n"
                        .. "%Y\t\t full year [2020]\n"
                        .. "%y\t\t shortened year [20]",
                dFormatTime = "%H\t\t hour\n"
                        .. "%M\t\t minute\n"
                        .. "%p\t\t either \"am\" or \"pm\"\n"
                        .. "%S\t\t second\n"
                        .. "%X\t\t time [23:48:10 | 11:48 PM]\n",
                tFormatClock = "Clock label format",
                tFormatTooltip = "Clock tooltip format",
                nColor = "色", -- nColPick
                tColor = "Clockの色を変更します。", -- tColPick
                nFont = "フォント", -- nFont
                tFont = "Clockのフォントを変更します。", -- tFont
                nStyle = "スタイル", -- nStyle
                tStyle = "Clockのスタイルを変更します。", -- tStyle
                nSize = "サイズ", -- nSize
                tSize = "Clockのサイズを変更します。",
                nBackground = "Background texture",
                nBackgroundColour = "Background colour",
                nBackgroundHoverColour = "Background hover colour",
                nBackgroundOffsetX = "Background width offset",
                tBackgroundOffsetX = "Offset to the calculated width of the background.",
                nBackgroundOffsetY = "Background height offset",
                tBackgroundOffsetY = "Offset to the calculated height of the background.",
                nMasser = "Masser's texture",
                nSecunda = "Secunda's texture",
                nMoonWidth = "Width of the moon distance",
                nMoonHeight = "Height of the moon distance",
                nScale = "Scaling",
                nAlpha = "Visibility",
                nScaleFactor = "Scale factor",
                tScaleFactor = "How much the item should increase when hovering."
            },
            feedback = {
                tFeedback = "If you found a bug, have a request or a suggestion, or simply wish to donate,\n"
                        .. "you are welcome to send me an email.",
                nMail = "In-game Feedback",
                nGitHub = "Report an issue",
                nLessGold = "Small donation",
                nMoreGold = "Larger donation",
                nRealGold = "Real donation"
            }
        },
        view = {
            core = {
                menu = {
                    tooltip = "Show tooltip",
                    background = "Show background",
                    movable = "Is movable",
                    link = "Link the movement of the moon to the time",
                    open = "Open settings menu",
                    scale = "Reset scaling",
                },
            },
            moon = {
                tooltip = {
                    full = "The moon is full right now.\n"
                            .. "It will stay that way for <<1 [less than one hour/one hour/$d hours]>>.\n",
                    isWaxing = "The moon is <<1>>% full and is waxing.\n"
                            .. "He needs <<2 [less than one hour/one hour/$d hours]>>,\n"
                            .. "to reach its full glory.\n",
                    isWaning = "The moon is <<1>>% full and is waning.\n"
                            .. "He needs <<2>> hours again,\n"
                            .. "to reach its full glory.\n",
                    duration = "That is <<1 [less than a day/a day/$d days]>> in Tamriel.",
                }
            },
            time = {
                am = "午前",
                pm = "午後",
            },
            date = {
                lore = {
                    week = {
                        [1] = "モーンダス",
                        [2] = "ティルダス",
                        [3] = "ミダス",
                        [4] = "トゥルダス",
                        [5] = "フレダス",
                        [6] = "ロレダス",
                        [7] = "サンダス",
                    },
                    months = {
                        [1] = "暁星の月",
                        [2] = "薄明の月",
                        [3] = "蒔種の月",
                        [4] = "恵雨の月",
                        [5] = "栽培の月",
                        [6] = "真央の月",
                        [7] = "南中の月",
                        [8] = "収穫の月",
                        [9] = "炉火の月",
                        [10] = "降霜の月",
                        [11] = "黄昏の月",
                        [12] = "星霜の月",
                    },
                    year = "2E ",
                },
                real = {
                    week = {
                        [1] = "月曜日",
                        [2] = "火曜日",
                        [3] = "水曜日",
                        [4] = "木曜日",
                        [5] = "金曜日",
                        [6] = "土曜日",
                        [7] = "日曜日",
                    },
                    months = {
                        [1] = "1月",
                        [2] = "2月",
                        [3] = "3月",
                        [4] = "4月",
                        [5] = "5月",
                        [6] = "6月",
                        [7] = "7月",
                        [8] = "8月",
                        [9] = "9月",
                        [10] = "10月",
                        [11] = "11月",
                        [12] = "12月",
                    },
                },
            },
        }
    }
end
