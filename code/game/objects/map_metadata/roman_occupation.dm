/obj/map_metadata/roman_occupation
	ID = MAP_ROMAN_OCCUPATION
	title = "Roman Occupation"
	lobby_icon_state = "Ancient"
	no_winner ="The round is proceeding normally."
	caribbean_blocking_area_types = list(/area/caribbean/no_mans_land/invisible_wall/)
	respawn_delay = 7200 // 12 minutes!
	has_hunger = TRUE

	faction_organization = list(
		ROMAN,
		ISRAELITE,
		GERMAN,
		ARAB,
		GREEK)

	roundend_condition_sides = list(
		list(ROMAN) = /area/caribbean/british,
		list(ISRAELITE) = /area/caribbean/colonies,
		)
	age = "313 B.C."
	ordinal_age = 1
	faction_distribution_coeffs = list(ROMAN = 0.25, ISRAELITE = 0.75)
	battle_name = "Roman Occupation"
	mission_start_message = "<big>Europeans</b> have built a kingdom! The <b>People</b> must thrive on their industry and live peacefully!.</big><br><span class = 'notice'><i>THIS IS AN HRP MAP - </b>No griefing will be tolerated. If you break the rules, you will be banned from the server!<i></span>" // to be replaced with the round's main event
	ambience = list('sound/ambience/jungle1.ogg')
	faction1 = ROMAN
	faction2 = ISRAELITE //these variables are used in job_controller.dm
	songs = list(
		"Bright Side of Life:1" = 'sound/music/bright_side.ogg',)
	gamemode = "Medieval RP"
	//is_singlefaction = TRUE
	force_mapgen = TRUE
	is_RP = TRUE
	amountofevents = 3


/obj/map_metadata/roman_occupation/New()
	..()
	spawn(30)
		set_event_id()
	spawn(18000)
		seasons()
		

/obj/map_metadata/roman_occupation/job_enabled_specialcheck(var/datum/job/J)
	..()
	if (J.is_occupation && J.title != "DONT USE" && ( istype(J, /datum/job/roman) || istype(J, /datum/job/israelite) ) )
		. = TRUE

	if (eventid == 1)
		if(J.is_imperator)
			world << "<b><big>the emperor has come</big></b>"
			. = TRUE
		if (summoned_legion)
			if (J.is_imperator_legion)
				. = TRUE

	else if (eventid == 2)

		if(J.is_arabic_invasion)
			world << "<b><big>the arabs has come</big></b>"
			. = TRUE

	else if (eventid == 3)
	
		if(J.is_german_invasion)
			world << "<b><big>the g*rmans has come</big></b>"
			. = TRUE

	else
		world << "null"