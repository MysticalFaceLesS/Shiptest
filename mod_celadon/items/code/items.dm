// *******************
// 		Cloaks
//********************
/obj/item/clothing/suit/hooded/cloak/tajaran
	icon = 'mod_celadon/items/icons/obj/tajara_items.dmi'
	mob_overlay_icon = 'mod_celadon/items/icons/overlay/tajara_items_overlay.dmi'
	lefthand_file = 'icons/mob/inhands/clothing/suits_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/clothing/suits_righthand.dmi'
	slot_flags = ITEM_SLOT_OCLOTHING | ITEM_SLOT_NECK
	name = "gruff cloak"
	desc = "A cloak designated for the lowest classes."
	icon_state = "taj_cloak"
	item_state = "taj_cloak"
	hoodtype = /obj/item/clothing/head/hooded/cloakhood/tajaran

/obj/item/clothing/head/hooded/cloakhood/tajaran
	icon = 'mod_celadon/items/icons/obj/tajara_items.dmi'
	mob_overlay_icon = 'mod_celadon/items/icons/overlay/tajara_items_overlay.dmi'
	flags_inv = HIDEEARS | HIDEEYES |HIDEHAIR | HIDEFACIALHAIR
	name = "gruff cloak"
	desc = "A cloak designated for the lowest classes."
	icon_state = "taj_cloak_full"
	item_state = "taj_cloak_full"

/obj/item/clothing/suit/hooded/cloak/tajaran/fancy
	name = "fancy adhomian cloak"
	desc = "A fancy black Adhomian cloak."
	icon_state = "hb_cloak"
	item_state = "hb_cloak"
	hoodtype = /obj/item/clothing/head/hooded/cloakhood/tajaran/fancy

/obj/item/clothing/head/hooded/cloakhood/tajaran/fancy
	name = "fancy adhomian cloak"
	desc = "A fancy black Adhomian cloak."
	icon_state = "hb_cloak_hat"
	item_state = "hb_cloak_hat"

/obj/item/clothing/suit/hooded/cloak/tajaran/amohda
	name = "amohdan cloak"
	desc = "Originally used by the Amohdan swordsmen before the First Revolution, this cloak is now commonly worn by the island population."
	icon_state = "amohda_cloak"
	item_state = "amohda_cloak"
	hoodtype = /obj/item/clothing/head/hooded/cloakhood/tajaran/amohda

/obj/item/clothing/head/hooded/cloakhood/tajaran/amohda
	name = "amohdan cloak"
	desc = "Originally used by the Amohdan swordsmen before the First Revolution, this cloak is now commonly worn by the island population."
	icon_state = "amohda_cloak_hat"
	item_state = "amohda_cloak_hat"

/obj/item/clothing/suit/hooded/cloak/tajaran/winter
	name = "adhomian winter cloak"
	desc = "A simple wool cloak used during the early days of the lesser winter."
	icon_state = "winter_cloak"
	item_state = "winter_cloak"
	hoodtype = /obj/item/clothing/head/hooded/cloakhood/tajaran/winter

/obj/item/clothing/head/hooded/cloakhood/tajaran/winter
	name = "adhomian winter cloak"
	desc = "A simple wool cloak used during the early days of the lesser winter."
	icon_state = "winter_cloak_hat"
	item_state = "winter_cloak_hat"

/obj/item/clothing/suit/hooded/cloak/tajaran/royalist
	name = "adhomian royalist cloak"
	desc = "A simple royalist colored Adhomian cloak."
	icon_state = "royalist_cloak"
	item_state = "royalist_cloak"
	hoodtype = /obj/item/clothing/head/hooded/cloakhood/tajaran/royalist

/obj/item/clothing/head/hooded/cloakhood/tajaran/royalist
	name = "adhomian royalist cloak"
	desc = "A simple royalist colored Adhomian cloak."
	icon_state = "royalist_cloak_hat"
	item_state = "royalist_cloak_hat"

/obj/item/clothing/suit/hooded/cloak/tajaran/maroon
	name = "adhomian maroon cloak"
	desc = "A simple maroon colored Adhomian cloak."
	icon_state = "maroon_cloak"
	item_state = "maroon_cloak"
	hoodtype = /obj/item/clothing/head/hooded/cloakhood/tajaran/maroon

/obj/item/clothing/head/hooded/cloakhood/tajaran/maroon
	name = "adhomian maroon cloak"
	desc = "A simple maroon colored Adhomian cloak."
	icon_state = "maroon_cloak_hat"
	item_state = "maroon_cloak_hat"

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

/obj/item/clothing/under/dress/tajaran/fancy/black
	desc = "The classical dress of the Adhomian royalty, only to be worn during the special occassions. This one is dark black."
	icon_state = "taj_dress_fancy_dark"
	item_state = "taj_dress_fancy_dark"

