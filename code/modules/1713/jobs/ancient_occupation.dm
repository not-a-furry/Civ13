////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////ROMAN///////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////
/datum/job/roman
	faction = "Human"
	is_ancient = TRUE
/datum/job/roman/give_random_name(var/mob/living/human/H)
	if (title != "Gladiator")
		H.name = H.species.get_random_roman_name()
		H.real_name = H.name
	else
		H.name = H.species.get_random_ancient_name()
		H.real_name = H.name

/datum/job/roman/governor
	title = "Propraetor"
	en_meaning = "Governor"
	rank_abbreviation = "Propraetor"

	spawn_location = "JoinLateROG"

	is_commander = TRUE
	is_occupation = TRUE
	is_officer = TRUE
	whitelisted = TRUE

	min_positions = 1
	max_positions = 1
/datum/job/roman/emperor/equip(var/mob/living/human/H)
	if (!H)	return FALSE
		//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/roman(H), slot_shoes)
		//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/custom/toga/purple(H), slot_w_uniform)
	H.equip_to_slot_or_del(new /obj/item/weapon/key/ancient/roman(H), slot_l_store)
	H.equip_to_slot_or_del(new /obj/item/weapon/horn(H), slot_r_store)
	H.equip_to_slot_or_del(new /obj/item/clothing/head/laurelcrown(H), slot_head)
	H.equip_to_slot_or_del(new /obj/item/stack/money/dollar/onehundy(H), slot_l_store)
	H.add_note("Role", "You are the <b>[title]</b>. You are responsable for organizing the games. You can use the interface of the <b>Gladiator Combat Organizer</b> to turn automatic mode on and off. If you decide to manage the games yourself, you will need to attribute the victory using the <b>Gladiator Ledger</b> - click on it and choose the winner!")

	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_MEDIUM_HIGH)
	H.setStat("rifle", STAT_MEDIUM_HIGH)
	H.setStat("dexterity", STAT_MEDIUM_HIGH)
	H.setStat("swords", STAT_MEDIUM_HIGH)
	H.setStat("pistol", STAT_MEDIUM_HIGH)
	H.setStat("bows", STAT_MEDIUM_HIGH)
	H.setStat("medical", STAT_VERY_HIGH)
	give_random_name(H)
	return TRUE

/datum/job/roman/garrison_captain	//Roman - Centurion
	title = "Centurion"
	en_meaning = "Roman Commander"
	rank_abbreviation = "Cen."

	spawn_location = "JoinLateRO"

	is_commander = TRUE
	is_occupation = TRUE
	is_officer = TRUE

	min_positions = 1
	max_positions = 1

/datum/job/roman/captain/equip(var/mob/living/human/H)
	if (!H)	return FALSE
		//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/roman(H), slot_shoes)
		//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/roman_centurion(H), slot_w_uniform)
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/cape(H), slot_wear_suit)
		//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/roman_centurion(H), slot_head)
		//weapons
	H.equip_to_slot_or_del(new /obj/item/weapon/material/sword/gladius/iron(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/stack/money/dollar/fifty(H), slot_l_store)
	H.add_note("Role", "You are a <b>[title]</b>, the leader of a <b>Centuria</b>, a company of Legionaries. Organize your <b>Decurions</b> and lead your soldiers to victory!</b>.")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_LOW)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_HIGH)
	H.setStat("pistol", STAT_LOW)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)
	give_random_name(H)

	return TRUE

/datum/job/roman/squad_leader	//Roman - Decurion
	title = "Decurion"
	en_meaning = "Roman Squad Leader"
	rank_abbreviation = "Dec."

	spawn_location = "JoinLateRO"

	is_officer = TRUE
	is_occupation = TRUE

	min_positions = 2
	max_positions = 10

/datum/job/roman/squad_leader/equip(var/mob/living/human/H)
	if (!H)	return FALSE
		//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/roman(H), slot_shoes)
		//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/roman(H), slot_w_uniform)
		//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/roman_decurion(H), slot_head)
		//weapons
	H.equip_to_slot_or_del(new /obj/item/weapon/material/sword/gladius/iron(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/weapon/material/pilum(H), slot_back)
	H.equip_to_slot_or_del(new /obj/item/weapon/shield/roman/praetorian(H), slot_l_hand)
	H.equip_to_slot_or_del(new /obj/item/weapon/material/pilum(H), slot_r_hand)
	H.add_note("Role", "You are a <b>[title]</b>, the leader of a Roman legionary squad. Lead your <b>Legionaries</b> to battle, following the orders of the <b>Centurion</b>!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_LOW)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_HIGH)
	H.setStat("pistol", STAT_LOW)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)
	give_random_name(H)
	return TRUE

/datum/job/roman/garrison
	title = "Legionarius"
	en_meaning = "Garrison"
	rank_abbreviation = ""

	spawn_location = "JoinLateRO"

	is_occupation = TRUE
	min_positions = 12
	max_positions = 200

/datum/job/roman/garrison/equip(var/mob/living/human/H)
	if (!H)	return FALSE
		//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/roman(H), slot_shoes)
		//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/roman(H), slot_w_uniform)
		//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/roman(H), slot_head)
		//weapons
	H.equip_to_slot_or_del(new /obj/item/weapon/material/sword/gladius/iron(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/weapon/material/pilum(H), slot_back)
	H.equip_to_slot_or_del(new /obj/item/weapon/shield/roman(H), slot_l_hand)
	H.equip_to_slot_or_del(new /obj/item/weapon/material/pilum(H), slot_r_hand)
	H.equip_to_slot_or_del(new /obj/item/stack/money/dollar/twenty(H), slot_l_store)
	H.add_note("Role", "You are a <b>[title]</b>, a soldier of the Roman Army. You are equipped with two <b>Pila</b> javelins, your shield and a <b>Gladius</b>.")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_LOW)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_HIGH)
	H.setStat("pistol", STAT_LOW)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)
	give_random_name(H)

	return TRUE

