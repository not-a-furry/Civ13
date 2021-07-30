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

/datum/job/roman/governor/equip(var/mob/living/human/H)
	if (!H)	return FALSE
		//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/roman(H), slot_shoes)
		//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/custom/toga/purple(H), slot_w_uniform)
	H.equip_to_slot_or_del(new /obj/item/weapon/material/sword/gladius/iron(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/stack/money/dollar/onehundy(H), slot_l_store)
	world << "<b><big>[H.real_name] is the [title]!</big></b>"
	H.add_note("Role", "You are the <b>[title]</b>. Govern over your people through violent crucifixion and benevolent gladiatorial games! Do not anger the locals too much though, they are prone to revolting.")

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
	en_meaning = "Roman Garrison Soldier"
	rank_abbreviation = ""

	spawn_location = "JoinLateRO"

	is_occupation = TRUE
	min_positions = 12
	max_positions = 50

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
	//additional_languages = list("Hebrew" = 50)

/datum/job/roman/citizen/citizen/equip(var/mob/living/human/H)
	if (!H)	return FALSE
	H.add_note("Role", "You are a <b>[title]</b>. You make up the elites of society, and are above the locals.")
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
	max_positions = 500
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
	en_meaning = "Priest"
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

/datum/job/israelite/citizen/merchant
	title = "Socher"
	en_meaning = "Merchant/Trader"
	rank_abbreviation = "Socher"

	spawn_location = "JoinLateCivA"
	is_merchant = TRUE
	is_occupation = TRUE

	min_positions = 1
	max_positions = 3

/datum/job/israelite/citizen/merchant/equip(var/mob/living/human/H)
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
	H.equip_to_slot_or_del(new/obj/item/stack/money/dollar/twenty(H), slot_l_store)
	H.equip_to_slot_or_del(new/obj/item/stack/money/dollar/twenty(H), slot_r_store)

	H.add_note("Role", "You are a <b>[title]</b>. Sell produce and get rich!")
	H.setStat("strength", STAT_NORMAL)
	H.setStat("crafting", STAT_MEDIUM_HIGH)
	H.setStat("rifle", STAT_MEDIUM_LOW)
	H.setStat("dexterity", STAT_MEDIUM_HIGH)
	H.setStat("swords", STAT_MEDIUM_LOW)
	H.setStat("pistol", STAT_MEDIUM_LOW)
	H.setStat("bows", STAT_MEDIUM_LOW)
	H.setStat("medical", STAT_NORMAL)
	H.make_businessman()

	return TRUE
	
/datum/job/israelite/citizen/blacksmith
	title = "Napakh"
	en_meaning = "Blacksmith"
	rank_abbreviation = "Blacksmith"

	spawn_location = "JoinLateCivB"

	is_occupation = TRUE

	min_positions = 1
	max_positions = 2

/datum/job/israelite/citizen/blacksmith/equip(var/mob/living/human/H)
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

	H.equip_to_slot_or_del(new 	/obj/item/weapon/hammer(H), slot_belt)
	H.equip_to_slot_or_del(new 	/obj/item/stack/material/iron/twentyfive(H), slot_l_hand)
	H.equip_to_slot_or_del(new/obj/item/stack/money/dollar/twenty(H), slot_l_store)

	H.add_note("Role", "You are a <b>[title]</b>. Your job is to craft weapons. However, you probably should follow the <b>Governor's</b> orders!")
	H.setStat("strength", STAT_VERY_HIGH)
	H.setStat("crafting", STAT_VERY_VERY_HIGH)
	H.setStat("rifle", STAT_MEDIUM_LOW)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_MEDIUM_HIGH)
	H.setStat("pistol", STAT_MEDIUM_LOW)
	H.setStat("bows", STAT_VERY_LOW)
	H.setStat("medical", STAT_VERY_LOW)

	return TRUE

