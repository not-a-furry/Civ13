/obj/map_metadata/roman_occupation
	ID = MAP_ROMAN_OCCUPATION
	title = "Roman Occupation"
	lobby_icon_state = "ancient"
	no_winner ="The round is proceeding normally."
	caribbean_blocking_area_types = list(/area/caribbean/no_mans_land/invisible_wall/)
	respawn_delay = 7200 // 12 minutes!
	has_hunger = TRUE

	faction_organization = list(
		ROMAN)

	roundend_condition_sides = list(
		list(ROMAN) = /area/caribbean/british,
		)
	age = "313 B.C."
	ordinal_age = 1
	faction_distribution_coeffs = list(ROMAN = 1)
	battle_name = "Roman Occupation"
	mission_start_message = "<big>Europeans</b> have built a kingdom! The <b>People</b> must thrive on their industry and live peacefully!.</big><br><span class = 'notice'><i>THIS IS AN HRP MAP - </b>No griefing will be tolerated. If you break the rules, you will be banned from the server!<i></span>" // to be replaced with the round's main event
	ambience = list('sound/ambience/jungle1.ogg')
	faction1 = ROMAN
	songs = list(
		"Bright Side of Life:1" = 'sound/music/bright_side.ogg',)
	gamemode = "Medieval RP"
	is_singlefaction = TRUE
	force_mapgen = TRUE
	is_RP = TRUE
/obj/map_metadata/roman_occupation/New()
	..()
	spawn(18000)
		seasons()

/obj/map_metadata/roman_occupation/job_enabled_specialcheck(var/datum/job/J)
	..()
	if (istype(J, /datum/job/roman))
		. = TRUE
	else 
		. = FALSE