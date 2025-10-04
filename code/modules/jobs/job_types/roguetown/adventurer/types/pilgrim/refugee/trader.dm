/datum/advclass/trader
	name = "Jeweler"
	tutorial = "You make your coin peddling exotic jewelry, gems, and shiny things."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_ALL_KINDS
	outfit = /datum/outfit/job/roguetown/refugee/trader
	category_tags = list(CTAG_PILGRIM, CTAG_COURTAGENT)
	traits_applied = list(TRAIT_OUTLANDER, TRAIT_SEEPRICES)
	subclass_stats = list(
		STATKEY_INT = 3,
		STATKEY_PER = 1,
		STATKEY_STR = 1,
		STATKEY_WIL = 1
	)

/datum/outfit/job/roguetown/refugee/trader/pre_equip(mob/living/carbon/human/H)
	..()
	to_chat(H, span_warning("You make your coin peddling exotic jewelry, gems, and shiny things."))
	H.adjust_skillrank(/datum/skill/combat/wrestling, 1, TRUE)
	H.adjust_skillrank(/datum/skill/combat/unarmed, 1, TRUE)
	H.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
	H.adjust_skillrank(/datum/skill/craft/blacksmithing, 3, TRUE)
	H.adjust_skillrank(/datum/skill/craft/weaponsmithing, 2, TRUE)
	H.adjust_skillrank(/datum/skill/craft/crafting, 2, TRUE)
	H.adjust_skillrank(/datum/skill/labor/mining, 2, TRUE)
	H.adjust_skillrank(/datum/skill/craft/smelting, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/swimming, 1, TRUE)
	H.adjust_skillrank(/datum/skill/misc/climbing, 1, TRUE)
	mask = /obj/item/clothing/mask/rogue/lordmask
	shoes = /obj/item/clothing/shoes/roguetown/boots
	pants = /obj/item/clothing/under/roguetown/tights/black
	shirt = /obj/item/clothing/suit/roguetown/shirt/tunic/purple
	belt = /obj/item/storage/belt/rogue/leather/black
	cloak = /obj/item/clothing/cloak/raincloak/purple
	backl = /obj/item/storage/backpack/rogue/satchel
	backr = /obj/item/storage/backpack/rogue/satchel
	neck = /obj/item/storage/belt/rogue/pouch/coins/mid
	beltl = /obj/item/flashlight/flare/torch/lantern
	beltr = /obj/item/rogueweapon/huntingknife
	backpack_contents = list(
		/obj/item/clothing/ring/silver = 2,
		/obj/item/clothing/ring/gold = 1,
		/obj/item/rogueweapon/tongs = 1,
		/obj/item/rogueweapon/hammer/steel = 1,
		/obj/item/roguegem/yellow = 1,
		/obj/item/roguegem/green = 1,
		/obj/item/recipe_book/survival = 1,
		/obj/item/rogueweapon/scabbard/sheath = 1
		)

/datum/advclass/trader/doomsayer
	name = "Doomsayer"
	tutorial = "THE WORLD IS ENDING!!! At least, that's what you want your clients to believe. You'll offer them a safe place in the new world, of course - built by yours truly."
	outfit = /datum/outfit/job/roguetown/refugee/doomsayer
	subclass_stats = list(
		STATKEY_INT = 3,
		STATKEY_PER = 1,
		STATKEY_STR = 1,
		STATKEY_CON = 1
	)