/datum/job/israelite/citizen/innkeeper
	title = "Pivindqaaִy"
	en_meaning = "Innkeeper"
	rank_abbreviation = ""

	spawn_location = "JoinLateCivD"

	is_occupation = TRUE

	min_positions = 1
	max_positions = 2

/datum/job/israelite/citizen/innkeeper/equip(var/mob/living/human/H)
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

	H.equip_to_slot_or_del(new/obj/item/stack/money/dollar/fifty(H), slot_l_store)
	H.equip_to_slot_or_del(new/obj/item/weapon/key/civ/inn(H), slot_r_store)
	H.equip_to_slot_or_del(new/obj/item/weapon/material/knife/butcher(H), slot_belt)

	H.add_note("Role", "You are a <b>[title]</b>. Your job is to run an Inn and house tired customers!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_MEDIUM_LOW)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_MEDIUM_LOW)
	H.setStat("bows", STAT_MEDIUM_LOW)
	H.setStat("medical", STAT_NORMAL)
	return TRUE

/datum/job/israelite/citizen/barkeep
	title = "Brmn"
	en_meaning = "Taverner/Barkeeper"
	rank_abbreviation = ""

	spawn_location = "JoinLateCiv"

	is_occupation = TRUE

	min_positions = 1
	max_positions = 1

/datum/job/israelite/citizen/barkeep/equip(var/mob/living/human/H)
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
	H.equip_to_slot_or_del(new/obj/item/stack/money/dollar/fifty(H), slot_l_store)
	H.equip_to_slot_or_del(new/obj/item/weapon/key/civ/inn(H), slot_r_store)
	H.equip_to_slot_or_del(new/obj/item/weapon/material/knife/butcher(H), slot_belt)

	H.add_note("Role", "You are a <b>[title]</b>. Your job is to man the Tavern to supply the people with wine and food!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_MEDIUM_LOW)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_MEDIUM_LOW)
	H.setStat("bows", STAT_MEDIUM_LOW)
	H.setStat("medical", STAT_NORMAL)

	return TRUE

/////////EVENTS////////////

/datum/job/roman/imperator //emperor visits!
	title = "Imperator"
	en_meaning = "Emperor"
	rank_abbreviation = "Imperator"
	spawn_location = "JoinLateROG"
	
	is_commander = TRUE
	is_officer = TRUE
	whitelisted = TRUE
	is_imperator = TRUE
	is_imperator_emperor = TRUE

	min_positions = 1
	max_positions = 1

/datum/job/roman/emperor/equip(var/mob/living/human/H)
	if (!H)	return FALSE
		//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/roman(H), slot_shoes)
		//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/custom/toga/purple(H), slot_w_uniform)
	H.equip_to_slot_or_del(new /obj/item/weapon/material/sword/gladius/iron(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/clothing/head/laurelcrown(H), slot_head) //emperor bears the wreath of Caesar. All hail to him!
	H.equip_to_slot_or_del(new /obj/item/stack/money/dollar/onehundy(H), slot_l_store)
	world << "<b><big>[H.real_name] is the [title]!</big></b>"
	H.add_note("Role", "You are the <b>[title]</b>. You have come to visit the town and its occupants.")

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

/datum/job/roman/praetorian //emperor visits!
	title = "Praetorian"
	en_meaning = "Imperial Guard"
	rank_abbreviation = "Praetorian"

	spawn_location = "JoinLateRO"

	is_imperator = TRUE 

	min_positions = 4
	max_positions = 4

/datum/job/roman/praetorian/equip(var/mob/living/human/H)
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
	H.add_note("Role", "You are a <b>[title]</b>, the protector the Emperor. You are responsible for keeping them safe and secure, at the cost of your own life. You only listen to the Emperor. Don't forget - bribery and corruption always played a part of Roman history...")
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

/datum/job/roman/legion/soldier
	title = "First Legion"
	en_meaning = "First Legion"
	rank_abbreviation = ""

	spawn_location = "JoinLateRO"

	is_imperator = TRUE 
	is_imperator_legion = TRUE

	min_positions = 4
	max_positions = 4

/datum/job/roman/legion/soldier/equip(var/mob/living/human/H)
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
	H.add_note("Role", "You are a <b>[title]</b>, the protector the Emperor. You are responsible for keeping them safe and secure, at the cost of your own life. You only listen to the Emperor. Don't forget - bribery and corruption always played a part of Roman history...")
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

///GERMAN INVADERS///

/datum/job/german/invader/chieftain
	title = "Jarl"
	en_meaning = "Chieftain"
	rank_abbreviation = "Jarl"

	spawn_location = "JoinLateGE"
	additional_languages = list("Latin" = 100)
	is_ancient = TRUE
	is_commander = TRUE
	is_officer = TRUE
	is_german_invasion = TRUE
	min_positions = 2
	max_positions = 2

/datum/job/german/invader/chieftain/equip(var/mob/living/human/H)
	if (!H)	return FALSE
		//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/steppe_shoes(H), slot_shoes)
		//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/celtic_red(H), slot_w_uniform)
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/armor/medieval/bronze_chestplate(H), slot_wear_suit)
		//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/asterix/conspicious(H), slot_head)
		//weapons
	H.equip_to_slot_or_del(new /obj/item/weapon/material/sword/gaelic/iron(H), slot_r_hand)
	H.equip_to_slot_or_del(new /obj/item/weapon/material/sword/gaelic/iron(H), slot_l_hand)
	H.add_note("Role", "You are a <b>[title]</b>, the chieftain of your tribe. Will you lead your men to plunder and glory, liberate the Jews, or genocide everyone? The choice is up to you! Your men are awaiting your choice.")

	H.setStat("strength", STAT_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_LOW)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_HIGH)
	H.setStat("pistol", STAT_LOW)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)
	give_random_name(H)

	return TRUE


