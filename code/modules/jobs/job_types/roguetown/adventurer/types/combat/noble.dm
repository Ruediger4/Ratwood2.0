/datum/advclass/nobleerrant
	name = "Knight Errant"
	tutorial = "You are a knight from a distant land, a scion of a noble house visiting the vale for one reason or another."
	category_tags = list(CTAG_ADVENTURER, CTAG_COURTAGENT)
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_NO_CONSTRUCT
	cmode_music = 'sound/music/combat_knight.ogg'
	outfit = /datum/outfit/job/roguetown/adventurer/knighte
	traits_applied = list(TRAIT_NOBLE, TRAIT_HEAVYARMOR)
	subclass_stats = list(
		STATKEY_STR = 2,
		STATKEY_CON = 1,
		STATKEY_WIL = 1,
		STATKEY_INT = 1,
	)

/datum/outfit/job/roguetown/adventurer/knighte/pre_equip(mob/living/carbon/human/H)
	..()
	to_chat(H, span_warning("You are a knight from a distant land, a scion of a noble house visiting the vale for one reason or another."))
	var/helmets = list(
		"Pigface Bascinet" 	= /obj/item/clothing/head/roguetown/helmet/bascinet/pigface,
		"Guard Helmet"		= /obj/item/clothing/head/roguetown/helmet/heavy/guard,
		"Barred Helmet"		= /obj/item/clothing/head/roguetown/helmet/heavy/sheriff,
		"Bucket Helmet"		= /obj/item/clothing/head/roguetown/helmet/heavy/bucket,
		"Knight Helmet"		= /obj/item/clothing/head/roguetown/helmet/heavy/knight,
		"Visored Sallet"			= /obj/item/clothing/head/roguetown/helmet/sallet/visored,
		"Armet"				= /obj/item/clothing/head/roguetown/helmet/heavy/knight/armet,
		"Hounskull Bascinet" 		= /obj/item/clothing/head/roguetown/helmet/bascinet/pigface/hounskull,
		"Etruscan Bascinet" 		= /obj/item/clothing/head/roguetown/helmet/bascinet/etruscan,
		"Slitted Kettle"		= /obj/item/clothing/head/roguetown/helmet/heavy/knight/skettle,
		"None"
		)
	var/helmchoice = input("Choose your Helm.", "TAKE UP HELMS") as anything in helmets
	if(helmchoice != "None")
		head = helmets[helmchoice]

	var/armors = list(
		"Brigandine"		= /obj/item/clothing/suit/roguetown/armor/brigandine,
		"Coat of Plates"	= /obj/item/clothing/suit/roguetown/armor/brigandine/coatplates,
		"Steel Cuirass"		= /obj/item/clothing/suit/roguetown/armor/plate/half,
		)
	var/armorchoice = input("Choose your armor.", "TAKE UP ARMOR") as anything in armors
	armor = armors[armorchoice]

	gloves = /obj/item/clothing/gloves/roguetown/chain
	pants = /obj/item/clothing/under/roguetown/chainlegs
	cloak = /obj/item/clothing/cloak/stabard
	neck = /obj/item/clothing/neck/roguetown/bevor
	shirt = /obj/item/clothing/suit/roguetown/armor/chainmail
	wrists = /obj/item/clothing/wrists/roguetown/bracers
	shoes = /obj/item/clothing/shoes/roguetown/boots/armor
	belt = /obj/item/storage/belt/rogue/leather/steel/tasset
	backl = /obj/item/storage/backpack/rogue/satchel
	beltl = /obj/item/flashlight/flare/torch/lantern
	backpack_contents = list(
		/obj/item/storage/belt/rogue/pouch/coins/poor = 1,
		/obj/item/recipe_book/survival = 1,
		)
	H.adjust_skillrank(/datum/skill/misc/riding, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/polearms, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/maces, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/swords, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/shields, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/whipsflails, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/swimming, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
	H.dna.species.soundpack_m = new /datum/voicepack/male/knight()
	var/turf/TU = get_turf(H)
	if(TU)
		new /mob/living/simple_animal/hostile/retaliate/rogue/saiga/tame/saddled(TU)
	H.set_blindness(0)
	var/weapons = list("Longsword","Mace + Shield","Flail + Shield","Billhook","Battle Axe","Greataxe")
	var/weapon_choice = input("Choose your weapon.", "TAKE UP ARMS") as anything in weapons
	switch(weapon_choice)
		if("Longsword")
			H.adjust_skillrank(/datum/skill/combat/swords, 1, TRUE)
			beltr = /obj/item/rogueweapon/sword/long
			r_hand = /obj/item/rogueweapon/scabbard/sword
		if("Mace + Shield")
			H.adjust_skillrank(/datum/skill/combat/maces, 1, TRUE)
			H.adjust_skillrank(/datum/skill/combat/shields, 1, TRUE)
			beltr = /obj/item/rogueweapon/mace
			backr = /obj/item/rogueweapon/shield/tower/metal
		if("Flail + Shield")
			H.adjust_skillrank(/datum/skill/combat/whipsflails, 1, TRUE)
			H.adjust_skillrank(/datum/skill/combat/shields, 1, TRUE)
			beltr = /obj/item/rogueweapon/flail
			backr = /obj/item/rogueweapon/shield/tower/metal
		if("Billhook")
			H.adjust_skillrank(/datum/skill/combat/polearms, 1, TRUE)
			r_hand = /obj/item/rogueweapon/spear/billhook
			backr = /obj/item/rogueweapon/scabbard/gwstrap
		if("Battle Axe")
			H.adjust_skillrank(/datum/skill/combat/axes, 3, TRUE)
			r_hand = /obj/item/rogueweapon/stoneaxe/battle
		if("Greataxe")
			H.adjust_skillrank(/datum/skill/combat/axes, 3, TRUE)
			r_hand = /obj/item/rogueweapon/greataxe
			backr = /obj/item/rogueweapon/scabbard/gwstrap

/datum/advclass/nobleerrant/squire
	name = "Squire Errant"
	tutorial = "You are a squire who has traveled far in search of a master to train you and a lord to knight you."
	outfit = /datum/outfit/job/roguetown/adventurer/squire
	traits_applied = list(TRAIT_SQUIRE_REPAIR)
	subclass_stats = list(
		STATKEY_INT = 2,
		STATKEY_STR = 1,
		STATKEY_PER = 1,
		STATKEY_SPD = 1,
	)

/datum/outfit/job/roguetown/adventurer/squire/pre_equip(mob/living/carbon/human/H)
	..()
	to_chat(H, span_warning("You are a squire who has traveled far in search of a master to train you and a lord to knight you."))
	head = /obj/item/clothing/head/roguetown/roguehood
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather
	cloak = /obj/item/clothing/cloak/stabard
	neck = /obj/item/clothing/neck/roguetown/chaincoif/iron
	shoes = /obj/item/clothing/shoes/roguetown/boots
	belt = /obj/item/storage/belt/rogue/leather
	backr = /obj/item/storage/backpack/rogue/satchel
	beltl = /obj/item/flashlight/flare/torch/lantern
	backpack_contents = list(/obj/item/storage/belt/rogue/pouch/coins/poor = 1, /obj/item/rogueweapon/hammer/iron = 1, /obj/item/rogueweapon/tongs = 1, /obj/item/recipe_book/survival = 1)
	var/armors = list("Light Armor","Medium Armor")
	var/armor_choice = input("Choose your armor.", "TAKE UP ARMS") as anything in armors
	switch(armor_choice)
		if("Light Armor")
			shirt = /obj/item/clothing/suit/roguetown/armor/gambeson
			pants = /obj/item/clothing/under/roguetown/trou/leather
			gloves = /obj/item/clothing/gloves/roguetown/fingerless_leather
			beltr = /obj/item/rogueweapon/huntingknife/idagger
			ADD_TRAIT(H, TRAIT_DODGEEXPERT, TRAIT_GENERIC)
		if("Medium Armor")
			shirt = /obj/item/clothing/suit/roguetown/armor/chainmail/iron
			pants = /obj/item/clothing/under/roguetown/chainlegs/iron
			gloves = /obj/item/clothing/gloves/roguetown/chain/iron
			beltr = /obj/item/rogueweapon/sword/iron
			ADD_TRAIT(H, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)
	H.adjust_skillrank(/datum/skill/combat/polearms, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/maces, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/swords, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/shields, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/whipsflails, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/reading, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/riding, 2, TRUE)
	H.set_blindness(0)
