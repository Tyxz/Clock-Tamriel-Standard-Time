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
        view = {
            moon = {
                tooltip = {
                    full = "Der Mond ist gerade voll.\n"
                            .. "Er wird so für <<1 [weniger als eine Stunde/eine Stunde/$d Stunden]>> bleiben.\n",
                    isWaxing = "Der Mond ist zu <<1>>% voll und nimmt zu.\n"
                            .. "Er wird <<2[weniger als eine Stunde/eine Stunde/$d Stunden]>> brauchen,\n"
                            .. "um seine volle Pracht zu erreichen.\n",
                    isWaning = "Der Mond ist zu <<1>>% voll und nimmt ab.\n"
                            .. "Er wird wieder <<2>> Stunden brauchen,\n"
                            .. "um seine volle Pracht zu erreichen.\n",
                    duration = "Das <<1[ist weniger als ein Tag/ist ein Tag/sind $d Tage]>> in Tamriel.",
                    error    = "Konnte nicht mit der LibClockTST Bibliothek verbinden."
                }
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
        }
    }
end