/datum/job/german/invader/swordsman
	title = "Sahsnotoz"
	en_meaning = "Swordsman"
	rank_abbreviation = ""

	spawn_location = "JoinLateGE"
	is_ancient = TRUE
	is_german_invasion = TRUE

	min_positions = 10
	max_positions = 10

/datum/job/german/invader/swordsman/equip(var/mob/living/human/H)
	if (!H)	return FALSE
		//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/steppe_shoes(H), slot_shoes)
		//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/celtic_short_braccae(H), slot_w_uniform)
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/armor/ancient/bronze_lamellar(H), slot_wear_suit)
		//head
	if (prob(50))
		H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/asterix(H), slot_head)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/horned(H), slot_head)
		//weapons
	H.equip_to_slot_or_del(new /obj/item/weapon/material/sword/longsword/iron(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/weapon/shield/scutum(H), slot_back)

	H.add_note("Role", "You are a <b>[title]</b>, a germanic swordsman.")

	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_LOW)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_HIGH)
	H.setStat("pistol", STAT_LOW)
	H.setStat("bows", STAT_LOW)
	H.setStat("medical", STAT_LOW)
	give_random_name(H)

	return TRUE

/datum/job/german/invader/axeman
	title = "Teceitos"
	en_meaning = "Axeman"
	rank_abbreviation = ""

	spawn_location = "JoinLateGE"
	is_ancient = TRUE
	is_german_invasion = TRUE

	min_positions = 10
	max_positions = 10