/datum/job/roman/auxilia/israelite
	default_language = "Latin"
	additional_languages = list("Hebrew" = 100, "Greek" = 10, "Arabic" = 5)

/datum/job/roman/auxilia/israelite/give_random_name(var/mob/living/human/H)
	H.name = H.species.get_random_hebrew_name(H.gender)
	H.real_name = H.name

/datum/job/roman/auxilia/israelite/soldier
	title = "Israel Auxilia"
	en_meaning = "Israel Auxiliary"
	rank_abbreviation = ""

	spawn_location = "JoinLateRO"

	is_occupation = TRUE
	min_positions = 12
	max_positions = 200

/datum/job/roman/auxilia/israelite/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/roman(H), slot_shoes)
//clothes
	var/randcloth = pick(1,2,3)
	if (randcloth == 1)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/greek1(H), slot_w_uniform)
	else if (randcloth == 2)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/greek2(H), slot_w_uniform)
	else if (randcloth == 3)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/greek3(H), slot_w_uniform)
//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/greek(H), slot_head)
//weapons
	H.equip_to_slot_or_del(new /obj/item/weapon/material/sword/xiphos/bronze(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/weapon/shield/aspis(H), slot_l_hand)
	H.equip_to_slot_or_del(new /obj/item/weapon/material/spear/sarissa(H), slot_r_hand)
	H.equip_to_slot_or_del(new /obj/item/stack/money/dollar/ten(H), slot_l_store)
	H.add_note("Role", "You are a <b>[title]</b>, hired by the Romans to join their foreign legion of the auxiliaries. Your loyalty is to money.")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_LOW)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_HIGH)
	H.setStat("pistol", STAT_LOW)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)
	give_random_name(H)

	return TRUE

///////////ROMAN CITIZENS////////////

/datum/job/roman/citizen/citizen
	title = "Civitas"
	spawn_location = "JoinLateCivC"
	en_meaning = "Roman Citizen"
	min_positions = 1
	max_positions = 100
	is_occupation = TRUE

/datum/job/roman/citizen/citizen/equip(var/mob/living/human/H)
	if (!H)	return FALSE
	H.add_note("Role", "You are a <b>Roman Citizen</b>. You make up the elites of society, and are above the locals.")
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/roman(H), slot_shoes)
		//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/custom/toga(H), slot_w_uniform)
	H.equip_to_slot_or_del(new /obj/item/stack/money/dollar/twenty(H), slot_l_store)
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_MEDIUM_LOW)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_MEDIUM_LOW)
	H.setStat("pistol", STAT_MEDIUM_LOW)
	H.setStat("bows", STAT_MEDIUM_LOW)
	H.setStat("medical", STAT_MEDIUM_LOW)
	give_random_name(H)

	return TRUE
/datum/job/roman/city_doctor //unused, maybe use in the future? idk
	title = "Medicus"
	en_meaning = "Doctor"
	rank_abbreviation = "Medicus"

	spawn_location = "JoinLateROG"

	is_medic = TRUE
	is_gladiator = TRUE
	//is_occupation = TRUE
	min_positions = 3
	max_positions = 8
/datum/job/roman/city_doctor/equip(var/mob/living/human/H)
	if (!H)	return FALSE
		//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/roman(H), slot_shoes)
		//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/custom/toga(H), slot_w_uniform)
	H.equip_to_slot_or_del(new /obj/item/weapon/doctor_handbook(H), slot_r_store)

	H.add_note("Role", "You are a <b>[title]</b>. Keep the arena clean and the men alive.")
	H.setStat("strength", STAT_NORMAL)
	H.setStat("crafting", STAT_MEDIUM_HIGH)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_MEDIUM_HIGH)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL)
	give_random_name(H)
	return TRUE

//HEBREWS//

/datum/job/israelite
	faction = "Human"
	is_ancient = TRUE
/datum/job/israelite/give_random_name(var/mob/living/human/H)
	H.name = H.species.get_random_hebrew_name()
	H.real_name = H.name

