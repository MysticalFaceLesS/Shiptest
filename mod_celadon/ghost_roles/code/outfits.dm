/datum/job/outpost/cook
	name = "Outpost Cook"
	wiki_page = "Food" //WS Edit - Wikilinks/Warning
	var/cooks = 0 //Counts cooks amount

	outfit = /datum/outfit/job/outpost/cook

	access = list(ACCESS_OUTPOST_SERVICE_COOK, ACCESS_HYDROPONICS, ACCESS_BAR, ACCESS_KITCHEN, ACCESS_MORGUE, ACCESS_MINERAL_STOREROOM)
	minimal_access = list(ACCESS_OUTPOST_SERVICE_COOK, ACCESS_KITCHEN, ACCESS_MORGUE, ACCESS_MINERAL_STOREROOM)

	display_order = JOB_DISPLAY_ORDER_COOK

/datum/outfit/job/outpost/cook
	name = "Outpost Cook"
	job_icon = "cook"
	jobtype = /datum/job/outpost/cook

	belt = /obj/item/pda/cook
	ears = /obj/item/radio/headset/headset_srv
	uniform = /obj/item/clothing/under/rank/civilian/chef
	alt_uniform = /obj/item/clothing/under/shorts/cookjorts //WS Edit - Alt Uniforms
	suit = /obj/item/clothing/suit/toggle/chef
	alt_suit = /obj/item/clothing/suit/apron/chef
	head = /obj/item/clothing/head/chefhat
	mask = /obj/item/clothing/mask/fakemoustache/italian
	gloves  =/obj/item/clothing/gloves/botanic_leather
	backpack_contents = list(/obj/item/sharpener = 1,
							/obj/item/plant_analyzer)

/datum/outfit/job/outpost/cook/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	var/list/possible_boxes = subtypesof(/obj/item/storage/box/ingredients)
	var/chosen_box = pick(possible_boxes)
	var/obj/item/storage/box/I = new chosen_box(src)
	H.equip_to_slot_or_del(I,ITEM_SLOT_BACKPACK)
	var/datum/martial_art/cqc/under_siege/justacook = new
	justacook.teach(H)


/datum/job/outpost/bartender
	name = "Outpost Bartender"
	wiki_page = "Drinks"

	outfit = /datum/outfit/outpost/bartender

	access = list(ACCESS_CENT_BAR, ACCESS_HYDROPONICS, ACCESS_BAR, ACCESS_KITCHEN, ACCESS_MORGUE, ACCESS_WEAPONS, ACCESS_MINERAL_STOREROOM, ACCESS_THEATRE)
	minimal_access = list(ACCESS_CENT_BAR, ACCESS_BAR, ACCESS_MINERAL_STOREROOM, ACCESS_THEATRE)
	display_order = JOB_DISPLAY_ORDER_BARTENDER

/datum/outfit/outpost/bartender
	name = "Elysium Outpost Bartender"

	glasses = /obj/item/clothing/glasses/sunglasses/reagent
	belt = /obj/item/gun/ballistic/shotgun/doublebarrel/presawn
	ears = /obj/item/radio/headset/headset_srv
	uniform = /obj/item/clothing/under/rank/civilian/bartender
	suit = /obj/item/clothing/suit/armor/vest
	gloves = /obj/item/clothing/gloves/tackler/combat
	back = /obj/item/storage/backpack
	backpack_contents = list(/obj/item/storage/box/beanbag,
							/obj/item/ammo_box/a12g/slug,
							/obj/item/ammo_box/a12g/rubbershot,
							/obj/item/barcodescanner,
							/obj/item/barcode = 5,
							/obj/item/reagent_containers/food/drinks/shaker)
	shoes = /obj/item/clothing/shoes/laceup
	box = /obj/item/storage/box/survival
	id = /obj/item/card/id/elysium_Bartender
	suit_store = /obj/item/gun/ballistic/shotgun/doublebarrel
	l_pocket = /obj/item/pda/bar
	r_pocket = /obj/item/lighter

/datum/outfit/outpost/bartender/post_equip(mob/living/carbon/human/H, visualsOnly)
	ADD_TRAIT(H, TRAIT_ALCOHOL_TOLERANCE, "status_effect")
	ADD_TRAIT(H, TRAIT_STABLELIVER, "status_effect")
	. = ..()

	var/obj/item/card/id/W = H.get_idcard()
	if(H.age < AGE_MINOR)
		W.registered_age = AGE_MINOR
		to_chat(H, "<span class='notice'>Формально вы еще не достигли совершеннолетия, чтобы иметь доступ к алкоголю или подавать его, но ваше удостоверение личности незаметно изменено, чтобы показать ваш возраст как [AGE_MINOR]. Постарайтесь сохранить это в тайне!</span>")


/datum/job/outpost/maid
	name = "Maid"
	wiki_page = "Maid"

	outfit = /datum/outfit/outpost/maid

	access = list(ACCESS_JANITOR, ACCESS_MAINT_TUNNELS, ACCESS_MINERAL_STOREROOM)
	minimal_access = list(ACCESS_JANITOR, ACCESS_MAINT_TUNNELS, ACCESS_MINERAL_STOREROOM)

	display_order = JOB_DISPLAY_ORDER_JANITOR

/datum/outfit/outpost/maid
	name = "Maid"

	head = /obj/item/clothing/head/maidheadband
	neck = /obj/item/clothing/neck/maid
	ears = /obj/item/radio/headset/headset_srv
	uniform = /obj/item/clothing/under/costume/maid/white
	gloves = /obj/item/clothing/gloves/maid/white
	back = /obj/item/storage/backpack
	belt = /obj/item/pda/janitor
	backpack_contents = list(/obj/item/modular_computer/tablet/preset/advanced = 1)
	shoes = /obj/item/clothing/shoes/laceup
	box = /obj/item/storage/box/survival
	id = /obj/item/card/id/elysium_Bartender
	suit_store = /obj/item/gun/ballistic/shotgun/doublebarrel
	l_pocket = /obj/item/pda/bar
	r_pocket = /obj/item/lighter

/datum/outfit/outpost/maid/pre_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	if(GARBAGEDAY in SSevents.holidays)
		l_pocket = /obj/item/gun/ballistic/revolver/syndicate
		r_pocket = /obj/item/ammo_box/a357