/datum/job/german/invader/axeman/equip(var/mob/living/human/H)
	if (!H)	return FALSE
		//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/roman(H), slot_shoes)
		//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/celtic_short_braccae(H), slot_w_uniform)
		//head
	if (prob(50))
		H.equip_to_slot_or_del(new /obj/item/clothing/head/foxpelt(H), slot_head)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/head/wolfpelt(H), slot_head)
	H.equip_to_slot_or_del(new /obj/item/weapon/material/hatchet/tribal(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/weapon/material/hatchet/battleaxe(H), slot_l_hand)
	H.equip_to_slot_or_del(new /obj/item/weapon/shield/blue_buckler(H), slot_back)

	H.add_note("Role", "You are a <b>[title]</b>, a celtic axeman. Use your speed to manouver around the enemy and your axe to destroy their armor and shields.")

	H.setStat("strength", STAT_VERY_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_LOW)
	H.setStat("dexterity", STAT_HIGH)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_LOW)
	H.setStat("bows", STAT_LOW)
	H.setStat("medical", STAT_LOW)
	give_random_name(H)

	return TRUE


/datum/job/german/invader/spearman
	title = "Framaharjoz"
	en_meaning = "Spearman"
	rank_abbreviation = ""

	spawn_location = "JoinLateGE"
	is_ancient = TRUE
	is_german_invasion = TRUE

	min_positions = 20
	max_positions = 20

/datum/job/german/invader/spearman/equip(var/mob/living/human/H)
	if (!H)	return FALSE
		//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/steppe_shoes(H), slot_shoes)
		//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/celtic_long_braccae(H), slot_w_uniform)
	if (prob(50))
		H.equip_to_slot_or_del(new /obj/item/clothing/suit/armor/medieval/steppe_leather(H), slot_wear_suit)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/suit/armor/medieval/leather(H), slot_wear_suit)
		//head
	if (prob(50))
		H.equip_to_slot_or_del(new /obj/item/clothing/head/bearpelt/brown(H), slot_head)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/head/bearpelt/black(H), slot_head)
		//weapons
	H.equip_to_slot_or_del(new /obj/item/weapon/material/pike(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/weapon/material/pike(H), slot_l_hand)
	H.equip_to_slot_or_del(new /obj/item/weapon/shield/scutum(H), slot_back)
	H.add_note("Role", "You are a <b>[title]</b>, a germanic spearman.")

	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_LOW)
	H.setStat("dexterity", STAT_VERY_HIGH)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_LOW)
	H.setStat("bows", STAT_LOW)
	H.setStat("medical", STAT_LOW)
	give_random_name(H)

	return TRUE

/datum/job/german/invader/skirmisher
	title = "Swainoz"
	en_meaning = "Skirmisher"
	rank_abbreviation = ""

	spawn_location = "JoinLateGE"
	is_ancient = TRUE
	is_german_invasion = TRUE

	min_positions = 10
	max_positions = 10

/datum/job/german/invader/skirmisher/equip(var/mob/living/human/H)
	if (!H)	return FALSE
		//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/sandal(H), slot_shoes)
		//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/celtic_green(H), slot_w_uniform)
		//weapons
	H.equip_to_slot_or_del(new /obj/item/weapon/material/hatchet(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/bow/shortbow(H), slot_l_hand)
	H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/quiver/full(H), slot_back)
		//head
	if (prob(50))
		H.equip_to_slot_or_del(new /obj/item/clothing/head/sheeppelt(H), slot_head)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/head/goatpelt(H), slot_head)
	H.add_note("Role", "You are a <b>[title]</b>, a germanic skirmisher.")

	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_LOW)
	H.setStat("dexterity", STAT_VERY_HIGH)
	H.setStat("swords", STAT_LOW)
	H.setStat("pistol", STAT_LOW)
	H.setStat("bows", STAT_HIGH)
	H.setStat("medical", STAT_LOW)
	give_random_name(H)

	return TRUE

///ARAB INVADERS////

/datum/job/arab
	faction = "Human"

/datum/job/arab/give_random_name(var/mob/living/human/H)
	H.name = H.species.get_random_arab_name()
	H.real_name = H.name

/datum/job/arab/invader/lord
	title = "Emir"
	en_meaning = "Lord"
	rank_abbreviation = "Emir"


	spawn_location = "JoinLateAR"
	is_officer = TRUE
	is_commander = TRUE
	whitelisted = TRUE
	is_ancient = TRUE
	is_arabic_invasion = TRUE

	min_positions = 1
	max_positions = 1

