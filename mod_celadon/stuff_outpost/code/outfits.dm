// Bartender

/obj/effect/mob_spawn/human/outpost/bartender
	name = "Elysium Outpost Bartender"
	id_job = "Bartender"
	id_access_list = list(ACCESS_CENT_BAR)
	outfit = /datum/outfit/outpost/bartender

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
		to_chat(H, "<span class='notice'>You're not technically old enough to access or serve alcohol, but your ID has been discreetly modified to display your age as [AGE_MINOR]. Try to keep that a secret!</span>")
