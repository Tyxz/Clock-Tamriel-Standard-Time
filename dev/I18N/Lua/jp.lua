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
						[1] = "モーンダス",
						[2] = "ティルダス",
						[3] = "ミダス",
						[4] = "トゥルダス",
						[5] = "フレダス",
						[6] = "ロレダス",
						[7] = "サンダス",
					},
					year = "2E ",
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
				pm = "午後",
				am = "午前",
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
				tSize = "Clockのサイズを変更します。",
				nScaleFactor = "Scale factor",
				tScaleFactor = "How much the item should increase when hovering.",
				nSize = "サイズ",
				tFormat = "You can write a symbol (# for lore, % for real) followed by a letter:",
				nSecunda = "Secunda's texture",
				nFormat = "Write your own format of the time and date",
				nColor = "色",
				tBackgroundOffset = "Offset to the calculated width of the background.",
				nMoonWidth = "Width of the moon distance",
				nSub = "見た目のオプション",
				nStyle = "スタイル",
				nBackgroundStrength = "Background strength",
				nFont = "フォント",
				nBackgroundOffset = "Background offset",
				tColor = "Clockの色を変更します。",
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
				tFont = "Clockのフォントを変更します。",
				tStyle = "Clockのスタイルを変更します。",
				nAlpha = "Visibility",
			},
			booleans = {
				nBackground = "背景の表示",
				nHoverScale = "Scale when hovering",
				tFake = "Will replace the day, month and week day in Tamriel with the real one but with Tamriel names.",
				nAddZero = "ゼロ追加",
				nTooltip = "Show tooltip when hovering",
				nFight = "Hide in fights",
				tAddZero = "桁の数字にゼロを追加します: 1:24 -> 01:24.",
				nLink = "Link the movements of the label with the moon",
				nJapanese = "真夜中を0時として表示",
				nSub = "設定のオン/オフ",
				tTimeBackground = "Clockの背景を追加します。",
				nMovable = "移動可能",
				nMap = "Only show on map",
				tMovable = "Clockが移動可能になります。",
				nMouseEnabled = "Interactable",
				wAffect = "This does only affect a custom format not #X or %X.",
				nHoverColour = "Highlight when hovering",
				nTimeVisible = "時間の表示",
				nMoonVisible = "月齢の表示",
				nFake = "偽伝承の日付を表示",
				nUSFormat = "12時間形式",
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