/datum/job/arab/medieval_lord/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/medieval/arab(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/medieval/arabic_tunic(H), slot_w_uniform)
//jacket
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/jacket/arabic_robe(H), slot_wear_suit)
//head

	H.equip_to_slot_or_del(new /obj/item/clothing/head/turban(H), slot_head)

	H.equip_to_slot_or_del(new /obj/item/weapon/material/sword/saif(H), slot_belt)

	H.add_note("Role", "You are a <b>[title]</b>, the military leader of this group of soldiers. Do you wish to ransack the city, occupy it, or do diplomacy? The choice is up to you! Your men are completely loyal to your cause.")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_HIGH)
	H.setStat("swords", STAT_HIGH)
	H.setStat("pistol", STAT_MEDIUM_HIGH)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)
	give_random_name(H)

	return TRUE

/datum/job/arab/invader/knight
	title = "Mamluk"
	en_meaning = "Heavy Infantry"
	rank_abbreviation = "Mamluk"

	spawn_location = "JoinLateAR"
	is_officer = TRUE
	is_ancient = TRUE
	is_arabic_invasion = TRUE

	min_positions = 2
	max_positions = 5

/datum/job/arab/invader/knight/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/medieval/knight(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/medieval/arabic_tunic(H), slot_w_uniform)
//jacket
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/armor/medieval/hauberk(H), slot_wear_suit)
//head
	if (prob(65))
		H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/medieval/arab2(H), slot_head)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/medieval/arab3(H), slot_head)

	H.equip_to_slot_or_del(new /obj/item/weapon/material/pike(H), slot_l_hand)
	H.equip_to_slot_or_del(new /obj/item/weapon/material/sword/saif(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/weapon/shield/arab_buckler(H), slot_back)
	H.add_note("Role", "You are a <b>[title]</b>. Organize your men and obey your Emir's orders!")
	H.setStat("strength", STAT_VERY_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_HIGH)
	H.setStat("swords", STAT_VERY_HIGH)
	H.setStat("pistol", STAT_MEDIUM_HIGH)
	H.setStat("bows", STAT_MEDIUM_LOW)
	H.setStat("medical", STAT_MEDIUM_LOW)
	give_random_name(H)

	return TRUE

/datum/job/arab/invader/swordsman
	title = "Sayaf"
	en_meaning = "Swordsman"
	rank_abbreviation = ""

	spawn_location = "JoinLateAR"

	is_ancient = TRUE
	is_arabic_invasion = TRUE


	min_positions = 10
	max_positions = 10

/datum/job/arab/invader/swordsman/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/medieval/arab(H), slot_shoes)
//clothes
	var/randcloth = pick(1,2,3)
	if (randcloth == 1)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/medieval/arab1(H), slot_w_uniform)
	else if (randcloth == 2)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/medieval/arab2(H), slot_w_uniform)
	else if (randcloth == 3)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/medieval/arab3(H), slot_w_uniform)
//jacket
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/armor/medieval/chainmail(H), slot_wear_suit)

//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/medieval/arab(H), slot_head)

	H.equip_to_slot_or_del(new /obj/item/weapon/material/sword/scimitar(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/weapon/shield/arab_buckler(H), slot_back)
	H.add_note("Role", "You are a <b>[title]</b>, an arabic swordsman from the tribes. Obey your officers and Emir!")
	H.setStat("strength", STAT_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_VERY_HIGH)
	H.setStat("swords", STAT_VERY_HIGH)
	H.setStat("pistol", STAT_MEDIUM_HIGH)
	H.setStat("bows", STAT_MEDIUM_LOW)
	H.setStat("medical", STAT_MEDIUM_LOW)
	give_random_name(H)

	return TRUE

/datum/job/arab/invader/spearman
	title = "Alraamih"
	en_meaning = "Spearman"
	rank_abbreviation = ""

	spawn_location = "JoinLateAR"

	is_ancient = TRUE
	is_arabic_invasion = TRUE


	min_positions = 20
	max_positions = 20

/datum/job/arab/invader/spearman/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/medieval/arab(H), slot_shoes)
//clothes
	var/randcloth = pick(1,2,3)
	if (randcloth == 1)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/medieval/arab1(H), slot_w_uniform)
	else if (randcloth == 2)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/medieval/arab2(H), slot_w_uniform)
	else if (randcloth == 3)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/medieval/arab3(H), slot_w_uniform)

