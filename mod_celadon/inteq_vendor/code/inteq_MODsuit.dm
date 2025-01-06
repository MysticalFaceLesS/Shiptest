/obj/item/mod
	name = "Base MOD"
	desc = "You should not see this, yell at a coder!"

	icon = 'mod_celadon/_storge_icons/icons/obj/modsuit/mod_clothing.dmi'

/obj/item/mod/control
	name = "MOD control unit"
	desc = "The control unit of a Modular Outerwear Device, a powered, back-mounted suit that protects against various environments."
	icon_state = "control"
	base_icon_state = "control"
	item_state = "mod_control"
	mob_overlay_icon = 'mod_celadon/_storge_icons/icons/mob/modsuit/mod_clothing.dmi'


/obj/item/mod/control/proc/set_mod_skin(new_skin)
	if(active)
		CRASH("[src] tried to set skin while active!")
	skin = new_skin
	var/list/used_skin = theme.skins[new_skin]
	if(used_skin[CONTROL_LAYER])
		alternate_worn_layer = used_skin[CONTROL_LAYER]
	var/list/skin_updating = mod_parts + src
	for(var/obj/item/part as anything in skin_updating)
		part.icon = used_skin[MOD_ICON_OVERRIDE] || 'mod_celadon/_storge_icons/icons/obj/modsuit/mod_clothing.dmi'
		//part.mob_overlay_icon = used_skin[MOD_WORN_ICON_OVERRIDE] || 'icons/mob/clothing/modsuit/mod_clothing.dmi'
		part.icon_state = "[skin]-[part.base_icon_state]"
	for(var/obj/item/clothing/part as anything in mod_parts)
		var/used_category
		if(part == helmet)
			used_category = HELMET_FLAGS
		if(part == chestplate)
			used_category = CHESTPLATE_FLAGS
		if(part == gauntlets)
			used_category = GAUNTLETS_FLAGS
		if(part == boots)
			used_category = BOOTS_FLAGS
		var/list/category = used_skin[used_category]
		part.clothing_flags = category[UNSEALED_CLOTHING] || NONE
		part.visor_flags = category[SEALED_CLOTHING] || NONE
		part.flags_inv = category[UNSEALED_INVISIBILITY] || NONE
		part.visor_flags_inv = category[SEALED_INVISIBILITY] || NONE
		part.flags_cover = category[UNSEALED_COVER] || NONE
		part.visor_flags_cover = category[SEALED_COVER] || NONE
		part.alternate_worn_layer = category[UNSEALED_LAYER]
		mod_parts[part] = part.alternate_worn_layer
		if(!category[CAN_OVERSLOT])
			if(overslotting_parts[part])
				var/obj/item/overslot = overslotting_parts[part]
				overslot.forceMove(drop_location())
			overslotting_parts -= part
			continue
		overslotting_parts |= part
	wearer?.regenerate_icons()


/obj/item/clothing/head/mod
	name = "MOD helmet"
	desc = "A helmet for a MODsuit."
	icon = 'mod_celadon/_storge_icons/icons/obj/modsuit/mod_clothing.dmi'
	icon_state = "standart-helmet"
	base_icon_state = "helmet"
	mob_overlay_icon = 'mod_celadon/_storge_icons/icons/mob/modsuit/mod_clothing.dmi'
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	body_parts_covered = HEAD
	heat_protection = HEAD
	cold_protection = HEAD
	obj_flags = IMMUTABLE_SLOW
	visor_flags = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR|ALLOWINTERNALS

/obj/item/clothing/suit/mod
	name = "MOD chestplate"
	desc = "A chestplate for a MODsuit."
	icon = 'mod_celadon/_storge_icons/icons/obj/modsuit/mod_clothing.dmi'
	icon_state = "standart-chestplate"
	base_icon_state = "chestplate"
	mob_overlay_icon = 'mod_celadon/_storge_icons/icons/mob/modsuit/mod_clothing.dmi'
	blood_overlay_type = "armor"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	body_parts_covered = CHEST|GROIN
	heat_protection = CHEST|GROIN
	cold_protection = CHEST|GROIN
	obj_flags = IMMUTABLE_SLOW

/obj/item/clothing/gloves/mod
	name = "MOD gauntlets"
	desc = "A pair of gauntlets for a MODsuit."
	icon = 'mod_celadon/_storge_icons/icons/obj/modsuit/mod_clothing.dmi'
	icon_state = "standart-gauntlets"
	base_icon_state = "gauntlets"
	mob_overlay_icon = 'mod_celadon/_storge_icons/icons/mob/modsuit/mod_clothing.dmi'
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	body_parts_covered = HANDS|ARMS
	heat_protection = HANDS|ARMS
	cold_protection = HANDS|ARMS
	obj_flags = IMMUTABLE_SLOW