/datum/outfit/job/roguetown/refugee/doomsayer/pre_equip(mob/living/carbon/human/H)
	..()
	to_chat(H, span_warning("THE WORLD IS ENDING!!! At least, that's what you want your clients to believe. You'll offer them a safe place in the new world, of course - built by yours truly."))
	H.adjust_skillrank(/datum/skill/combat/wrestling, 1, TRUE)
	H.adjust_skillrank(/datum/skill/combat/axes, 1, TRUE)
	H.adjust_skillrank(/datum/skill/combat/unarmed, 1, TRUE)
	H.adjust_skillrank(/datum/skill/misc/reading, 2, TRUE)
	H.adjust_skillrank(/datum/skill/craft/carpentry, 3, TRUE)
	H.adjust_skillrank(/datum/skill/craft/masonry, 3, TRUE)
	H.adjust_skillrank(/datum/skill/craft/crafting, 2, TRUE)
	H.adjust_skillrank(/datum/skill/labor/lumberjacking, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/swimming, 1, TRUE)
	H.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
	head = /obj/item/clothing/head/roguetown/roguehood/black
	mask = /obj/item/clothing/mask/rogue/skullmask
	shoes = /obj/item/clothing/shoes/roguetown/boots
	pants = /obj/item/clothing/under/roguetown/tights/black
	shirt = /obj/item/clothing/suit/roguetown/shirt/tunic/black
	belt = /obj/item/storage/belt/rogue/leather/black
	cloak = /obj/item/clothing/cloak/half
	backl = /obj/item/storage/backpack/rogue/satchel
	backr = /obj/item/storage/backpack/rogue/satchel
	neck = /obj/item/storage/belt/rogue/pouch/coins/mid
	beltl = /obj/item/flashlight/flare/torch/lantern
	beltr = /obj/item/rogueweapon/stoneaxe/woodcut
	backpack_contents = list(
		/obj/item/clothing/neck/roguetown/psicross/silver = 3,
		/obj/item/clothing/neck/roguetown/psicross = 2,
		/obj/item/clothing/neck/roguetown/psicross/wood = 1,
		/obj/item/rogueweapon/huntingknife = 1,
		/obj/item/recipe_book/survival = 1,
		/obj/item/rogueweapon/scabbard/sheath = 1
		)

/datum/advclass/trader/scholar
	name = "Scholar"
	tutorial = "You are a scholar traveling the world in order to write a book about your ventures. You trade in stories and tales of your travels."
	outfit = /datum/outfit/job/roguetown/refugee/scholar
	subclass_stats = list(
		STATKEY_INT = 3,
		STATKEY_PER = 1,
		STATKEY_SPD = 1,
		STATKEY_WIL = 1
	)

/datum/outfit/job/roguetown/refugee/scholar/pre_equip(mob/living/carbon/human/H)
	..()
	to_chat(H, span_warning("You are a scholar traveling the world in order to write a book about your ventures. You trade in stories and tales of your travels."))
	H.adjust_skillrank(/datum/skill/combat/knives, 1, TRUE)
	H.adjust_skillrank(/datum/skill/combat/wrestling, 1, TRUE)
	H.adjust_skillrank(/datum/skill/combat/polearms, 1, TRUE)
	H.adjust_skillrank(/datum/skill/combat/unarmed, 1, TRUE)
	H.adjust_skillrank(/datum/skill/misc/reading, 6, TRUE)
	H.adjust_skillrank(/datum/skill/craft/crafting, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/swimming, 1, TRUE)
	H.adjust_skillrank(/datum/skill/misc/climbing, 1, TRUE)
	H.adjust_skillrank(/datum/skill/craft/alchemy, 4, TRUE)
	head = /obj/item/clothing/head/roguetown/roguehood/black
	mask = /obj/item/clothing/mask/rogue/spectacles/golden
	shoes = /obj/item/clothing/shoes/roguetown/boots
	pants = /obj/item/clothing/under/roguetown/tights/black
	shirt = /obj/item/clothing/suit/roguetown/shirt/robe/mageyellow
	belt = /obj/item/storage/belt/rogue/leather/black
	backl = /obj/item/storage/backpack/rogue/satchel
	backr = /obj/item/storage/backpack/rogue/satchel
	neck = /obj/item/storage/belt/rogue/pouch/coins/mid
	beltl = /obj/item/flashlight/flare/torch/lantern
	beltr = /obj/item/rogueweapon/huntingknife/idagger
	if(H.mind)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/targeted/touch/prestidigitation)
	backpack_contents = list(
		/obj/item/paper/scroll = 3,
		/obj/item/book/rogue/knowledge1 = 1,
		/obj/item/reagent_containers/glass/bottle/rogue/manapot = 1,
		/obj/item/reagent_containers/glass/bottle/rogue/strongmanapot = 1,
		/obj/item/natural/feather = 1,
		/obj/item/roguegem/amethyst = 1,
		/obj/item/recipe_book/survival = 1,
		/obj/item/rogueweapon/scabbard/sheath = 1
		)