//jacket
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/armor/medieval/chainmail(H), slot_wear_suit)

//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/medieval/arab(H), slot_head)

	var/randspear = pick(1,2,3)
	if (randspear == 1)
		H.equip_to_slot_or_del(new /obj/item/weapon/material/spear(H), slot_belt)
	if (randspear == 2)
		H.equip_to_slot_or_del(new /obj/item/weapon/material/pike(H), slot_belt)
	if (randspear == 3)
		H.equip_to_slot_or_del(new /obj/item/weapon/material/halberd(H), slot_belt)

	H.equip_to_slot_or_del(new /obj/item/weapon/shield/arab_buckler(H), slot_back)
	H.add_note("Role", "You are a <b>[title]</b>, an arabic pikeman. You are the main infantry force. Follow your officers and Emir's orders!")
	H.setStat("strength", STAT_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_LOW)
	H.setStat("dexterity", STAT_VERY_HIGH)
	H.setStat("swords", STAT_HIGH)
	H.setStat("pistol", STAT_LOW)
	H.setStat("bows", STAT_MEDIUM_LOW)
	H.setStat("medical", STAT_MEDIUM_LOW)
	give_random_name(H)

	return TRUE

/datum/job/arab/invader/archer
	title = "Rami Alsiham"
	en_meaning = "Archer"
	rank_abbreviation = ""

	spawn_location = "JoinLateAR"

	is_ancient = TRUE
	is_arabic_invasion = TRUE

	min_positions = 6
	max_positions = 40

/datum/job/arab/invader/archer/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/medieval/arab(H), slot_shoes)
//clothes
	var/randcloth = pick(1,2,3)
	if (randcloth == 1)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/medieval/arab1(H), slot_w_uniform)
	else if (randcloth == 2)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/medieval/arab2(H), slot_w_uniform)
	else if (randcloth == 3)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/medieval/arab3(H), slot_w_uniform)

	H.equip_to_slot_or_del(new /obj/item/clothing/suit/armor/medieval/chainmail(H), slot_wear_suit)

//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/medieval/arab(H), slot_head)


	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/bow/longbow(H), slot_l_hand)
	H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/quiver/full(H), slot_back)
	H.equip_to_slot_or_del(new /obj/item/weapon/material/sword/smallsword(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/weapon/shield/arab_buckler(H), slot_r_hand)
	H.add_note("Role", "You are a <b>[title]</b>. Support your infantry, and obey your officers and Emir!")
	H.setStat("strength", STAT_NORMAL)
	H.setStat("crafting", STAT_MEDIUM_HIGH)
	H.setStat("rifle", STAT_LOW)
	H.setStat("dexterity", STAT_VERY_HIGH)
	H.setStat("swords", STAT_MEDIUM_LOW)
	H.setStat("pistol", STAT_LOW)
	H.setStat("bows", STAT_VERY_HIGH)
	H.setStat("medical", STAT_MEDIUM_LOW)
	give_random_name(H)

	return TRUE

/*
TODO:
1.Add imperator being able to start a war through his officer tab. This happens if the imperator fucking hates
what the governor is doing and can invade and take over. This spawns in the First Legion, a very strong roman army

2. add the g*rman tribals DONE

3. add the arabs

4. add the israeli uprising units, make the leader an officer

5. lastly, add the greek invaders!
*/