// *******************
// 		cloak
//********************
/obj/item/clothing/head/hooded/cloakhood/tajaran

/obj/item/clothing/suit/hooded/cloak/tajaran
	icon = 'mod_celadon/items/icons/obj/tajara_items.dmi'
	mob_overlay_icon = 'mod_celadon/items/icons/overlay/tajara_items_overlay.dmi'
	lefthand_file = 'icons/mob/inhands/clothing/suits_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/clothing/suits_righthand.dmi'
	slot_flags = ITEM_SLOT_OCLOTHING | ITEM_SLOT_NECK
	name = "gruff cloak"
	icon_state = "taj_cloak"
	item_state = "taj_cloak"
	hoodtype = /obj/item/clothing/head/hooded/cloakhood/tajaran
	desc = "A cloak designated for the lowest classes."

/obj/item/clothing/head/hooded/cloakhood/tajaran
	icon = 'mod_celadon/items/icons/obj/tajara_items.dmi'
	mob_overlay_icon = 'mod_celadon/items/icons/overlay/tajara_items_overlay.dmi'
	flags_inv = HIDEEARS | HIDEEYES |HIDEHAIR | HIDEFACIALHAIR
	name = "gruff cloak"
	icon_state = "taj_cloak_full"
	item_state = "taj_cloak_full"
	desc = "A cloak designated for the lowest classes."

/obj/item/clothing/suit/hooded/cloak/tajaran/fancy
	name = "fancy adhomian cloak"
	icon_state = "hb_cloak"
	item_state = "hb_cloak"
	hoodtype = /obj/item/clothing/head/hooded/cloakhood/tajaran/fancy
	desc = "A fancy black Adhomian cloak."

/obj/item/clothing/head/hooded/cloakhood/tajaran/fancy
	name = "fancy adhomian cloak"
	icon_state = "hb_cloak_hat"
	item_state = "hb_cloak_hat"
	desc = "A fancy black Adhomian cloak."

// *******************
// 		UNDER
//********************
/obj/item/clothing/under/tajaran
	icon = 'mod_celadon/items/icons/obj/tajara_items.dmi'
	mob_overlay_icon = 'mod_celadon/items/icons/overlay/tajara_items_overlay.dmi'
	can_adjust = FALSE
	name = "people's republic consular uniform"
	desc = "An olive uniform used by the diplomatic service of the People's Republic of Adhomai."
	icon_state = "pra_consular"
	item_state = "pra_consular"

/obj/item/clothing/under/tajaran/consular/female
	icon_state = "pra_con_f"
	item_state = "pra_con_f"

/obj/item/clothing/under/tajaran/consular/dpra
	name = "democratic people's republic consular uniform"
	desc = "A grey uniform used by the diplomatic service of the Democratic People's Republic of Adhomai."
	icon_state = "dpra_consular"
	item_state = "dpra_consular"

/obj/item/clothing/under/tajaran/laborer
	name = "laborer clothes"
	desc = "A rough but thin outfit, providing air flow but also protection from working hazards."
	icon_state = "taj_labor"
	item_state = "taj_labor"