/datum/advclass/trader/harlequin
	name = "Harlequin"
	tutorial = "You are a travelling entertainer - a jester by trade. Where you go, chaos follows - and mischief is made."
	outfit = /datum/outfit/job/roguetown/refugee/harlequin
	traits_applied = list(TRAIT_DODGEEXPERT, TRAIT_NUTCRACKER)
	subclass_stats = list(
		STATKEY_SPD = 2,
		STATKEY_PER = 1,
		STATKEY_WIL = 1,
		STATKEY_INT = 1
	)

/datum/outfit/job/roguetown/refugee/harlequin/pre_equip(mob/living/carbon/human/H)
	..()
	to_chat(H, span_warning ("You are a travelling entertainer - a jester by trade. Where you go, chaos follows - and mischief is made."))
	shoes = /obj/item/clothing/shoes/roguetown/jester
	pants = /obj/item/clothing/under/roguetown/tights
	armor = /obj/item/clothing/suit/roguetown/shirt/jester
	belt = /obj/item/storage/belt/rogue/leather
	beltr = /obj/item/rogueweapon/huntingknife/idagger
	beltl = /obj/item/flashlight/flare/torch/lantern
	backl = /obj/item/storage/backpack/rogue/satchel
	head = /obj/item/clothing/head/roguetown/jester
	neck = /obj/item/storage/belt/rogue/pouch/coins/mid
	H.cmode_music = 'sound/music/combat_jester.ogg'
	backpack_contents = list(
		/obj/item/smokebomb = 3,
		/obj/item/storage/pill_bottle/dice = 1,
		/obj/item/toy/cards/deck = 1,
		/obj/item/recipe_book/survival = 1,
		/obj/item/rogueweapon/scabbard/sheath = 1
		)
	H.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/sneaking, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/stealing, 4, TRUE)
	H.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/music, 4, TRUE)
	H.adjust_skillrank(/datum/skill/misc/lockpicking, 2, TRUE)
	var/weapons = list("Harp","Lute","Accordion","Guitar","Hurdy-Gurdy","Viola","Vocal Talisman")
	var/weapon_choice = input("Choose your instrument.", "TAKE UP ARMS") as anything in weapons
	H.set_blindness(0)
	switch(weapon_choice)
		if("Harp")
			backr = /obj/item/rogue/instrument/harp
		if("Lute")
			backr = /obj/item/rogue/instrument/lute
		if("Accordion")
			backr = /obj/item/rogue/instrument/accord
		if("Guitar")
			backr = /obj/item/rogue/instrument/guitar
		if("Hurdy-Gurdy")
			backr = /obj/item/rogue/instrument/hurdygurdy
		if("Viola")
			backr = /obj/item/rogue/instrument/viola
		if("Vocal Talisman")
			backr = /obj/item/rogue/instrument/vocals
		if("Trumpet")
			backr = /obj/item/rogue/instrument/trumpet

/datum/advclass/trader/peddler
	name = "Peddler"
	tutorial = "You make your coin peddling in spices and performing back-alley 'medical' procedures. Hope your patient didn't need that kidney."
	outfit = /datum/outfit/job/roguetown/refugee/peddler
	subclass_stats = list(
		STATKEY_INT = 3,
		STATKEY_PER = 2,
		STATKEY_SPD = 1
	)

/datum/outfit/job/roguetown/refugee/peddler/pre_equip(mob/living/carbon/human/H)
	..()
	to_chat(H, span_warning("You make your coin peddling in spices and performing back-alley 'medical' procedures. Hope your patient didn't need that kidney."))
	H.adjust_skillrank(/datum/skill/combat/wrestling, 1, TRUE)
	H.adjust_skillrank(/datum/skill/combat/unarmed, 1, TRUE)
	H.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/stealing, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/sneaking, 2, TRUE)
	H.adjust_skillrank(/datum/skill/craft/crafting, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/medicine, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/swimming, 1, TRUE)
	H.adjust_skillrank(/datum/skill/misc/climbing, 1, TRUE)
	H.adjust_skillrank(/datum/skill/craft/alchemy, 3, TRUE)
	head = /obj/item/clothing/head/roguetown/roguehood
	mask = /obj/item/clothing/mask/rogue/facemask/steel
	shoes = /obj/item/clothing/shoes/roguetown/boots
	neck = /obj/item/storage/belt/rogue/pouch/coins/mid
	pants = /obj/item/clothing/under/roguetown/tights/black
	shirt = /obj/item/clothing/suit/roguetown/shirt/robe
	belt = /obj/item/storage/belt/rogue/leather
	backl = /obj/item/storage/backpack/rogue/satchel
	backr = /obj/item/storage/backpack/rogue/satchel
	beltr = /obj/item/storage/belt/rogue/surgery_bag/full
	beltl = /obj/item/flashlight/flare/torch/lantern
	backpack_contents = list(
		/obj/item/reagent_containers/powder/spice = 2,
		/obj/item/reagent_containers/powder/ozium = 1,
		/obj/item/reagent_containers/powder/moondust = 2,
		/obj/item/rogueweapon/huntingknife = 1,
		/obj/item/recipe_book/survival = 1,
		/obj/item/rogueweapon/scabbard/sheath = 1
		)

