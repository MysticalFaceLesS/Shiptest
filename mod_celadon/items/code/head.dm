// Black Detective
/obj/item/clothing/head/fedora/det_hat/black
	name = "detective's black fedora"
	desc = "A really noir hat if you're a good guy. A really lame hat if you're not."
	icon_state = "fedora"
	item_state = "detective"

/obj/item/clothing/head/costume/tv_head
	name = "television helmet"
	desc = "A mysterious headgear made from the hollowed out remains of a status display. How very retro-retro-futuristic of you."
	icon = 'mod_celadon/items/icons/obj/head/costume.dmi'
	mob_overlay_icon = 'mod_celadon/items/icons/mob/head/costume.dmi'
	icon_state = "IPC_helmet"
	item_state = "syringe_kit"
	lefthand_file = 'mod_celadon/items/icons/mob/inhands/medical_lefthand.dmi' //Grandfathered in from the wallframe for status displays.
	righthand_file = 'mod_celadon/items/icons/mob/inhands/medical_righthand.dmi'
	clothing_flags = SNUG_FIT
	flash_protect = FLASH_PROTECTION_SENSITIVE
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH | PEPPERPROOF
	flags_inv = HIDEMASK | HIDEEARS | HIDEEYES | HIDEFACE | HIDEHAIR | HIDEFACIALHAIR | HIDEHORNS
	var/has_fov = TRUE

/obj/item/clothing/head/costume/tv_head/Initialize(mapload)
	. = ..()
	if(has_fov)
		AddComponent(/datum/component/clothing_fov_visor, FOV_90_DEGREES)

/obj/item/clothing/head/costume/tv_head/fov_less
	desc = "A mysterious headgear made from the hollowed out remains of a status display. How very retro-retro-futuristic of you. It's very easy to see out of this one."
	has_fov = FALSE
