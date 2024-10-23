//Microwaving doesn't use recipes, instead it calls the microwave_act of the objects. For food, this creates something based on the food's cooked_type

/obj/machinery/space_radar
	name = "RADAR"
	desc = "Views everything with rays."
	icon = 'mod_celadon/radar/icons/radar.dmi'
	icon_state = "radar-off"
	layer = BELOW_OBJ_LAYER
	density = TRUE
	use_power = ACTIVE_POWER_USE
	idle_power_usage = IDLE_DRAW_MINIMAL
	active_power_usage = ACTIVE_DRAW_MEDIUM
	circuit = /obj/item/circuitboard/machine/microwave
	var/efficiency = 0
	var/datum/looping_sound/microwave/soundloop

/obj/machinery/space_radar/Initialize()
	. = ..()
	soundloop = new(list(src), FALSE)

/obj/machinery/space_radar/Destroy()
	QDEL_NULL(soundloop)
	. = ..()

/obj/machinery/space_radar/RefreshParts()
	efficiency = 0
	for(var/obj/item/stock_parts/micro_laser/M in component_parts)
		efficiency += M.rating

/obj/machinery/space_radar/update_icon_state()
	else if(operating)
		icon_state = "radar-on"
		return ..()
	else if(panel_open)
		icon_state = "radar-open"
		return ..()
	else
		icon_state = "radar-off"
		return ..()

/obj/machinery/space_radar/attackby(obj/item/O, mob/user, params)
	if(default_deconstruction_crowbar(O))
		return
	..()


/obj/machinery/microwave/proc/wzhzhzh()
	visible_message("<span class='notice'>\The [src] turns on.</span>", null, "<span class='hear'>You hear a microwave humming.</span>")
	operating = TRUE

	set_light(1.5)
	soundloop.start()
	update_appearance()