/datum/job/israelite/citizen/citizen
	title = "B'nei Yisrael"
	spawn_location = "JoinLateCivC"
	en_meaning = "Jewish Citizen"
	min_positions = 1
	max_positions = 100
	is_occupation = TRUE

/datum/job/israelite/citizen/citizen/equip(var/mob/living/human/H)
	if (!H)	return FALSE
	H.add_note("Role", "You are a <b>[title]</b>.")
//shoes
	if (prob(30))
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/medieval(H), slot_shoes)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/leatherboots1(H), slot_shoes)
	if (H.gender == "male")
		var/randcloth = rand(1,5)
		if (randcloth == 1)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/medieval/red(H), slot_w_uniform)
		else if (randcloth == 2)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/medieval/blue2(H), slot_w_uniform)
		else if (randcloth == 3)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/medieval/blue(H), slot_w_uniform)
		else if (randcloth == 4)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/medieval/leather(H), slot_w_uniform)
		else if (randcloth == 5)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/medieval/yellow(H), slot_w_uniform)
	else
		var/randcloth = rand(1,3)
		if (randcloth == 1)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/civf1(H), slot_w_uniform)
		else if (randcloth == 2)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/civf2(H), slot_w_uniform)
		else if (randcloth == 3)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/civf3(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/head/kerchief(H), slot_head)
		H.equip_to_slot_or_del(new /obj/item/stack/money/dollar/five(H), slot_l_store)
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_MEDIUM_LOW)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_MEDIUM_LOW)
	H.setStat("pistol", STAT_MEDIUM_LOW)
	H.setStat("bows", STAT_MEDIUM_LOW)
	H.setStat("medical", STAT_MEDIUM_LOW)
	give_random_name(H)
	return TRUE

/datum/job/israelite/citizen/doctor //TODO: ADD BACKPACK WITH MEDICINE, AND ADD BACKPACKS TO ALL OTHER ROLES
	additional_languages = list("Greek" = 100)
	title = "Rofe"
	en_meaning = "Doctor"
	rank_abbreviation = "Rofe"

	spawn_location = "JoinLateROG"

	is_medic = TRUE
	is_occupation = TRUE
	min_positions = 3
	max_positions = 8

/datum/job/israelite/citizen/doctor/equip(var/mob/living/human/H)
	if (!H)	return FALSE

//shoes
	if (prob(30))
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/medieval(H), slot_shoes)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/leatherboots1(H), slot_shoes)
	if (H.gender == "male")
		var/randcloth = rand(1,5)
		if (randcloth == 1)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/medieval/red(H), slot_w_uniform)
		else if (randcloth == 2)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/medieval/blue2(H), slot_w_uniform)
		else if (randcloth == 3)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/medieval/blue(H), slot_w_uniform)
		else if (randcloth == 4)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/medieval/leather(H), slot_w_uniform)
		else if (randcloth == 5)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/medieval/yellow(H), slot_w_uniform)
	else
		var/randcloth = rand(1,3)
		if (randcloth == 1)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/civf1(H), slot_w_uniform)
		else if (randcloth == 2)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/civf2(H), slot_w_uniform)
		else if (randcloth == 3)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/civf3(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/head/kerchief(H), slot_head)
	H.equip_to_slot_or_del(new /obj/item/weapon/doctor_handbook(H), slot_r_store)
	H.equip_to_slot_or_del(new /obj/item/stack/money/dollar/ten(H), slot_l_store)
	H.add_note("Role", "You are a <b>[title]</b>. Educated in Greek medicine and philosophy, you are here to provide healthcare, whether free or paid.")
	H.setStat("strength", STAT_NORMAL)
	H.setStat("crafting", STAT_MEDIUM_HIGH)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_MEDIUM_HIGH)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL)
	give_random_name(H)
	return TRUE

/datum/job/israelite/citizen/priest
	title = "Rabbi"
	en_meaning = "Rabbi"
	rank_abbreviation = "Rabbi"

	spawn_location = "JoinLateCivC"

	is_religious = TRUE
	is_occupation = TRUE

	min_positions = 1
	max_positions = 20

/datum/job/israelite/citizen/priest/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/medieval(H), slot_shoes)

	if (H.gender == "male")
		H.equip_to_slot_or_del(new /obj/item/clothing/under/chaplain(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/head/chaplain_hood(H), slot_head)
		H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/jacket/chaplain(H), slot_wear_suit)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/under/nun(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/head/nun_hood(H), slot_head)

	H.equip_to_slot_or_del(new /obj/item/weapon/storage/bible/torah(H), slot_l_hand)
	H.equip_to_slot_or_del(new /obj/item/stack/money/dollar/five(H), slot_l_store)
	
	H.add_note("Role", "You are a <b>[title]</b>, the spiritual leaders of all Israelites.")
	H.setStat("strength", STAT_MEDIUM_LOW)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_MEDIUM_LOW)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_MEDIUM_LOW)
	H.setStat("pistol", STAT_MEDIUM_LOW)
	H.setStat("bows", STAT_MEDIUM_LOW)
	H.setStat("medical", STAT_HIGH)
	give_random_name(H)
	return TRUE