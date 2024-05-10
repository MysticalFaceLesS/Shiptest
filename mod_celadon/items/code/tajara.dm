/obj/item/clothing/suit/hooded/cloak/tajaran
	icon = 'mod_celadon/items/icons/obj/tajara_items.dmi'
	mob_overlay_icon = 'mod_celadon/items/icons/overlay/tajara_items_overlay.dmi'
	lefthand_file = 'icons/mob/inhands/clothing/suits_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/clothing/suits_righthand.dmi'
	slot_flags = ITEM_SLOT_OCLOTHING|ITEM_SLOT_NECK
	// min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	// cold_protection = CHEST|GROIN|LEGS|FEET|ARMS

/obj/item/clothing/head/hooded/cloakhood/tajaran // Есть проблема, спрайт туловища подстраивается под спрайт головы
	icon = 'mod_celadon/items/icons/obj/tajara_items.dmi'
	mob_overlay_icon = 'mod_celadon/items/icons/overlay/tajara_items_overlay.dmi'
	flags_inv = HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR

/obj/item/clothing/wrists/watch/tajara
	name = "adhomian watch"
	desc = "An adhomian wrist watch made for male Tajara. Due to its use in the past wars, wrist watches are becoming more popular in Adhomai."
	icon = 'mod_celadon/items/icons/obj/tajara_items.dmi'
	icon_state = "watch_taj-male"
	item_state = "watch_taj-male"
//	contained_sprite = TRUE

/obj/item/clothing/wrists/watch/tajara/female
	name = "adhomian watch"
	desc = "An adhomian wrist watch made for female Tajara. Due to its use in the past wars, wrist watches are becoming more popular in Adhomai."
	icon_state = "watch_taj-female"
	item_state = "watch_taj-female"

// Плащи

/obj/item/clothing/suit/hooded/cloak/tajaran/gruff
	name = "gruff cloak"
	icon_state = "taj_cloak"
	item_state = "taj_cloak"
	hoodtype = /obj/item/clothing/head/hooded/cloakhood/tajaran/gruff
	desc = "A cloak designated for the lowest classes."

/obj/item/clothing/head/hooded/cloakhood/tajaran/gruff
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
// UNDER
//********************
/obj/item/clothing/under/tajaran/
	icon = 'mod_celadon/items/icons/obj/tajara_items.dmi'
	mob_overlay_icon = 'mod_celadon/items/icons/overlay/tajara_items_overlay.dmi'
	can_adjust = FALSE

/obj/item/clothing/under/tajaran/laborer
	name = "laborer clothes"
	desc = "A rough but thin outfit, providing air flow but also protection from working hazards."
	icon_state = "taj_labor"
	item_state = "taj_labor"