/obj/item/clothing/under/tajaran/pra_uniform
	name = "republican army uniform"
	desc = "A military uniform used by the forces of Grand People's Army."
	icon_state = "prauniform"
	item_state = "prauniform"
	siemens_coefficient = 0.7
	armor = list("melee" = 10, "bullet" = 10, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/under/tajaran/pra_uniform
	name = "republican army uniform"
	desc = "A military uniform used by the forces of Grand People's Army."
	icon_state = "prauniform"
	item_state = "prauniform"
	siemens_coefficient = 0.7
	armor = list("melee" = 10, "bullet" = 10, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/under/tajaran/fancy
	name = "fancy uniform"
	desc = "Worn by princes, barons and lords of Adhomai, now in stores near you!"
	icon_state = "male_taj_fancy"
	item_state = "male_taj_fancy"

// Adhomian Evening Suit
/obj/item/clothing/under/tajaran/fancy/evening_suit
	name = "adhomian evening suit"
	desc = "A rich purple evening suit meant for lounging or other luxury."
	icon_state = "evening_suit"
	item_state = "evening_suit"

/obj/item/clothing/under/dress/tajaran
	name = "fancy adhomian dress"
	desc = "Created for the rich and party-loving circles of Adhomai, this dress is fashioned from smooth silk and is see through at parts. This one is white."
	mob_overlay_icon = 'mod_celadon/items/icons/overlay/tajara_items_overlay.dmi'
	icon = 'mod_celadon/items/icons/obj/tajara_items.dmi'
	icon_state = "taj_dress_white"
	item_state = "taj_dress_white"

/obj/item/clothing/under/dress/tajaran/blue
	desc = "Created for the rich and party-loving circles of Adhomai, this dress is fashioned from smooth silk and is see through at parts. This one is blue."
	icon_state = "taj_dress_skyblue"
	item_state = "taj_dress_skyblue"

/obj/item/clothing/under/dress/tajaran/green
	desc = "Created for the rich and party-loving circles of Adhomai, this dress is fashioned from smooth silk and is see through at parts. This one is green."
	icon_state = "taj_dress_green"
	item_state = "taj_dress_green"

/obj/item/clothing/under/dress/tajaran/red
	desc = "Created for the rich and party-loving circles of Adhomai, this dress is fashioned from smooth silk and is see through at parts. This one is red."
	icon_state = "taj_dress_red"
	item_state = "taj_dress_red"

/obj/item/clothing/under/dress/tajaran/fancy
	name = "noble adhomian dress"
	desc = "The classical dress of the Adhomian royalty, only to be worn during the special occassions. This one is crimson red."
	icon_state = "taj_dress_fancy"
	item_state = "taj_dress_fancy"

/obj/item/clothing/under/dress/tajaran/fancy/black
	desc = "The classical dress of the Adhomian royalty, only to be worn during the special occassions. This one is dark black."
	icon_state = "taj_dress_fancy_dark"
	item_state = "taj_dress_fancy_dark"

// *******************
// 		Suit
//********************
/obj/item/clothing/suit/armor/vest/tajaran
	icon = 'mod_celadon/items/icons/obj/tajara_items.dmi'
	mob_overlay_icon = 'mod_celadon/items/icons/overlay/tajara_items_overlay.dmi'
	name = "white light tactical armor vest"
	desc = "This tactical bulletproof vest was created for winter operations in the desert."
	icon_state = "snowsuit"
	item_state = "snowsuit"
	body_parts_covered = CHEST | GROIN | LEGS | FEET | ARMS | HANDS
	armor = list("melee" = 20, "bullet" = 20, "laser" = 10, "energy" = 15, "bomb" = 20, "bio" = 20, "fire" = 20, "acid" = 20)
	cold_protection = CHEST | GROIN | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	heat_protection = CHEST | GROIN | LEGS | FEET | ARMS | HANDS
	resistance_flags = FREEZE_PROOF

/obj/item/clothing/suit/tajaran
	icon = 'mod_celadon/items/icons/obj/tajara_items.dmi'
	mob_overlay_icon = 'mod_celadon/items/icons/overlay/tajara_items_overlay.dmi'
	name = "sun sister robe"
	desc = "A robe worn by the female priests of the S'rand'Marr religion."
	icon_state = "messarobes"
	item_state = "messarobes"
	allowed = list(/obj/item/tank/internals/emergency_oxygen,
					/obj/item/storage/book/bible,
					/obj/item/nullrod,
					/obj/item/reagent_containers/food/drinks/bottle/holywater)

/obj/item/clothing/suit/toggle/tajaran/wool
	icon = 'mod_celadon/items/icons/obj/tajara_items.dmi'
	mob_overlay_icon = 'mod_celadon/items/icons/overlay/tajara_items_overlay.dmi'
	name = "adhomian wool coat"
	desc = "An adhomian coat, this one is a design commonly found among the Rhazar'Hrujmagh people."
	icon_state = "zhan_coat"
	item_state = "zhan_coat"
	blood_overlay_type = "coat"
	body_parts_covered = CHEST | ARMS
	togglename = "zhan"
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman, /obj/item/t_scanner, /obj/item/radio)
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/exo
	resistance_flags = NONE
	supports_variations = DIGITIGRADE_VARIATION | VOX_VARIATION
/*
/obj/item/clothing/head/hooded/tajaran/wool
	name = "adhomian wool coat"
	desc = "An adhomian coat, this one is a design commonly found among the Rhazar'Hrujmagh people."
	icon_state = "zhan_coat"
	item_state = "zhan_coat"
*/
/*/obj/item/clothing/chest
	name = BODY_ZONE_CHEST
	icon = 'icons/obj/clothing/suits.dmi'
	lefthand_file = 'icons/mob/inhands/clothing/suits_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/clothing/suits_righthand.dmi'
	icon_state = "nun"
	item_state = "that"
	slot_flags = ITEM_SLOT_SUITSTORE
	var/blockTracking = 0 //For AI tracking
	var/can_toggle = null
	greyscale_icon_state = "chest"
	greyscale_colors = list(list(16,26))
	supports_variations = VOX_VARIATION

/obj/item/clothing/chest/worn_overlays(isinhands = FALSE)
	. = list()
	if(!isinhands)
		if(damaged_clothes)
			. += mutable_appearance('icons/effects/item_damage.dmi', "damagedcoat")
		if(HAS_BLOOD_DNA(src))
			var/mutable_appearance/bloody_coat = mutable_appearance('icons/effects/blood.dmi', "coatblood")
			bloody_coat.color = get_blood_dna_color(return_blood_DNA())
			. += bloody_coat

/obj/item/clothing/chest/update_clothes_damaged_state(damaging = TRUE)
	..()
	if(ismob(loc))
		var/mob/M = loc
		M.update_inv_wear_suit()*/



// *******************
// 		Scarf
//********************
/obj/item/clothing/neck/scarf/tajaran //Default white color, same functionality as beanies.
	icon = 'mod_celadon/items/icons/obj/tajara_items.dmi'
	mob_overlay_icon = 'mod_celadon/items/icons/overlay/tajara_items_overlay.dmi'
	name = "fur scarf"
	desc = "A furred scarf, a common tajaran vanity item, this one is brown."
	icon_state = "furscarf_brown"
	item_state = "furscarf_brown"

/obj/item/clothing/neck/scarf/tajaran/lbrown
	desc = "A furred scarf, a common tajaran vanity item, this one is light brown."
	icon_state = "furscarf_lbrown"
	item_state = "furscarf_lbrown"

/obj/item/clothing/neck/scarf/tajaran/cinnamon
	desc = "A furred scarf, a common tajaran vanity item, this one is cinnamon."
	icon_state = "furscarf_cinnamon"
	item_state = "furscarf_cinnamon"

/obj/item/clothing/neck/scarf/tajaran/blue
	desc = "A furred scarf, a common tajaran vanity item, this one is blue."
	icon_state = "furscarf_blue"
	item_state = "furscarf_blue"

/obj/item/clothing/neck/scarf/tajaran/silver
	desc = "A furred scarf, a common tajaran vanity item, this one is silver."
	icon_state = "furscarf_silver"
	item_state = "furscarf_silver"

/obj/item/clothing/neck/scarf/tajaran/black
	desc = "A furred scarf, a common tajaran vanity item, this one is black."
	icon_state = "furscarf_black"
	item_state = "furscarf_black"

/obj/item/clothing/neck/scarf/tajaran/ruddy
	desc = "A furred scarf, a common tajaran vanity item, this one is ruddy."
	icon_state = "furscarf_ruddy"
	item_state = "furscarf_ruddy"

/obj/item/clothing/neck/scarf/tajaran/orange
	desc = "A furred scarf, a common tajaran vanity item, this one is orange."
	icon_state = "furscarf_lasaga"
	item_state = "furscarf_lasaga"

/obj/item/clothing/neck/scarf/tajaran/cream
	desc = "A furred scarf, a common tajaran vanity item, this one is cream."
	icon_state = "furscarf_cream"
	item_state = "furscarf_cream"

// *******************
// 		Wrists
//********************
/obj/item/clothing/wrists/watch/tajara
	name = "adhomian watch"
	desc = "An adhomian wrist watch made for male Tajara. Due to its use in the past wars, wrist watches are becoming more popular in Adhomai."
	icon = 'mod_celadon/items/icons/obj/tajara_items.dmi'
	icon_state = "watch_taj-male"
	item_state = "watch_taj-male"

/obj/item/clothing/wrists/watch/tajara/female
	name = "adhomian watch"
	desc = "An adhomian wrist watch made for female Tajara. Due to its use in the past wars, wrist watches are becoming more popular in Adhomai."
	icon_state = "watch_taj-female"
	item_state = "watch_taj-female"
