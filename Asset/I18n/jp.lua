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
        error = {
            library = "Could not connect to the LibClockTST library."
        },
        menu = {
            core = {
                nHeadTime = "Time and date",
                nHeadMoon = "Moon",
                nHeadGeneral = "General",
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
                nFake = "偽伝承の日付を表示", -- sFLDate
                tFake = "Will replace the day, month and week day in Tamriel with the real one but with Tamriel names.",
                nHoverScale = "Scale when hovering",
                nHoverColour = "Highlight when hovering",
                nMoonVisible = "月齢の表示", -- sMoon
                nFight = "Hide in fights",
                nMap = "Only show on map",
                nLink = "Link the movements of the label with the moon",
            },
            styles = {
                nSub = "見た目のオプション", -- look
                nFormat = "Write your own format of the time and date",
                tFormat = "You can write a symbol (# for lore, % for real) followed by a letter:",
                dFormat = "%A\t\t full weekday name [Friday]\n"
                        .. "%a\t\t for the abbreviated [Fri]\n"
                        .. "%B\t\t full month name [March]\n"
                        .. "%b\t\t for the abbreviated [Mar]\n"
                        .. "%d\t\t day of the month\n"
                        .. "%H\t\t hour\n"
                        .. "%M\t\t minute\n"
                        .. "%m\t\t month\n"
                        .. "%p\t\t either \"am\" or \"pm\"\n"
                        .. "%S\t\t second\n"
                        .. "%w\t\t weekday [1-7 = Monday-Sunday]\n"
                        .. "%x\t\t date [17.02.20]\n"
                        .. "%X\t\t time [23:48:10 | 11:48 PM]\n"
                        .. "%Y\t\t full year [2020]\n"
                        .. "%y\t\t shortened year [20]",
                nColor = "色", -- nColPick
                tColor = "Clockの色を変更します。", -- tColPick
                nFont = "フォント", -- nFont
                tFont = "Clockのフォントを変更します。", -- tFont
                nStyle = "スタイル", -- nStyle
                tStyle = "Clockのスタイルを変更します。", -- tStyle
                nSize = "サイズ", -- nSize
                tSize = "Clockのサイズを変更します。",
                nBackground = "Background texture",
                nBackgroundStrength = "Background strength",
                nBackgroundOffset = "Background offset",
                tBackgroundOffset = "Offset to the calculated width of the background.",
                nMasser = "Masser's texture",
                nSecunda = "Secunda's texture",
                nMoonWidth = "Width of the moon distance",
                nMoonHeight = "Height of the moon distance",
                nAlpha = "Visibility",
                nScaleFactor = "Scale factor",
                tScaleFactor = "How much the item should increase when hovering."
            },
        },
        view = {
            core = {
                menu = {
                    tooltip = "Show tooltip",
                    background = "Show background",
                    movable = "Is movable",
                    link = "Link the movement of the moon to the time",
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