/obj/item/clothing/shoes/mod
	name = "MOD boots"
	desc = "A pair of boots for a MODsuit."
	icon = 'mod_celadon/_storge_icons/icons/obj/modsuit/mod_clothing.dmi'
	icon_state = "standart-boots"
	base_icon_state = "boots"
	mob_overlay_icon = 'mod_celadon/_storge_icons/icons/mob/modsuit/mod_clothing.dmi'
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	body_parts_covered = FEET|LEGS
	heat_protection = FEET|LEGS
	cold_protection = FEET|LEGS
	obj_flags = IMMUTABLE_SLOW
	supports_variations = DIGITIGRADE_VARIATION
	can_be_tied = FALSE
	visor_flags_inv = HIDESHOES

/datum/mod_theme/inteq
	name = "InteQ"
	desc = "This one is made by InteQ."
	default_skin = "inteq"
	armor = list("melee" = 45, "bullet" = 45, "laser" = 45, "energy" = 35, "bomb" = 70, "bio" = 100, "rad" = 50, "fire" = 60, "acid" = 90)
	atom_flags = PREVENT_CONTENTS_EXPLOSION_1
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	resistance_flags = FIRE_PROOF | ACID_PROOF
	siemens_coefficient = 0
	slowdown_inactive = 1
	slowdown_active = 0.3
	ui_theme = "inteq"
	allowed_suit_storage = list(
		/obj/item/flashlight,
		/obj/item/tank/internals,
		/obj/item/ammo_box,
		/obj/item/ammo_casing,
		/obj/item/restraints/handcuffs,
		/obj/item/assembly/flash,
		/obj/item/melee/baton,
		/obj/item/melee/energy/sword,
		/obj/item/shield/energy,
	)
	skins = list(
		"inteq" = list(
			HELMET_FLAGS = list(
				UNSEALED_LAYER = null,
				UNSEALED_CLOTHING = SNUG_FIT,
				SEALED_CLOTHING = THICKMATERIAL|STOPSPRESSUREDAMAGE,
				UNSEALED_INVISIBILITY = HIDEFACIALHAIR|HIDEEARS|HIDEHAIR|HIDEHORNS,
				SEALED_INVISIBILITY = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDESNOUT,
				SEALED_COVER = HEADCOVERSMOUTH|HEADCOVERSEYES|PEPPERPROOF,
			),
			CHESTPLATE_FLAGS = list(
				UNSEALED_CLOTHING = THICKMATERIAL,
				SEALED_CLOTHING = STOPSPRESSUREDAMAGE,
				SEALED_INVISIBILITY = HIDEJUMPSUIT|HIDETAIL,
			),
			GAUNTLETS_FLAGS = list(
				UNSEALED_CLOTHING = THICKMATERIAL,
				SEALED_CLOTHING = STOPSPRESSUREDAMAGE,
				CAN_OVERSLOT = TRUE,
			),
			BOOTS_FLAGS = list(
				UNSEALED_CLOTHING = THICKMATERIAL,
				SEALED_CLOTHING = STOPSPRESSUREDAMAGE,
				CAN_OVERSLOT = TRUE,
			),
		),
	)

