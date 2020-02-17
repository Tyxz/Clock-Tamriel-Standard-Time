--[[--------------------------------------------
    Project:    Clock - Tamriel Standard Time
    Author:     Arne Rantzen (Tyx)
    Created:    2020-01-22
    Updated:    2020-02-11
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
                tAccount = "Use the same settings for all characters"
            },
            booleans = {
                nSub = "On/Off Settings", -- togOpt
                nTimeVisible = "Show Time", -- sTime
                nMouseEnabled = "Interactable",
                nMovable = "Movable", -- sMove
                tMovable = "Select if the Clock should be movable.", -- tMove
                nTooltip = "Show tooltip when hovering",
                nBackground = "Show background", -- nsBg
                tTimeBackground = "Adds a background behind the Clock.", -- tsBg
                nAddZero = "Add zeros", -- sNum
                tAddZero = "Add zeros before a single number: 1:24 -> 01:24", -- tNum
                nUSFormat = "12h format", -- sFormat,
                nJapanese = "Show midnight as 0", --sJap
                wAffect = "This does only affect a custom format not #X or %X",
                nFake = "Show fake lore Date", -- sFLDate
                tFake = "Will replace the day, month and week day in Tamriel with the real one but with Tamriel names.",
                nMoonVisible = "Show Moon", -- sMoon
                nLink = "Link the movements from the label with the moon",
            },
            styles = {
                nSub = "Look Options", -- look
                nFormat = "Write your own format of the time and date",
                tFormat = "You can write a symbol (# for lore, % for real) followed by a letter:",
                dFormat = "%A\t\t full weekday name\n"
                        .. "%b\t\t for the abbreviated\n"
                        .. "%B\t\t full month name\n"
                        .. "%b\t\t for the abbreviated\n"
                        .. "%d\t\t day of the month\n"
                        .. "%H\t\t hour\n"
                        .. "%M\t\t minute\n"
                        .. "%m\t\t month\n"
                        .. "%p\t\t either \"am\" or \"pm\"\n"
                        .. "%S\t\t second\n"
                        .. "%w\t\t weekday [1-7 = Monday-Sunday]\n"
                        .. "%x\t\t date (e.g., 17.02.20)\n"
                        .. "%X\t\t time (e.g., 23:48:10)\n"
                        .. "%Y\t\t full year\n"
                        .. "%y\t\t two-digit year ",
                nColor = "Color", -- nColPick
                tColor = "Change the color of the Clock.", -- tColor
                nFont = "Font", -- nFont
                tFont = "Change the font of the Clock.", -- tFont
                nStyle = "Style", -- nStyle
                tStyle = "Change the style of the Clock.", -- tStyle
                nSize = "Size", -- nSize
                tSize = "Change the size of the Clock.", -- tSize
                nBackground = "Background texture",
                nBackgroundStrength = "Background strength",
                nMasser = "Masser's texture",
                nSecunda = "Secunda's texture",
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
                am = "am",
                pm = "pm",
            },
            date = {
                lore = {
                    week = {
                        [1] = "Morndas",
                        [2] = "Tirdas",
                        [3] = "Middas",
                        [4] = "Turdas",
                        [5] = "Fredas",
                        [6] = "Loredas",
                        [7] = "Sundas",
                    },
                    months = {
                        [1] = "Mornings Star",
                        [2] = "Sun's Dawn",
                        [3] = "First Seed",
                        [4] = "Rain's Hand",
                        [5] = "Second Seed",
                        [6] = "Midyear",
                        [7] = "Sun's Height",
                        [8] = "Last Seed",
                        [9] = "Hearthfire",
                        [10] = "Frostfall",
                        [11] = "Sun's Dusk",
                        [12] = "Evening Star",
                    },
                    year = "2E",
                },
                real = {
                    week = {
                        [1] = "Monday",
                        [2] = "Tuesday",
                        [3] = "Wednesday",
                        [4] = "Thursday",
                        [5] = "Friday",
                        [6] = "Saturday",
                        [7] = "Sunday",
                    },
                    months = {
                        [1] = "January",
                        [2] = "February",
                        [3] = "March",
                        [4] = "April",
                        [5] = "May",
                        [6] = "June",
                        [7] = "July",
                        [8] = "August",
                        [9] = "September",
                        [10] = "October",
                        [11] = "November",
                        [12] = "December",
                    },
                },
            },
        }
    }
end