/datum/advclass/trader/brewer
	name = "Brewer"
	tutorial = "You make your coin peddling imported alcohols from all over the world, though you're no stranger to the craft, and have experience brewing your own ale in a pinch. You have the equipments and know how on how to make your own distiller, too."
	outfit = /datum/outfit/job/roguetown/refugee/brewer
	traits_applied = list(TRAIT_SEEPRICES, TRAIT_CICERONE)
	subclass_stats = list(
		STATKEY_INT = 3,
		STATKEY_PER = 1,
		STATKEY_CON = 1,
		STATKEY_STR = 1
	)

/datum/outfit/job/roguetown/refugee/brewer/pre_equip(mob/living/carbon/human/H)
	..()
	to_chat(H, span_warning("You make your coin peddling imported alcohols from all over the world, though you're no stranger to the craft, and have experience brewing your own ale in a pinch. You have the equipments and know how on how to make your own distiller, too."))
	H.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
	H.adjust_skillrank(/datum/skill/craft/crafting, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/maces, 1, TRUE)
	H.adjust_skillrank(/datum/skill/misc/reading, 2, TRUE)
	H.adjust_skillrank(/datum/skill/craft/cooking, 3, TRUE)
	H.adjust_skillrank(/datum/skill/craft/engineering, 1, TRUE) // CBT to make a copper distillery
	H.adjust_skillrank(/datum/skill/labor/farming, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/swimming, 1, TRUE)
	H.adjust_skillrank(/datum/skill/misc/climbing, 1, TRUE)
	mask = /obj/item/clothing/mask/rogue/ragmask/black
	shoes = /obj/item/clothing/shoes/roguetown/boots
	neck = /obj/item/storage/belt/rogue/pouch/coins/mid
	pants = /obj/item/clothing/under/roguetown/tights/black
	cloak = /obj/item/clothing/suit/roguetown/armor/longcoat
	shirt = /obj/item/clothing/suit/roguetown/shirt/tunic/red
	belt = /obj/item/storage/belt/rogue/leather/black
	backl = /obj/item/storage/backpack/rogue/satchel
	backr = /obj/item/storage/backpack/rogue/satchel
	beltr = /obj/item/rogueweapon/mace/cudgel
	beltl = /obj/item/flashlight/flare/torch/lantern
	backpack_contents = list(
		/obj/item/reagent_containers/glass/bottle/rogue/beer/gronnmead = 1,
		/obj/item/reagent_containers/glass/bottle/rogue/beer/voddena = 1,
		/obj/item/reagent_containers/glass/bottle/rogue/beer/blackgoat = 1,
		/obj/item/reagent_containers/glass/bottle/rogue/elfred = 1,
		/obj/item/reagent_containers/glass/bottle/rogue/elfblue = 1,
		/obj/item/rogueweapon/huntingknife = 1,
		/obj/item/rogueweapon/scabbard/sheath = 1,
		/obj/item/ingot/copper = 2,
		/obj/item/roguegear/bronze = 1,
		/obj/item/recipe_book/survival = 1)

