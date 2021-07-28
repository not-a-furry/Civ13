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
		GREEK,)

	roundend_condition_sides = list(
		list(ROMAN) = /area/caribbean/british,
		list(ISRAELITE) = /area/caribbean/colonies,
		)
	age = "313 B.C."
	ordinal_age = 1
	faction_distribution_coeffs = list(ROMAN = 0.35, ISRAELITE = 0.65)
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
/obj/map_metadata/roman_occupation/New()
	..()
	spawn(18000)
		seasons()

var/do_this_once_retard = TRUE //TODO: better implementation of this garbage

if (do_this_once_retard)
	var/randround = pick(1,2,3)
	do_this_once_retard = FALSE

/obj/map_metadata/roman_occupation/job_enabled_specialcheck(var/datum/job/J)
	..()
	if (J.is_occupation && J.title != "DONT USE" && ( istype(J, /datum/job/roman) || istype(J, /datum/job/israelite) ) )
		. = TRUE
	else  //wont work without this for some fucking reason. what the fuck does this accomplish? absolutely nothing. it's fucking bullshit
		. = FALSE

/*
I should really turn this into a module. Oh well! It goes right here, where it belongs. This determines the event of the round!
To anyone reading this, please turn this into a module. I am a lazy fuck who cannot be bothered to, as it will take too much time out of
my unemployed life. 

So, what does this do, because this entire codebase is devoid of any documentation?
This determines the event for the round. The events can be found in _special.dm. The roles can be found in ancient_occupation.dm. 
The randround variable picks a number. Each event has a equal chance of becoming the event, because fuck it. Whether that be Germans
commiting WW0 on the poor Jewish people, Arabs burning everything down, or the Emperor just being pissed off that the governor didn't
bow down to his mere prescence and called the First Legion to annihilate them, this does it all!
*/

//TODO: add ten minute delay to this

	if (randround == 1) //emperor visits
		if (J.is_imperator)
			. = TRUE
			world << "<b><big>The Imperator of the Roman Empire is visiting today!</big></b>"
	if (randround == 2)
		if (J.is_german_invasion)
			. = TRUE
			world << "<b><big>German tribes have been seen in the area...</big></b>"
	else
		if (J.is_arabic_invasion)
			. = TRUE
			world << "<b><big>Tribes from the south have come to visit!</big></b>"