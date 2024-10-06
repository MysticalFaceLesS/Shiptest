//********************
// 		Suits
//********************
/obj/item/clothing/suit/armor/vest/tajaran_replica				// Исключение, засунут в лодаут в таком виде, понравился игрокам
	icon = 'mod_celadon/_storge_icons/icons/items/obj/tajara_items.dmi'
	mob_overlay_icon = 'mod_celadon/_storge_icons/icons/items/overlay/tajara_items_overlay.dmi'
	name = "white light tactical armor vest"
	desc = "This tactical bulletproof vest was created for winter operations in the desert."
	icon_state = "snowsuit"
	item_state = "snowsuit"
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman, /obj/item/t_scanner, /obj/item/radio)
	body_parts_covered = CHEST | GROIN | LEGS | FEET | ARMS | HANDS
	// armor = list("melee" = 20, "bullet" = 20, "laser" = 10, "energy" = 15, "bomb" = 20, "bio" = 20, "fire" = 20, "acid" = 20)
	cold_protection = CHEST | GROIN | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	heat_protection = CHEST | GROIN | LEGS | FEET | ARMS | HANDS
	resistance_flags = FREEZE_PROOF

/obj/item/clothing/suit/space/hardsuit/tajaran
	icon = 'mod_celadon/_storge_icons/icons/items/obj/tajara_items.dmi'
	mob_overlay_icon = 'mod_celadon/_storge_icons/icons/items/overlay/tajara_items_overlay.dmi'
	allowed = list(/obj/item/gun,
					/obj/item/ammo_box,
					/obj/item/ammo_casing,
					/obj/item/melee/baton,
					/obj/item/restraints/handcuffs,
					/obj/item/tank/internals,
					/obj/item/melee/knife/combat)

/obj/item/clothing/head/helmet/space/hardsuit/tajaran
	icon = 'mod_celadon/_storge_icons/icons/items/obj/helmet.dmi'
	mob_overlay_icon = 'mod_celadon/_storge_icons/icons/items/overlay/helmet.dmi'

/obj/item/clothing/suit/space/hardsuit/tajaran/void_nka
	name = "new kingdom mercantile voidsuit"
	desc = "An amalgamation of old civilian voidsuits and diving suits. This bulky space suit is used by the crew of the New Kingdom's mercantile navy."
	icon_state = "nkavoid"
	item_state = "nkavoid"
	armor = list("melee" = 30, "bullet" = 25, "laser" = 35, "energy" = 10, "bomb" = 30, "bio" = 100, "rad" = 40, "fire" = 40, "acid" = 30)
	strip_delay = 60
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/tajaran/void_nka

/obj/item/clothing/head/helmet/space/hardsuit/tajaran/void_nka
	icon = 'mod_celadon/_storge_icons/icons/items/obj/helmet.dmi'
	mob_overlay_icon = 'mod_celadon/_storge_icons/icons/items/overlay/helmet.dmi'
	name = "new kingdom mercantile voidsuit helmet"
	desc = "An amalgamation of old civilian voidsuits and diving suits. This bulky space suit is used by the crew of the New Kingdom's mercantile navy."
	icon_state = "nkavoid"
	item_state = "nkavoid"
	armor = list("melee" = 30, "bullet" = 25, "laser" = 35, "energy" = 10, "bomb" = 30, "bio" = 100, "rad" = 40, "fire" = 40, "acid" = 30)
	strip_delay = 60
	actions_types = list()

/obj/item/clothing/suit/space/hardsuit/tajaran/void_dpra
	name = "people's volunteer spacer militia voidsuit"
	desc = "A refitted, sturdy voidsuit created from Hegemony models acquired during the liberation of Gakal'zaal. These armored models are issued to the People's Volunteer Spacer Militia."
	icon_state = "DPRAvoidsuit"
	item_state = "DPRAvoidsuit"
	armor = list("melee" = 30, "bullet" = 25, "laser" = 35, "energy" = 10, "bomb" = 30, "bio" = 100, "rad" = 40, "fire" = 40, "acid" = 30)
	strip_delay = 60
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/tajaran/void_dpra

/obj/item/clothing/head/helmet/space/hardsuit/tajaran/void_dpra
	icon = 'mod_celadon/_storge_icons/icons/items/obj/helmet.dmi'
	mob_overlay_icon = 'mod_celadon/_storge_icons/icons/items/overlay/helmet.dmi'
	name = "people's volunteer spacer militia voidsuit helmet"
	desc = "A refitted, sturdy voidsuit created from Hegemony models acquired during the liberation of Gakal'zaal. These armored models are issued to the People's Volunteer Spacer Militia."
	icon_state = "DPRAvoidsuit"
	item_state = "DPRAvoidsuit"
	armor = list("melee" = 30, "bullet" = 25, "laser" = 35, "energy" = 10, "bomb" = 30, "bio" = 100, "rad" = 40, "fire" = 40, "acid" = 30)
	strip_delay = 60
	actions_types = list()

/obj/item/clothing/suit/armor/vest/trauma
	name = "cybersun trauma team armor vest"
	icon_state = "traumavest"
	desc = "A set of stamped plasteel armor plates decorated with a medical cross and colors associated with the medical division of Cybersun."
