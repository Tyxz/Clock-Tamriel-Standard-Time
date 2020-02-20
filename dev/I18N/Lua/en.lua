--[[--------------------------------------------
    Author:     Arne Rantzen (Tyx)
    Created:    2020-01-22
    Updated:    2020-02-20
    License:    GPL-3.0
--------------------------------------------]]--

Clock_TST = Clock_TST or {}
function Clock_TST.I18N()
	return {
		view = {
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
					year = "2E",
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
			core = {
				menu = {
					movable = "Is movable",
					link = "Link the movement of the moon to the time",
					tooltip = "Show tooltip",
					open = "Open settings menu",
					background = "Show background",
				},
			},
			time = {
				pm = "P.M.",
				am = "A.M.",
			},
			moon = {
				tooltip = {
					isWaning = "The moon is <<1>>% full and is waning.\n"
						.. "He needs <<2>> hours again,\n"
						.. "to reach its full glory.\n"
						.. "",
					duration = "That is <<1 [less than a day/a day/$d days]>> in Tamriel.",
					full = "The moon is full right now.\n"
						.. "It will stay that way for <<1 [less than one hour/one hour/$d hours]>>.\n"
						.. "",
					isWaxing = "The moon is <<1>>% full and is waxing.\n"
						.. "He needs <<2 [less than one hour/one hour/$d hours]>>,\n"
						.. "to reach its full glory.\n"
						.. "",
				},
			},
		},
		error = {
			library = "Could not connect to the LibClockTST library.",
		},
		menu = {
			feedback = {
				nLessGold = "Small donation",
				nMoreGold = "Larger donation",
				nRealGold = "Real donation",
				nMail = "In-game Feedback",
				nGitHub = "Report an issue",
				tFeedback = "If you found a bug, have a request or a suggestion, or simply wish to donate,\n"
					.. "you are welcome to send me an email.",
			},
			styles = {
				tSize = "Change the font-size of the Clock.",
				nScaleFactor = "Scale factor",
				tScaleFactor = "How much the item should increase when hovering.",
				nSize = "Size",
				tFormat = "You can write a symbol (# for lore, % for real) followed by a letter:",
				nSecunda = "Secunda's texture",
				nFormat = "Write your own format of the time and date",
				nColor = "Color",
				tBackgroundOffset = "Offset to the calculated width of the background.",
				nMoonWidth = "Width of the moon distance",
				nSub = "Look Options",
				nStyle = "Style",
				nBackgroundStrength = "Background strength",
				nFont = "Font",
				nBackgroundOffset = "Background offset",
				tColor = "Change the color of the Clock.",
				dFormat = "%A		 full weekday name [Friday]\n"
					.. "%a		 for the abbreviated [Fri]\n"
					.. "%B		 full month name [March]\n"
					.. "%b		 for the abbreviated [Mar]\n"
					.. "%d		 day of the month\n"
					.. "%H		 hour\n"
					.. "%M		 minute\n"
					.. "%m		 month\n"
					.. "%p		 either \"am\" or \"pm\"\n"
					.. "%S		 second\n"
					.. "%w		 weekday [1-7 = Monday-Sunday]\n"
					.. "%x		 date [17.02.20]\n"
					.. "%X		 time [23:48:10 | 11:48 PM]\n"
					.. "%Y		 full year [2020]\n"
					.. "%y		 shortened year [20]",
				nBackground = "Background texture",
				nMasser = "Masser's texture",
				nMoonHeight = "Height of the moon distance",
				tFont = "Change the font of the Clock.",
				tStyle = "Change the style of the Clock.",
				nAlpha = "Visibility",
			},
			booleans = {
				nBackground = "Show background",
				nHoverScale = "Scale when hovering",
				tFake = "Will replace the day, month and week day in Tamriel with the real one but with Tamriel names.",
				nAddZero = "Add zeros",
				nTooltip = "Show tooltip when hovering",
				nFight = "Hide in fights",
				tAddZero = "Add zeros before a single number: 1:24 -> 01:24.",
				nLink = "Link the movements of the label with the moon",
				nJapanese = "Show midnight as 0",
				nSub = "On/Off Settings",
				tTimeBackground = "Adds a background behind the Clock.",
				nMovable = "Movable",
				nMap = "Only show on map",
				tMovable = "Select if the Clock should be movable.",
				nMouseEnabled = "Interactable",
				wAffect = "This does only affect a custom format not #X or %X.",
				nHoverColour = "Highlight when hovering",
				nTimeVisible = "Show Time",
				nMoonVisible = "Show Moon",
				nFake = "Show fake lore Date",
				nUSFormat = "12h format",
			},
			core = {
				nHeadTime = "Time and date",
				nHeadMoon = "Moon",
				nHeadGeneral = "General",
			},
			account = {
				nAccount = "Synchronize settings",
				tAccount = "Use the same settings for all characters.",
			},
		},
	}
end