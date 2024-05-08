/obj/item/clothing/suit/hooded/cloak/tajaran
	icon = 'mod_celadon/items/icons/obj/tajara_items.dmi'
	mob_overlay_icon = 'mod_celadon/items/icons/overlay/tajara_items_overlay.dmi'
	lefthand_file = 'icons/mob/inhands/clothing/suits_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/clothing/suits_righthand.dmi'
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

/obj/item/clothing/suit/hooded/cloak/tajaran/gruff
	name = "gruff cloak"
	icon_state = "taj_cloak"
	item_state = "taj_cloak"
	hoodtype = /obj/item/clothing/head/hooded/cloakhood/tajaran/gruff
	desc = "A cloak designated for the lowest classes."
	// min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	// cold_protection = CHEST|GROIN|LEGS|FEET|ARMS

/obj/item/clothing/head/hooded/cloakhood/tajaran/gruff
	name = "gruff cloak"
	icon_state = "taj_cloak_full"
	item_state = "taj_cloak_full"
//	mob_overlay_state = "taj_cloak_t"
	desc = "A cloak designated for the lowest classes."
	// min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	// cold_protection = HEAD
