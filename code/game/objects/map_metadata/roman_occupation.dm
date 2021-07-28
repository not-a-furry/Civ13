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

	if (eventid == 0)
		mission_start_message = "<big>event id 0</big><br><span class = 'notice'><i>THIS IS AN HRP MAP - </b>No griefing will be tolerated. If you break the rules, you will be banned from the server!<i></span>" // to be replaced with the round's main event
	if (eventid == 1)
		mission_start_message = "<big>event id 1</big><br><span class = 'notice'><i>THIS IS AN HRP MAP - </b>No griefing will be tolerated. If you break the rules, you will be banned from the server!<i></span>" // to be replaced with the round's main event
	if (eventid == 2)
		mission_start_message = "<big>event id 2</big><br><span class = 'notice'><i>THIS IS AN HRP MAP - </b>No griefing will be tolerated. If you break the rules, you will be banned from the server!<i></span>" // to be replaced with the round's main event
	if (eventid == 3)
		mission_start_message = "<big>event id 3</big><br><span class = 'notice'><i>THIS IS AN HRP MAP - </b>No griefing will be tolerated. If you break the rules, you will be banned from the server!<i></span>" // to be replaced with the round's main event


/obj/map_metadata/roman_occupation/New()
	..()
	set_event_id()
	spawn(18000)
		seasons()
		

/obj/map_metadata/roman_occupation/job_enabled_specialcheck(var/datum/job/J)
	..()
	if (J.is_occupation && J.title != "DONT USE" && ( istype(J, /datum/job/roman) || istype(J, /datum/job/israelite) ) )
		. = TRUE
	else  //wont work without this for some fucking reason. what the fuck does this accomplish? absolutely nothing. it's fucking bullshit
		. = FALSE

	if (eventid == 0 || eventid == 1)
		if(J.is_imperator)
			. = TRUE
		else
			. = FALSE
	else if (eventid == 2)

		if(J.is_arabic_invasion)
			. = TRUE
		else 
			. = FALSE
	else if (eventid == 3)

		if(J.is_german_invasion)
			. = TRUE
		else
			. = FALSE