/datum/mod_theme/inteq/elite
	name = "Elite InteQ"
	desc = "This is an elite version of InteQ MOD suit, featuring better overall protection."
	default_skin = "inteqelite"
	armor = list("melee" = 60, "bullet" = 45, "laser" = 50, "energy" = 45, "bomb" = 90, "bio" = 100, "rad" = 50,"fire" = 100, "acid" = 90) //Пока оставляю резисты такими, ибо модули модсьютов нельзя сделать, тем самым их полный потенциал не реализуется.
	atom_flags = PREVENT_CONTENTS_EXPLOSION_1
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	resistance_flags = FIRE_PROOF | ACID_PROOF
	complexity_max = DEFAULT_MAX_COMPLEXITY + 5
	siemens_coefficient = 0
	slowdown_inactive = 1
	slowdown_active = 0.2
	ui_theme = "inteq"
	allowed_suit_storage = list(
		/obj/item/flashlight,
		/obj/item/tank/internals,
		/obj/item/ammo_box,
		/obj/item/ammo_casing,
		/obj/item/restraints/handcuffs,
		/obj/item/assembly/flash,
		/obj/item/melee/baton,
		/obj/item/melee/energy/sword,
		/obj/item/shield/energy,
	)
	skins = list(
		"inteqelite" = list(
			HELMET_FLAGS = list(
				UNSEALED_LAYER = null,
				UNSEALED_CLOTHING = SNUG_FIT,
				SEALED_CLOTHING = THICKMATERIAL|STOPSPRESSUREDAMAGE,
				UNSEALED_INVISIBILITY = HIDEFACIALHAIR|HIDEEARS|HIDEHAIR|HIDEHORNS,
				SEALED_INVISIBILITY = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDESNOUT,
				SEALED_COVER = HEADCOVERSMOUTH|HEADCOVERSEYES|PEPPERPROOF,
			),
			CHESTPLATE_FLAGS = list(
				UNSEALED_CLOTHING = THICKMATERIAL,
				SEALED_CLOTHING = STOPSPRESSUREDAMAGE,
				SEALED_INVISIBILITY = HIDEJUMPSUIT|HIDETAIL,
			),
			GAUNTLETS_FLAGS = list(
				UNSEALED_CLOTHING = THICKMATERIAL,
				SEALED_CLOTHING = STOPSPRESSUREDAMAGE,
				CAN_OVERSLOT = TRUE,
			),
			BOOTS_FLAGS = list(
				UNSEALED_CLOTHING = THICKMATERIAL,
				SEALED_CLOTHING = STOPSPRESSUREDAMAGE,
				CAN_OVERSLOT = TRUE,
			),
		),
	)

/obj/item/mod/control/pre_equipped/inteq
	theme = /datum/mod_theme/inteq
	applied_cell = /obj/item/stock_parts/cell
	restricted_bodytypes = BODYTYPE_KEPORI|BODYTYPE_VOX
	initial_modules = list(
		/obj/item/mod/module/storage/syndicate,
		/obj/item/mod/module/magnetic_harness,
		/obj/item/mod/module/flashlight_inteq,
	)

/obj/item/mod/control/pre_equipped/inteq/elite
	theme = /datum/mod_theme/inteq/elite
	applied_cell = /obj/item/stock_parts/cell
	initial_modules = list(
		/obj/item/mod/module/storage/syndicate,
		/obj/item/mod/module/flashlight_inteq,
		/obj/item/mod/module/magnetic_harness,
		/obj/item/mod/module/dna_lock,
		/obj/item/mod/module/power_kick
	)

/obj/item/mod/module
	name = "MOD module"
	icon = 'mod_celadon/_storge_icons/icons/obj/modsuit/mod_modules.dmi'
	icon_state = "module"
	overlay_icon_file = 'mod_celadon/_storge_icons/icons/mob/modsuit/mod_modules.dmi'

/obj/item/mod/module/flashlight_inteq
	name = "InteQ MOD flashlight module"
	desc = "A single, yet powerful flashlight installed on the right side of the helmet."
	icon_state = "inteq_flashlight"
	module_type = MODULE_TOGGLE
	complexity = 1
	active_power_cost = DEFAULT_CHARGE_DRAIN * 0.3
	incompatible_modules = list(/obj/item/mod/module/flashlight)
	cooldown_time = 0.5 SECONDS
	overlay_state_inactive = "inteq_module_light"
	light_system = MOVABLE_LIGHT_DIRECTIONAL
	light_color = COLOR_WHITE
	light_range = 5
	light_power = 1
	light_on = FALSE
	/// Charge drain per range amount.
	var/base_power = DEFAULT_CHARGE_DRAIN * 0.1

/obj/item/mod/module/flashlight_inteq/on_activation()
	. = ..()
	if(!.)
		return
	set_light_flags(light_flags | LIGHT_ATTACHED)
	set_light_on(active)
	active_power_cost = base_power * light_range

/obj/item/mod/module/flashlight_inteq/on_deactivation(display_message = TRUE, deleting = FALSE)
	. = ..()
	if(!.)
		return
	set_light_flags(light_flags & ~LIGHT_ATTACHED)
	set_light_on(active)

/obj/item/mod/module/flashlight_inteq/on_process(delta_time)
	active_power_cost = base_power * light_range
	return ..()

/obj/item/mod/module/flashlight_inteq/generate_worn_overlay(mutable_appearance/standing)
	. = ..()
	if(!active)
		return
	var/mutable_appearance/light_icon = mutable_appearance(overlay_icon_file, "inteq_module_light_on", layer = standing + 0.2)
	light_icon.appearance_flags = RESET_COLOR
	light_icon.color = light_color
	. += light_icon
