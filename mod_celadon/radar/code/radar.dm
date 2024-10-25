/datum/overmap
	var/max_sensor = 4

/datum/overmap/ship/controlled
	var/list/radars = list()

/datum/overmap/ship/controlled/Initialize()
	. = ..()
	recalculate_radars()

/datum/overmap/ship/controlled/proc/recalculate_radars()
	if(length(radars))
		var/overall_sensor = -4
		for(var/obj/machinery/space_radar/R in radars)
			if(R)
				if(R.is_operational)
					if(R.efficiency > overall_sensor)
						overall_sensor = R.efficiency
		max_sensor = overall_sensor
	else
		max_sensor = -4

/datum/looping_sound/space_radar
	start_sound = 'mod_celadon/radar/sounds/radar.ogg'
	start_length = 150
	mid_sounds = list('mod_celadon/radar/sounds/radar.ogg'=10)
	mid_length = 150
	end_sound = 'mod_celadon/radar/sounds/radar.ogg'
	volume = 90
	var/started = FALSE

/obj/item/circuitboard/machine/space_radar
	name = "RADAR (Machine Board)"
	icon_state = "security"
	build_path = /obj/machinery/space_radar
	req_components = list(
		/obj/item/stock_parts/scanning_module = 1,
		/obj/item/stock_parts/manipulator = 1,
		/obj/item/stock_parts/micro_laser = 1,
		/obj/item/stack/cable_coil = 2)
	needs_anchored = TRUE

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
	circuit = /obj/item/circuitboard/machine/space_radar
	var/efficiency = 0
	var/datum/looping_sound/space_radar/soundloop
	var/datum/overmap/ship/controlled/current_ship

/obj/machinery/space_radar/proc/reload_ship()
	var/obj/docking_port/mobile/port = SSshuttle.get_containing_shuttle(src)
	if(port?.current_ship)
		if(current_ship && current_ship != port.current_ship)
			current_ship.radars -= src
		current_ship = port.current_ship
		current_ship.radars |= src

/obj/machinery/space_radar/Initialize()
	. = ..()
	soundloop = new(list(src), FALSE)
	reload_ship()
	current_ship.recalculate_radars()

/obj/machinery/space_radar/Destroy()
	QDEL_NULL(soundloop)
	if(current_ship)
		current_ship.radars -= src
		current_ship.recalculate_radars()
	. = ..()

/obj/machinery/space_radar/RefreshParts()
	efficiency = 0
	for(var/obj/item/stock_parts/M in component_parts)
		efficiency += M.rating
	..()

/obj/machinery/space_radar/update_icon_state()
	if(is_operational)
		icon_state = "radar-on"
		if(!soundloop.started)
			soundloop.started = TRUE
			soundloop.start()
			current_ship.recalculate_radars()
		return ..()
	else if(panel_open)
		icon_state = "radar-open"
		if(soundloop.started)
			soundloop.started = FALSE
			soundloop.stop()
			current_ship.recalculate_radars()
		return ..()
	else
		icon_state = "radar-off"
		if(soundloop.started)
			soundloop.started = FALSE
			soundloop.stop()
			current_ship.recalculate_radars()
		return ..()

/obj/machinery/space_radar/attackby(obj/item/I, mob/user, params)
	if(default_deconstruction_screwdriver(user, icon_state, icon_state, I))
		update_appearance()
		return
	if(default_deconstruction_crowbar(I))
		return
