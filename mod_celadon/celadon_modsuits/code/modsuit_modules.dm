/obj/item/mod/module/flashlight/inteq
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

/obj/item/mod/module/flashlight/inteq/generate_worn_overlay(mutable_appearance/standing)
	. = ..()
	if(!active)
		return
	var/mutable_appearance/light_icon = mutable_appearance(overlay_icon_file, "inteq_module_light_on", layer = standing + 0.2)
	light_icon.appearance_flags = RESET_COLOR
	light_icon.color = light_color
	. += light_icon
