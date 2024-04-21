/obj/item/clothing/suit/hooded/explorer
	name = "explorer suit"
	desc = "A light, armor-plated softsuit, designed for exploration of dangerous planetary enviroments. An NT design by origin, later reappropriated by EXOCON for mass retail production."
	icon_state = "explorer"
	item_state = "explorer"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	cold_protection = CHEST|GROIN|LEGS|ARMS
	max_heat_protection_temperature = FIRE_SUIT_MAX_TEMP_PROTECT
	heat_protection = CHEST|GROIN|LEGS|ARMS
	hoodtype = /obj/item/clothing/head/hooded/explorer
	armor = list("melee" = 10, "bullet" = 0, "laser" = 0, "energy" = 10, "bomb" = 50, "bio" = 100, "rad" = 50, "fire" = 50, "acid" = 50)
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals, /obj/item/resonator, /obj/item/mining_scanner, /obj/item/t_scanner/adv_mining_scanner, /obj/item/gun/energy/kinetic_accelerator, /obj/item/pickaxe, /obj/item/kinetic_crusher)
	resistance_flags = FIRE_PROOF
	supports_variations = DIGITIGRADE_VARIATION | VOX_VARIATION
