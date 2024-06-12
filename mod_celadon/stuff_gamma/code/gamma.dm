/obj/item/clothing/head/helmet/gamma_vision
	name = "tactical combat helmet"
	desc = "A tactical black helmet, sealed from outside hazards with a plate of reinforced glass."
	icon = 'mod_celadon/stuff_gamma/icons/obj/head.dmi'
	mob_overlay_icon = 'mod_celadon/stuff_gamma/icons/mob/head.dmi'
	icon_state = "hardsuit0-gamma_vision"
	item_state = "hardsuit0-gamma_vision"
	armor = list("melee" = 50, "bullet" = 50, "laser" = 30, "energy" = 25, "bomb" = 50, "bio" = 100, "fire" = 40, "acid" = 50)
	min_cold_protection_temperature = SPACE_HELM_MIN_TEMP_PROTECT
	clothing_flags = STOPSPRESSUREDAMAGE
	resistance_flags = FIRE_PROOF | ACID_PROOF
	can_flashlight = TRUE
	dog_fashion = null

/obj/item/clothing/head/helmet/gamma_vision/Initialize(mapload)
	set_attached_light(new /obj/item/flashlight/seclite)
	update_helmlight()
	update_appearance()
	. = ..()

/obj/item/clothing/head/helmet/gamma_vision/on
	name = "hardsuit1-gamma_vision"
	icon_state = "hardsuit1-gamma_vision"
	item_state = "hardsuit1-gamma_vision"

/obj/item/clothing/head/helmet/space/hardsuit/security/gamma/white_squadron_rig
	name = "white squadron rig helmet"
	desc = "No data"
	icon = 'mod_celadon/stuff_gamma/icons/obj/head.dmi'
	mob_overlay_icon = 'mod_celadon/stuff_gamma/icons/mob/head.dmi'
	icon_state = "hardsuit0-gamma"
	item_state = "hardsuit1-gamma"
	hardsuit_type = "gamma"
	armor = list("melee" = 35, "bullet" = 25, "laser" = 20,"energy" = 40, "bomb" = 10, "bio" = 100, "rad" = 50, "fire" = 75, "acid" = 75)

/obj/item/clothing/suit/space/hardsuit/security/gamma/white_squadron_rig
	name = "white squadron rig"
	desc = "No data"
	icon = 'mod_celadon/stuff_gamma/icons/obj/suit.dmi'
	mob_overlay_icon = 'mod_celadon/stuff_gamma/icons/mob/suit.dmi'
	icon_state = "white_squadron_rig"
	item_state = "white_squadron_rig"
	hardsuit_type = "gamma"
	armor = list("melee" = 35, "bullet" = 25, "laser" = 20,"energy" = 40, "bomb" = 10, "bio" = 100, "rad" = 50, "fire" = 75, "acid" = 75)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/security/gamma/white_squadron_rig

/obj/item/clothing/suit/armor/vest/gamma
	name = "Gamma armor vest"
	desc = "No data."
	icon = 'mod_celadon/stuff_gamma/icons/obj/uniform.dmi'
	mob_overlay_icon = 'mod_celadon/stuff_gamma/icons/mob/uniform.dmi'
	icon_state = "white_squadron_jacket"
	item_state = "white_squadron_jacket"
	armor = list("melee" = 38, "bullet" = 33, "laser" = 33, "energy" = 43, "bomb" = 28, "bio" = 3, "rad" = 3, "fire" = 53, "acid" = 53)

/obj/item/clothing/under/gamma/uniform
	name = "Комбенизон ГАММЫ"
	desc = "No data."
	icon = 'mod_celadon/stuff_gamma/icons/obj/uniform.dmi'
	mob_overlay_icon = 'mod_celadon/stuff_gamma/icons/mob/uniform.dmi'
	icon_state = "white_squadron_uniform"
	mob_overlay_state = "white_squadron_uniform"

/obj/item/clothing/under/gamma/uniform_rolled
	name = "Комбенизон ГАММЫ"
	desc = "No data."
	icon = 'mod_celadon/stuff_gamma/icons/obj/uniform.dmi'
	mob_overlay_icon = 'mod_celadon/stuff_gamma/icons/mob/uniform.dmi'
	icon_state = "white_squadron_uniform_rolled"
	mob_overlay_state = "white_squadron_uniform_rolled"

/obj/item/clothing/gloves/combat/gamma
	name = "white squadron gloves"
	desc = "No data."
	icon = 'mod_celadon/stuff_gamma/icons/obj/gloves.dmi'
	mob_overlay_icon = 'mod_celadon/stuff_gamma/icons/mob/gloves.dmi'
	icon_state = "white_squadron_gloves"
	siemens_coefficient = 0
	permeability_coefficient = 0.05
	strip_delay = 80
	cold_protection = HANDS
	min_cold_protection_temperature = GLOVES_MIN_TEMP_PROTECT
	heat_protection = HANDS
	max_heat_protection_temperature = GLOVES_MAX_TEMP_PROTECT
	resistance_flags = NONE
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 80, "acid" = 50)

/obj/item/clothing/shoes/gamma
	name = "Gamma boots"
	desc = "no data."
	icon = 'mod_celadon/stuff_gamma/icons/obj/shoes.dmi'
	mob_overlay_icon = 'mod_celadon/stuff_gamma/icons/mob/shoes.dmi'
	icon_state = "white_squadron_boots"
	item_state = "white_squadron_boots"
	strip_delay = 100
	equip_delay_other = 100
	permeability_coefficient = 0.9
	can_be_tied = FALSE

/obj/item/storage/backpack/messenger/gamma
	name = "gamma messenger bag"
	desc = "no data."
	icon = 'mod_celadon/stuff_gamma/icons/obj/back.dmi'
	mob_overlay_icon = 'mod_celadon/stuff_gamma/icons/mob/back.dmi'
	icon_state = "white_squadron_backpack"
	item_state = "white_squadron_backpack"

/obj/item/storage/belt/security/webbing/gamma
	name = "gamma cargo"
	desc = "no data."
	icon = 'mod_celadon/stuff_gamma/icons/obj/back.dmi'
	mob_overlay_icon = 'mod_celadon/stuff_gamma/icons/mob/back.dmi'
	slot_flags = ITEM_SLOT_BELT
	icon_state = "white_squadron_cargo"
	item_state = "white_squadron_cargo"

/obj/item/melee/gamma
	name = "gamma tomahawk"
	desc = "no data"
	icon = 'mod_celadon/stuff_gamma/icons/obj/weapons.dmi'
	mob_overlay_icon = 'mod_celadon/stuff_gamma/icons/mob/weapons.dmi'
	lefthand_file = 'mod_celadon/stuff_gamma/icons/mob/hands/weapons_hands_left.dmi'
	righthand_file = 'mod_celadon/stuff_gamma/icons/mob/hands/weapons_hands_right.dmi'
	hitsound = 'sound/weapons/bladeslice.ogg'
	icon_state = "white_squadron_tomahawk"
	item_state = "white_squadron_tomahawk"
