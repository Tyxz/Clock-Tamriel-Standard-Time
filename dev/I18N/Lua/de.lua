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
					year = "2Ä",
					months = {
						[1] = "Morgenstern",
						[2] = "Sonnenaufgang",
						[3] = "Erste Saat",
						[4] = "Regenhand",
						[5] = "Zweite Saat",
						[6] = "Jahresmitte",
						[7] = "Sonnenhöhe",
						[8] = "Letzte Saat",
						[9] = "Herzfeuer",
						[10] = "Eisherbst",
						[11] = "Sonnenuntergang",
						[12] = "Abendstern",
					},
				},
				real = {
					week = {
						[1] = "Montag",
						[2] = "Dienstag",
						[3] = "Mittwoch",
						[4] = "Donnerstag",
						[5] = "Freitag",
						[6] = "Samstag",
						[7] = "Sonntag",
					},
					months = {
						[1] = "Januar",
						[2] = "Februar",
						[3] = "März",
						[4] = "April",
						[5] = "Mai",
						[6] = "Juni",
						[7] = "Juli",
						[8] = "August",
						[9] = "September",
						[10] = "Oktober",
						[11] = "November",
						[12] = "Dezember",
					},
				},
			},
			core = {
				menu = {
					movable = "Ist beweglich",
					link = "Die Bewegung des Mondes mit der Zeit verknüpfen",
					tooltip = "Tooltip anzeigen",
					open = "Einstellungsmenü öffnen",
					background = "Hintergrund anzeigen",
				},
			},
			time = {
				pm = "P.M.",
				am = "A.M.",
			},
			moon = {
				tooltip = {
					isWaning = "Der Mond ist zu <<1>>% voll und nimmt ab.\n"
						.. "Er wird wieder <<2>> Stunden brauchen,\n"
						.. "um seine volle Pracht zu erreichen.\n"
						.. "",
					duration = "Das <<1[ist weniger als ein Tag/ist ein Tag/sind $d Tage]>> in Tamriel.",
					full = "Der Mond ist gerade voll.\n"
						.. "Er wird so für <<1 [weniger als eine Stunde/eine Stunde/$d Stunden]>> bleiben.\n"
						.. "",
					isWaxing = "Der Mond ist zu <<1>>% voll und nimmt zu.\n"
						.. "Er wird <<2[weniger als eine Stunde/eine Stunde/$d Stunden]>> brauchen,\n"
						.. "um seine volle Pracht zu erreichen.\n"
						.. "",
				},
			},
		},
		error = {
			library = "Konnte nicht mit der LibClockTST Bibliothek verbinden.",
		},
		menu = {
			feedback = {
				nLessGold = "Kleine Spende",
				nMoreGold = "Größere Spende",
				nRealGold = "Echte Spende",
				nMail = "In-Game-Feedback",
				nGitHub = "Ein Problem melden",
				tFeedback = "Wenn du einen Fehler gefunden, eine Anfrage oder einen Vorschlag hast,\n"
					.. "oder einfach nur spenden möchtest, kannst du mir gerne eine Mail schicken.",
			},
			styles = {
				tSize = "Verändere die Schriftgröße der Clock.",
				nScaleFactor = "Skalierungsfaktor",
				tScaleFactor = "Wie stark sich der Posten beim Hovern erhöhen sollte.",
				nSize = "Größe",
				tFormat = "Du kannst ein Symbol (# für Geschichte, % für Realität) gefolgt von einem Buchstaben schreiben:",
				nSecunda = "Die Textur von Secunda",
				nFormat = "Schreibe dein eigenes Format der Zeit und des Datums",
				nColor = "Farbe",
				tBackgroundOffset = "Versatz der berechneten Weite des Hintergrundes.",
				nMoonWidth = "Breite des Mondabstands",
				nSub = "Aussehen Einstellungen",
				nStyle = "Design",
				nBackgroundStrength = "Stärke des Hintergrunds",
				nFont = "Schriftart",
				nBackgroundOffset = "Hintergrund Versatz",
				tColor = "Verändere die Farbe der Clock.",
				dFormat = "%A		 voller Wochentagsname [Freitag]\n"
					.. "%a		 für den abgekürzten [Fre]\n"
					.. "%B		 vollständiger Monatsname [März]\n"
					.. "%b		 für den abgekürzten [Mer]\n"
					.. "%d		 Tag des Monats\n"
					.. "%H		 Stunde\n"
					.. "%M		 Minute\n"
					.. "%m		 Monat\n"
					.. "%p		 entweder \"am\" oder \"pm\"\n"
					.. "%S		 Sekunde\n"
					.. "%w		 Wochentag [1-7 = Montag-Sonntag]\n"
					.. "%x		 Datum [17.02.20]\n"
					.. "%X		 Zeit [23:48:10 | 11:48 PM]\n"
					.. "%Y		 ganzes Jahr [2020]\n"
					.. "%y		 verkürztes Jahr [20]",
				nBackground = "Textur des Hintergrunds",
				nMasser = "Die Textur von Masser",
				nMoonHeight = "Höhe des Mondabstands",
				tFont = "Verändere die Schriftart der Clock.",
				tStyle = "Verändere die Design der Clock.",
				nAlpha = "Sichtbarkeit",
			},
			booleans = {
				nBackground = "Zeige Hintergrund",
				nHoverScale = "Skalierung beim Hovern",
				tFake = "Wird den Tag, den Monat und den Wochentag in Tamriel durch den echten ersetzen, aber mit Tamriel-Namen.",
				nAddZero = "Ergänze Nullen",
				nTooltip = "Tooltip beim Hovern anzeigen",
				nFight = "In Kämpfen verstecken",
				tAddZero = "Ergänzt Nullen vor eine einstellige Zahl: 1:24 -> 01:24.",
				nLink = "Verbinde die Bewegungen des Schriftzugs mit dem Mond",
				nJapanese = "Zeige Mitternacht als 0",
				nSub = "Ein/Aus Einstellungen",
				tTimeBackground = "Fügt einen Hintergrund hinter die Clock hinzu.",
				nMovable = "Bewegbar",
				nMap = "Nur auf der Karte anzeigen",
				tMovable = "Wähle ob die Clock bewegbar sein soll.",
				nMouseEnabled = "Interaktionsfähig",
				wAffect = "Dies betrifft nur ein benutzerdefiniertes Format, nicht #X oder %X.",
				nHoverColour = "Hervorhebung beim Hovern",
				nTimeVisible = "Zeige die Zeit",
				nMoonVisible = "Zeige den Mond",
				nFake = "Zeige falsches lore Datum",
				nUSFormat = "12h Format",
			},
			core = {
				nHeadTime = "Zeit und Datum",
				nHeadMoon = "Mond",
				nHeadGeneral = "Allgemein",
			},
			account = {
				nAccount = "Einstellungen synchronisieren",
				tAccount = "Verwende die gleichen Einstellungen für alle Charaktäre.",
			},
		},
	}
end