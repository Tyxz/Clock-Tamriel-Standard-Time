-------------------------------------------
-- de - deutsch:german
-- Author: Tyx
-------------------------------------------
cl.ln = {
    com = {
        -- COMMANDS ARE ENGLISH ONLY RIGHT NOW
        --show = "zeige",
        --midnight = "mitternacht",
        --sunrise = "sonnenaufgang",
        --noon = "mittag",
        --sunset = "sonnenuntergang",
        --reset = "zurücksetzen",
        resetTxt = "Clock ist nun zurückgesetzt.",
        --resetui = "zurücksetzenUI",
        resetUITxt = "Clock Benutzeroberfläche ist nun zurückgesetzt.",
        -- resettime = "zurücksetzenZeit",
        resetTimeTxt = "Clock Zeit ist nun zurückgesetzt.",
        --us = "us",
        usOn = "Die Zeit wird nun in 12h mit am/pm dargestellt.",
        usOff = "Die Zeit wird nun in 24h dargestellt.",
        --num = "num",
        numOn = "Nullen werden hinzugefügt.",
        numOff = "Einzelne Ziffern werden angezeigt.",
        --sec = "sek",
        secOn = "Sekunden werden angezeigt.",
        secOff = "Sekunden werden ausgeblendet.",
        --active = "aktiv",
        activeOn = "Clock - TST ist eingeschaltet.",
        activeOff = "Clock - TST ist ausgeschaltet.",
        --active = "bewege",
        activeOn = "Clock kann nun verschoben werden.",
        activeOff = "Clock ist nun fixiert.",
        --moon = "mond",
        moonOn = "Der Mond wird angezeigt.",
        moonOff = "Der Mond wird ausgeblendet.",
        --ldate = "ldatum",
        ldateOn = "Lore Datum wird angezeigt.",
        ldateOff = "Lore Datum wird ausgeblendet.",
        --fldate = "ldatum",
        fldateOn = "Falsches lore Datum wird angezeigt.",
        fldateOff = "Falsches lore Datum wird ausgeblendet.",
        --rt = "rz",
        rtOn = "Reale-Zeit wird angezeigt.",
        rtOff = "Reale-Zeit wird ausgeblendet.",
        --date = "datum",
        dateOn = "Datum wird angezeigt.",
        dateOff = "Datum wird ausgeblendet.",
        text = "Willkommen zu dem |cFFD700Clock|r - TST von |c5175ea@Tyx|r [EU] Hilfemenü\n"
                .. "Um die aktuelle Datenbank anzuzeigen, schreibe:\n"
                .. "\t\cl show\n"
                .. "Um die aktuelle Zeit als Tamriel Mitternacht/Sonnenaufgang/Mittag/Sonnenuntergang zu speichern, benutze das passenden kommando:\n"
                .. "\t\cl midnight\n\t\cl sunrise\n\t\cl noon\n\t\cl sunset\n"
                .. "Um die aktuelle Datenbank, nur das Aussehen oder nur die Zeit auf ihre Anfangswerte zurückzusetzen, schreibe\n"
                .. "\t\cl reset\n\t\cl resetUI\t\cl resetTime\n"
                .. "Du kannst die angezeigte Zeit in das 12h/24h Format umschalten mit:\n"
                .. "\t\cl us\n"
                .. "Um die Nullen vor den einstelligen Stunden zu löschen, schreibe:\n"
                .. "\t\cl num\n"
                .. "Um die Sekuden ein- oder auszublenden, schreibe:\n"
                .. "\t\cl sec\n"
                .. "Um die Echtzeit einzublenden, schreibe:\n"
                .. "\t\cl rt\n"
                .. "Damit die Mondphase angezeigt wird, schreibe:\n"
                .. "\t\cl moon\n"
                .. "Um das Datum (lore/fake lore/real) anzuzeigen, schreibe:\n"
                .. "\t\cl ldate\n\t\cl fldate\n\t\cl date\n"
                .. "Damit die Clock nicht mehr bewegt werden kann, schreibe:\n"
                .. "\t\cl move\n"
                .. "Um die Clock ein-/auszuschalten benutze:\n"
                .. "\t\cl active\n\n"
                .. "Um das Einstellungsmenü aufzurufen, schreibe:\n"
                .. "\t\clsettings\n",
    },
    gui = {
        com = "/cleinstellungen",
        -- Language
        lang = "Sprache",
        langTxt = "Wähle eine Sprache für das Clock Einstellungsmenü und die Kommandos.\n Achtung: dies wird das UI neuladen.",
        -- Toggle
        togOpt = "Ein/Aus Einstellungen",
        togOptTxt = "Verändere das Aussehen der Clock.",
        sClock = "Zeige die Uhr",
        sTime = "Zeige die Zeit",
        sMove = "Bewegbar",
        tMove = "Wähle ob die Clock bewegbar sein soll.",
        sAHide = "Automatisch verstecken",
        tAHide = "Wähle ob die Clock versteckt werden soll, falls das menü geöffnet wird.",
        sFormat = "12h Format",
        sAMPM = "Zeige AM/PM",
        sNum = "Ergänze Nullen",
        tNum = "Ergänzt NUllen vor eine einstellige Zahl: 1:24 -> 01:24",
        sSec = "Zeige Sekunden",
        sMoon = "Zeige den Mond",
        tMoon = "Fügt ein kleines Bild mit der aktuellen Mondphase und den verbleibenden Stunden bis zum Beginn der nächsten Phase hinzu.",
        sLDate = "Zeige lore Datum",
        tLDate = "Fügt eine Zeile unter der Clock ein mit dem Tag, Monat und Jahr in Tamriel.",
        sFLDate = "Zeige falsches lore Datum",
        tFLDate = "Fügt eine Zeile unter der Clock ein mit dem Tag, Monat und Jahr in Tamriel.",
        sRT = "Zeige reale Zeit",
        tRT = "Fügt eine Zeile unter der Clock ein mit der Zeit deines Betriebssystems.",
        sDate = "Zeige reales Datum",
        tDate = "Fügt eine Zeile unter der Clock ein mit dem Tag, Monat und Jahr deines Betriebssystems.",
        nsBg = "Zeige Hintergrund",
        tsBg = "Fügt einen Hintergrund hinter die Clock hinzu.",
        sHor = "Horizontal",
        tHor = "Zeige die lore- und reale Zeit nebeneinander an.",
        -- Look
        look = "Aussehen Einstellungen",
        lookTxt = "Verschiedene Einstellungen um das Aussehen der Clock zu verändern.",
        nColPick = "Farbe",
        tColPick = "Verändere die Farbe der Clock.",
        nFont = "Schrift",
        tFont = "Verändere die Schrift der Clock.",
        nStyle = "Design",
        tStyle = "Verändere die Design der Clock.",
        nSize = "Größe",
        tSize = "Verändere die Größe der Clock.",
        --real
        nSepLR = "Different Looks",
        tSepLR = "Choose if you want your real date have an other look than your lore date.",
        nRColPick = "Color",
        tRColPick = "Change the color of the Clock.",
        nRFont = "Font",
        tRFont = "Change the font of the Clock.",
        nRStyle = "Style",
        tRStyle = "Change the style of the Clock.",
        nRSize = "Size",
        tRSize = "Change the size of the Clock.",
        nBg = "Hintergrund",
        tBg = "Wählen Sie den Hintergrund aus.",
        descEditLookY = "Verändere das Format der Clock: Benutze '_' bevor einer Variablen!\n"
                .. "Jahr/Monat/Tag",
        descEditLookYTxt = "Jahr: Y = 582 (14)\tYY = 2Ä 582 (2014)\n"
                .. "Monat: M = 4\tMM = 04\tMMM = Erste Saat (April)\n"
                .. "Tag: D = 4\tDD = 04\tDDD = Fredas (Freitag)",
        descEditLookD = "Stunde/Minute/Sekunde",
        descEditLookDTxt = "Stunde: h = 9\thh = 09\n"
                .. "Minute: m = 9\tmm = 09\n"
                .. "Sekunde: s = 9\tss = 09",
        descEditLookE = "Beispiel",
        descEditLookETxt = "_DDD, _D. Tag vom _MMM _YY _hh:_mm:_ss\n"
                .. "Fredas, 4. Tag vom Erste Saat 2Ä 582\n"
                .. "Freitag, 4. Tag vom April 2014",
        nELore = "Lore-Zeit Format",
        tELore = "Schreibe das Zeitformat für die lore Zeit hier rein.",
        nEReal = "Reale-Zeit Format",
        tEReal = "Schreibe das Zeitformat für die reale Zeit hier rein.",
        -- Daay
        day = "Sync [Tageslänge]",
        dayTxt = "Passe die Länge eines Tages nach deinen Wünschen an.",
        descDB = "Sync [Mitternacht/Sonnenaufgang/Mittag/Sonnenuntergang]",
        descDBTxt = "Synchronisiere die Zeit der Clock.\nZ.B. wähle Mittag when die Sonne genau unter der Süd-Nadel deines Kompasses steht.",
        nMid = "Jetzt ist Mitternacht!",
        tMid = "Wähle dies wenn der Mond an seiner höchsten Stelle ist.",
        nRise = "Jetzt ist Sonnenaufgang!",
        tRise = "Veraltet! Sonnenaufgang ist nicht wirklich klar. Arbeite mit Mittag!",
        nNoon = "Mittag ist jetzt!",
        tNoon = "Wähle dies wenn die Sonne genau unter der Südnadel deines Kompasses ist.",
        nSet = "Sonnenuntergang ist jetzt!",
        tSet = "Veraltet! Sonnenuntergang ist nicht wirklich klar. Arbeite mit Mittag!",
        descDS = "Sync [Tageslänge]",
        descDSTxt = "Synchronisiere die Tageslänge der Clock.",
        nDayH = "Stunden",
        tDayH = "Wie lange dauert ein in-game Tag in echt Zeit Stunden.",
        nDayM = "Minuten",
        tDayM = "Wie lange dauert ein in-game Tag in echt Zeit Minuten.",
        nDayS = "Sekunden",
        tDayS = "Wie lange dauert ein in-game Tag in echt Zeit Sekunden.",
        nAplyData = "Berechne",
        tAplyData = "Berechne die aktuelle Zeit in Tamriel basierend auf der ausgewählten Tageslänge und deiner synchronisierten (oder anfangs) Startzeit.",
        -- Moon
        moon = "Sync [Mond]",
        moonTxt = "Verändere den Start der Mondphasen und die Länge einer Mondphase nach deinen Wünschen.",
        nFull = "Jetzt ist Vollmond!",
        tFull = "Wähle dies beim Start der Vollmondphase.",
        nNew = "Jetzt ist Neumond!",
        tNew = "Wähle dies beim Start der Neumondphase.",
        descMS = "Sync [Mond]",
        descMSTxt = "Synchronisiere die Mondphase der Clock.\nMache dies genau am Anfang einer Phase.",
        descMoon = "Sync [Phasenlänge]",
        descMoonTxt = "Du must nur einmal, entweder für den Start des Voll- oder Neumonds, die Clock synchronisieren.\n"
                .. "Eine ganze Mondphase dauert 30 ingame Tage. Die folgenden Schieber sind für das Einstellen wie viel Tage eine Mondphase dauert.",
        nNightF = "Vollmondphase in Prozent",
        tNightF = "Wähle aus wie lange eine Vollmondphase dauert.",
        nNightW = "Abnehmende-/Zunehmende-Mondphase in Prozent",
        tNightW = "Wähle aus wie lange eine Abnehmende-/Zunehmende-Mondphase dauert.",
        nNightN = "Neumondphase in Prozent",
        tNightN = "Wähle aus wie lange eine Neumondphase dauert.",
        nAplyMoon = "Berechne",
        tAplyMoon = "Berechne die aktuelle Mondphase basierend auf der ausgewählten Phasenlänge und deiner synchronisierten (oder anfangs) Startzeit.",
        -- Reset
        reset = "Zurücksetz Einstellungen",
        resetTxt = "Verschiedene Einstellungen um Alles oder nur Teile der Clock zurückzusetzen.",
        nResFull = "Alles zurücksetzen",
        tResFull = "Setze alles auf seine Anfangswerte zurück.",
        wResFull = "Dies wird alle von dir gemachten Anpassungen auf die Anfangswerte zurücksetzen!\nWird die UI neuladen!",
        nResUI = "Setze die Benutzeroverfläche zurück",
        tResUI = "Setzt das Aussehen und die Position der Clock auf die Startwerte zurück.",
        wResUI = "Dies wird alle von dir gemachten Anpassungen an der Benutzeroverfläche auf die Anfangswerte zurücksetzen!",
        nResTime = "Setze die Zeit zurück",
        tResTime = "Setzt deine Anpassungen an der Synchronisation und der Längen von der Clock auf die Anfangswerte zurück.",
        wResTime = "Dies wird alle von dir gemachten Anpassungen an der Zeit auf die Anfangswerte zurücksetzen!\nWird die UI neuladen!",
    },
    vi = {
        dbTS = {
            [1] = "Die nächste Mitternacht (0:00 TST) ist um\t",
            [2] = "Der nächste Sonnenaufgang (4:00 TST) ist um\t",
            [3] = "Der nächste Mittag (12:00 TST) ist um\t",
            [4] = "Der nächste Sonnenuntergang (20:00 TST) ist um\t",
            [5] = "Ein Tag ist ",
            [6] = "lang\n",
        },
        date = {
            first = "st",
            second = "nd",
            third = "rd",
            allNum = "th",
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
                year = "2Ä ",
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
    },
}