/obj/item/clothing/under/dress/tajaran/fancy
	name = "noble adhomian dress"
	desc = "The classical dress of the Adhomian royalty, only to be worn during the special occassions. This one is crimson red."
	icon_state = "taj_dress_fancy"
	item_state = "taj_dress_fancy"

// *******************
// 		Suits
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
	supports_variations = DIGITIGRADE_VARIATION
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
// 		Scarfs
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
// 		Hand Watch
//********************
/obj/item/clothing/wrists/watch/tajaran
	name = "adhomian male watch"
	desc = "An adhomian wrist watch made for male Tajara. Due to its use in the past wars, wrist watches are becoming more popular in Adhomai."
	icon = 'mod_celadon/items/icons/obj/tajara_items.dmi'
	icon_state = "watch_taj-male"
	item_state = "watch_taj-male"
	slot_flags = ITEM_SLOT_LPOCKET | ITEM_SLOT_RPOCKET

/obj/item/clothing/wrists/watch/tajaran/female
	name = "adhomian watch"
	desc = "An adhomian wrist watch made for female Tajara. Due to its use in the past wars, wrist watches are becoming more popular in Adhomai."
	icon_state = "watch_taj-female"
	item_state = "watch_taj-female"

/obj/item/clothing/accessory/tajaran
	icon = 'mod_celadon/items/icons/obj/tajara_items.dmi'
	mob_overlay_icon = 'mod_celadon/items/icons/overlay/tajara_items_overlay.dmi'
	drop_sound = 'mod_celadon/items/sounds/drop/accessory.ogg'
	pickup_sound = 'mod_celadon/items/sounds/pickup/accessory.ogg'

/obj/item/clothing/accessory/tajaran/charm/raskariim
	icon = 'mod_celadon/items/icons/obj/tajara_items.dmi'
	mob_overlay_icon = 'mod_celadon/items/icons/overlay/tajara_items_overlay.dmi'
	name = "metal amulet"
	desc = "An amulet made of some light metal."
	icon_state = "raskara_amulet"
	item_state = "raskara_amulet"
	above_suit = TRUE
	slot_flags = ITEM_SLOT_LPOCKET | ITEM_SLOT_RPOCKET

/obj/item/pocketwatch/adhomai
	name = "adhomian watch"
	desc = "A watch made in the traditional adhomian style. It can be stored in a pocket."
	icon_state = "adhomai_clock"
	item_state = "adhomai_clock"
	slot_flags = ITEM_SLOT_LPOCKET | ITEM_SLOT_RPOCKET
	var/static/months = list("Menshe-aysaif", "Sil'nryy-aysaif", "Menshe-rhazzimy", "Sil'nryy-rhazzimy")

/obj/item/pocketwatch/adhomai/checktime(mob/user)
	set category = "Object"
	set name = "Check Time"
	set src in usr

	if(closed)
		to_chat(usr, span_warning("You check your watch, realising it's closed."))
	else
		var/adhomian_year = GLOB.game_year + 1158
		var/current_month = text2num(time2text(world.realtime, "MM"))
		var/current_day = text2num(time2text(world.realtime, "DD"))
		var/adhomian_day
		var/adhomian_month = src.months[Ceiling(current_month/3)]
		switch(current_month)
			if(2, 5, 8, 11)
				current_day += 31
			if(6, 9, 12)
				current_day += 61
			if(3)
				current_day += 59 + IsLeapYear(text2num(time2text(world.realtime, "YYYY"))) // we can conveniently use the result of `IsLeapYear` to add 1 when we are in a leap year
		var/real_time = text2num(time2text(world.time + (REALTIMEOFDAY - (TIMEZONE_CST HOURS)), "hh"))
		var/adhomian_time = real_time

		if(ISEVEN(current_day))
			adhomian_time = real_time + 24
		adhomian_day = FLOOR(current_day / 2, 1)
		to_chat(usr, "You check your [src.name], glancing over at the watch face, reading the time to be '[adhomian_time]'. Today's date is the '[adhomian_day]th day of [adhomian_month], [adhomian_year]'.")

// Rings
/obj/item/clothing/gloves/ring/diamond
	name = "diamond ring"
	desc = "An expensive ring, studded with a diamond. Cultures have used these rings in courtship for a millenia."
	icon_state = "ringdiamond"
	item_state = "dring"

/obj/item/clothing/gloves/ring/diamond/attack_self(mob/user)
	to_chat(usr, "The [usr.name] gets down on one knee, presenting \the [src].</span>","<span class='warning'>You get down on one knee, presenting \the [src].")

/obj/item/clothing/gloves/ring/silver
	name = "silver ring"
	desc = "A tiny silver ring, sized to wrap around a finger."
	icon_state = "ringsilver"
	item_state = "sring"
