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
            nToggle = "Basculer la visibilité",
            nToggleTime = "Basculer la visibilité des dates",
            nToggleMoon = "Basculer la visibilité de la lune"
        },
        error = {
            library = "Impossible de se connecter à la bibliothèque LibClockTST."
        },
        menu = {
            core = {
                nHeadTime = "Date et heure",
                nHeadMoon = "Lune",
                nHeadGeneral = "Généralités",
            },
            account = {
                nAccount = "Synchroniser les paramètres",
                tAccount = "Utilisez les mêmes paramètres pour tous les caractères."
            },
            booleans = {
                nSub = "Activé / Désactivé", -- togOpt
                nTimeVisible = "Afficher l'heure", -- sTime
                nMouseEnabled = "Interactif",
                nMovable = "Mobile", -- sMove
                tMovable = "Sélectionnez si l'horloge doit être mobile.", -- tMove
                nTooltip = "Afficher l'info-bulle au survol",
                nBackground = "Contexte", -- nsBg
                tTimeBackground = "Choisissez un fond de l'horloge.", -- tsBg
                nAddZero = "Ajouter des zéros", -- sNum
                tAddZero = "Ajouter des zéros avant un seul numéro = 01h24 -> 01h24.", -- tNum
                nUSFormat = "Format 12h", -- sFormat,
                nJapanese = "Afficher midngiht comme 0", --sJap
                wAffect = "Cela ne concerne qu'un format personnalisé, et non pas #X ou %X.",
                nFake = "Montrer faux lore date", -- sFLDate
                tFake = "Remplacera le jour, le mois et le jour de la semaine en Tamriel par le vrai, "
                        .. "mais avec le nom Tamriel.",
                nHoverScale = "Mise à l'échelle pendant le survol",
                nHoverColour = "Mise en évidence pendant le survol",
                nMoonVisible = "Afficher la Lune", -- sMoon
                nFight = "Se cacher dans les combats",
                nMap = "Afficher sur la carte uniquement",
                nLink = "Relier les mouvements du lettrage avec la lune",
            },
            styles = {
                nSub = "Paramètres d'apparence", -- look
                nFormat = "Rédigez votre date et votre heure dans un format qui vous est propre",
                tFormat = "Vous pouvez écrire un symbole (# pour l'lore, % pour la réalité) suivi d'une lettre :",
                dFormat = "%A\t\t nom complet du jour de la semaine [Vendredi]\n"
                        .. "%a\t\t pour l'abréviation [Ven].\n"
                        .. "%B\t\t le nom complet du mois [Mars].\n"
                        .. "%b\t\t pour l'abréviation [Mar]\n"
                        .. "%d\t\t Jour du mois\n"
                        .. "%H\t\t heure\n"
                        .. "%M\t\t minute\n"
                        .. "%m\t\t mois\n"
                        .. "%p\t\t soit \"am\" ou \"pm\"\n"
                        .. "%S\t\t Deuxième\n"
                        .. "%w\t\t Jour de la semaine [1-7 = Lundi-Dimanche]\n"
                        .. "%x\t\t Date [17.02.20]\n"
                        .. "%X\t\t Heure [23:48:10 | 11:48 PM]\n"
                        .. "%Y\t\t année complète [2020]\n"
                        .. "%y\t\t année raccourcie [20]",
                nColor = "Couleur", -- nColPick
                tColor = "Changez la couleur de l'horloge.", -- tColPick
                nFont = "Police", -- nFont
                tFont = "Changez la police de l'horloge.", -- tFont
                nStyle = "Conception", -- nStyle
                tStyle = "Changer la conception de l'horloge.", -- tStyle
                nSize = "Taille", -- nSize
                tSize = "Modifier la taille de la police de l'horloge.",
                nBackground = "Texture du fond",
                nBackgroundStrength = "La force de la base",
                nBackgroundOffsetX = "Décalage de la largeur du fond",
                tBackgroundOffsetX = "Décalage par rapport à la largeur calculée du fond.",
                nBackgroundOffsetY = "Décalage de la hauteur du fond",
                tBackgroundOffsetY = "Décalage par rapport à la hauteur calculée du fond.",
                nMasser = "La texture de Masser",
                nSecunda = "La texture de Secunda",
                nMoonWidth = "Largeur de la lune distance",
                nMoonHeight = "Distance de la hauteur de la lune",
                nScale = "Mise à l'échelle",
                nAlpha = "Visibilité",
                nScaleFactor = "Facteur d'échelle",
                tScaleFactor = "De combien le poste devrait augmenter avec le vol stationnaire."
            },
            feedback = {
                tFeedback = "Si vous avez trouvé un bug, si vous avez une demande ou une suggestion,\n"
                    .. "ou si vous souhaitez simplement faire un don, n'hésitez pas à m'envoyer un mail.",
                nMail = "Commentaires en jeu",
                nGitHub = "Signaler un problème",
                nLessGold = "Petit don",
                nMoreGold = "Don plus important",
                nRealGold = "Don réel"
            }
        },
        view = {
            core = {
                menu = {
                    tooltip = "Afficher l'info-bulle",
                    background = "Afficher le contexte",
                    movable = "Est mobile",
                    link = "Lier le mouvement de la lune avec le temps",
                    open = "Ouvrir le menu des paramètres",
                    scale = "Réinitialisation de la mise à l'échelle",
                },
            },
            moon = {
                tooltip = {
                    full = "La lune est pleine en ce moment.\n"
                            .. "Il en sera ainsi pendant <<1 [moins d'une heure/$d heures]>>.\n",
                    isWaxing = "La lune est <<1>>% pleine et croissante.\n"
                            .. "Il aura besoin de <<2 [moins d'une heure/une heure/$d heures]>>,\n"
                            .. "pour atteindre sa pleine gloire.\n",
                    isWaning = "La lune est <<1>>% pleine et décroissante.\n"
                            .. "Il va encore avoir besoin de <<2>> heures,\n"
                            .. "pour atteindre sa pleine gloire.\n",
                    duration = "Le <<1 [est moins d'un jour/est un jour/est $d jours]>> à Tamriel."
                }
            },
            time = {
                am = "A.M.",
                pm = "P.M.",
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
                        [7] = "Sundas"
                    },
                    months = {
                        [1] = "Primétoile",
                        [2] = "Clairciel",
                        [3] = "Semailles",
                        [4] = "Ondepluie",
                        [5] = "Plantaison",
                        [6] = "Mi-L´an",
                        [7] = "Hautzénith",
                        [8] = "Vifâzur",
                        [9] = "Âtrefeu",
                        [10] = "Soufflegivre",
                        [11] = "Ombreciel",
                        [12] = "Soirétoile"
                    },
                    year = "2F"
                },
                real = {
                    week = {
                        [1] = "Lundi",
                        [2] = "Mardi",
                        [3] = "Mercredi",
                        [4] = "Jeudi",
                        [5] = "Vendredi",
                        [6] = "samedi",
                        [7] = "dimanche"
                    },
                    months = {
                        [1] = "janvier",
                        [2] = "février",
                        [3] = "Mars",
                        [4] = "avril",
                        [5] = "Mai",
                        [6] = "juin",
                        [7] = "juillet",
                        [8] = "août",
                        [9] = "septembre",
                        [10] = "octobre",
                        [11] = "novembre",
                        [12] = "décembre"
                    }
                }
            },
        }
    }
end
