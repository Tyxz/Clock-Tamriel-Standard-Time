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
                    full = "The moon is full right now.\n"
                        .. "It will stay that way for <<1 [less than one hour/one hour/$d hours]>>.\n",
                    isWaxing = "The moon is <<1>>% full and is waxing.\n"
                            .. "He needs <<2 [less than one hour/one hour/$d hours]>>,\n"
                            .. "to reach its full glory.\n",
                    isWaning = "The moon is <<1>>% full and is waning.\n"
                            .. "He needs <<2>> hours again,\n"
                            .. "to reach its full glory.\n",
                    duration = "That is <<1 [less than a day/a day/$d days]>> in Tamriel.",
                    error = "Could not connect to the LibClockTST library."
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
                    year = "2E ",
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