/datum/advclass/trader/cuisiner
	name = "Cuisiner"
	tutorial = "Whether a disciple of a culinary school, a storied royal chef, or a mercenary cook for hire, your trade is plied at the counter, \
	the cutting board, and the hearth."
	outfit = /datum/outfit/job/roguetown/refugee/cuisiner
	traits_applied = list(TRAIT_SEEPRICES, TRAIT_GOODLOVER)
	subclass_stats = list(
		STATKEY_INT = 3,
		STATKEY_PER = 1,
		STATKEY_CON = 1,
		STATKEY_SPD = 1
	)

/datum/outfit/job/roguetown/refugee/cuisiner/pre_equip(mob/living/carbon/human/H)
	..()
	to_chat(H, span_warning("Whether a disciple of a culinary school, a storied royal chef, or a mercenary cook for hire, your trade is plied at the counter, \
	the cutting board, and the hearth."))
	H.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
	H.adjust_skillrank(/datum/skill/craft/crafting, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/maces, 1, TRUE)
	H.adjust_skillrank(/datum/skill/misc/reading, 2, TRUE)
	H.adjust_skillrank(/datum/skill/craft/cooking, 4, TRUE)
	H.adjust_skillrank(/datum/skill/labor/farming, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/swimming, 1, TRUE)
	H.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
	if(H.age == AGE_MIDDLEAGED)
		H.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
		H.adjust_skillrank(/datum/skill/combat/knives, 1, TRUE)
	if(H.age == AGE_OLD)
		H.adjust_skillrank(/datum/skill/craft/cooking, 2, TRUE)
		H.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
	head = /obj/item/clothing/head/roguetown/chef
	shoes = /obj/item/clothing/shoes/roguetown/shortboots
	neck = /obj/item/storage/belt/rogue/pouch/coins/poor
	pants = /obj/item/clothing/under/roguetown/trou
	armor = /obj/item/clothing/suit/roguetown/armor/workervest
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt
	belt = /obj/item/storage/belt/rogue/leather/black
	backl = /obj/item/storage/backpack/rogue/backpack
	beltr = /obj/item/cooking/pan
	beltl = /obj/item/flashlight/flare/torch/lantern
	backpack_contents = list(
		/obj/item/clothing/mask/cigarette/rollie/nicotine/cheroot = 5,
		/obj/item/reagent_containers/peppermill = 1,
		/obj/item/reagent_containers/food/snacks/rogue/cheddar/aged = 1,
		/obj/item/reagent_containers/food/snacks/butter = 1,
		/obj/item/kitchen/rollingpin = 1,
		/obj/item/flint = 1,
		/obj/item/rogueweapon/huntingknife/chefknife = 1,
		/obj/item/rogueweapon/scabbard/sheath = 1,
		/obj/item/recipe_book/survival = 1,
		)
		// no ration wrappers by design

/datum/advclass/trader/ponygirl
	name = "Ponygirl"
	tutorial = "Trained to serve as a mount and beast of burden, you are equipped with special gear and training."
	outfit = /datum/outfit/job/roguetown/refugee/ponygirl
	traits_applied = list(
		TRAIT_PONYGIRL_RIDEABLE,
		TRAIT_CRITICAL_RESISTANCE,
		TRAIT_EMPATH,
		TRAIT_NOPAIN,
		TRAIT_NOPAINSTUN,
		TRAIT_STABLELIVER,
		TRAIT_PACIFISM,
		TRAIT_NASTY_EATER,
		TRAIT_GOODLOVER,
		TRAIT_BLOODLOSS_IMMUNE
	)
	subclass_stats = list(
		STATKEY_CON = 10,
		STATKEY_SPD = 10
	)

/datum/outfit/job/roguetown/refugee/ponygirl/pre_equip(mob/living/carbon/human/H)
	mask = /obj/item/clothing/mask/rogue/hblinders
	head = /obj/item/clothing/head/roguetown/hbit
	armor = /obj/item/clothing/suit/roguetown/armor/hcorset
	gloves = /obj/item/clothing/gloves/roguetown/harms
	shoes = /obj/item/clothing/shoes/roguetown/armor/hlegs
	H.adjust_skillrank(/datum/skill/combat/knives, 6, TRUE)
	H.adjust_skillrank(/datum/skill/combat/wrestling, 6, TRUE)
	H.adjust_skillrank(/datum/skill/combat/unarmed, 6, TRUE)

/obj/item/clothing/mask/rogue/ragmask/black
	color = CLOTHING_BLACK
