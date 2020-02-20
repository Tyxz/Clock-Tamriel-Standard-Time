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
					year = "2F",
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
						[12] = "Soirétoile",
					},
				},
				real = {
					week = {
						[1] = "Lundi",
						[2] = "Mardi",
						[3] = "Mercredi",
						[4] = "Jeudi",
						[5] = "Vendredi",
						[6] = "samedi",
						[7] = "dimanche",
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
						[12] = "décembre",
					},
				},
			},
			core = {
				menu = {
					movable = "Est mobile",
					link = "Lier le mouvement de la lune avec le temps",
					tooltip = "Afficher l'info-bulle",
					open = "Ouvrir le menu des paramètres",
					background = "Afficher le contexte",
				},
			},
			time = {
				pm = "P.M.",
				am = "A.M.",
			},
			moon = {
				tooltip = {
					isWaning = "La lune est <<1>>% pleine et décroissante.\n"
						.. "Il va encore avoir besoin de <<2>> heures,\n"
						.. "pour atteindre sa pleine gloire.\n"
						.. "",
					duration = "Le <<1 [est moins d'un jour/est un jour/est $d jours]>> à Tamriel.",
					full = "La lune est pleine en ce moment.\n"
						.. "Il en sera ainsi pendant <<1 [moins d'une heure/$d heures]>>.\n"
						.. "",
					isWaxing = "La lune est <<1>>% pleine et croissante.\n"
						.. "Il aura besoin de <<2 [moins d'une heure/une heure/$d heures]>>,\n"
						.. "pour atteindre sa pleine gloire.\n"
						.. "",
				},
			},
		},
		error = {
			library = "Impossible de se connecter à la bibliothèque LibClockTST.",
		},
		menu = {
			feedback = {
				nLessGold = "Petit don",
				nMoreGold = "Don plus important",
				nRealGold = "Don réel",
				nMail = "Commentaires en jeu",
				nGitHub = "Signaler un problème",
				tFeedback = "Si vous avez trouvé un bug, si vous avez une demande ou une suggestion,\n"
					.. "ou si vous souhaitez simplement faire un don, n'hésitez pas à m'envoyer un mail.",
			},
			styles = {
				tSize = "Modifier la taille de la police de l'horloge.",
				nScaleFactor = "Facteur d'échelle",
				tScaleFactor = "De combien le poste devrait augmenter avec le vol stationnaire.",
				nSize = "Größe",
				tFormat = "Vous pouvez écrire un symbole (# pour l'lore, % pour la réalité) suivi d'une lettre :",
				nSecunda = "La texture de Secunda",
				nFormat = "Rédigez votre date et votre heure dans un format qui vous est propre",
				nColor = "Farbe",
				tBackgroundOffset = "Décalage par rapport à la largeur calculée du fond.",
				nMoonWidth = "Largeur de la lune distance",
				nSub = "Aussehen Einstellungen",
				nStyle = "Design",
				nBackgroundStrength = "La force de la base",
				nFont = "Schriftart",
				nBackgroundOffset = "Décalage du fond",
				tColor = "Verändere die Farbe der Clock.",
				dFormat = "%A		 nom complet du jour de la semaine [Vendredi]\n"
					.. "%a		 pour l'abréviation [Ven].\n"
					.. "%B		 le nom complet du mois [Mars].\n"
					.. "%b		 pour l'abréviation [Mar]\n"
					.. "%d		 Jour du mois\n"
					.. "%H		 heure\n"
					.. "%M		 minute\n"
					.. "%m		 mois\n"
					.. "%p		 soit \"am\" ou \"pm\"\n"
					.. "%S		 Deuxième\n"
					.. "%w		 Jour de la semaine [1-7 = Lundi-Dimanche]\n"
					.. "%x		 Date [17.02.20]\n"
					.. "%X		 Heure [23:48:10 | 11:48 PM]\n"
					.. "%Y		 année complète [2020]\n"
					.. "%y		 année raccourcie [20]",
				nBackground = "Texture du fond",
				nMasser = "La texture de Masser",
				nMoonHeight = "Distance de la hauteur de la lune",
				tFont = "Verändere die Schriftart der Clock.",
				tStyle = "Verändere die Design der Clock.",
				nAlpha = "Visibilité",
			},
			booleans = {
				nBackground = "Contexte",
				nHoverScale = "Mise à l'échelle pendant le survol",
				tFake = "Remplacera le jour, le mois et le jour de la semaine en Tamriel par le vrai, mais avec le nom Tamriel.",
				nAddZero = "Ajouter des zéros",
				nTooltip = "Afficher l'info-bulle au survol",
				nFight = "Se cacher dans les combats",
				tAddZero = "Ajouter des zéros avant un seul numéro = 01h24 -> 01h24.",
				nLink = "Relier les mouvements du lettrage avec la lune",
				nJapanese = "Afficher midngiht comme 0",
				nSub = "Activé / Désactivé",
				tTimeBackground = "Choisissez un fond de l'horloge.",
				nMovable = "Mobile",
				nMap = "Afficher sur la carte uniquement",
				tMovable = "Sélectionnez si l'horloge doit être mobile.",
				nMouseEnabled = "Interactif",
				wAffect = "Cela ne concerne qu'un format personnalisé, et non pas #X ou %X.",
				nHoverColour = "Mise en évidence pendant le survol",
				nTimeVisible = "Afficher l'heure",
				nMoonVisible = "Afficher la Lune",
				nFake = "Montrer faux lore date",
				nUSFormat = "Format 12h",
			},
			core = {
				nHeadTime = "Date et heure",
				nHeadMoon = "Lune",
				nHeadGeneral = "Généralités",
			},
			account = {
				nAccount = "Synchroniser les paramètres",
				tAccount = "Utilisez les mêmes paramètres pour tous les caractères.",
			},
		},
	}
end