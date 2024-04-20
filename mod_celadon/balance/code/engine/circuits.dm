/obj/item/circuitboard/machine/shuttle/engine/electric/tech1
	name = "1st Ion Thruster (Machine Board)"
	build_path = /obj/machinery/power/shuttle/engine/electric/tech1
	req_components = list(/obj/item/stock_parts/capacitor = 2,
		/obj/item/stock_parts/micro_laser = 2)

/obj/item/circuitboard/machine/shuttle/engine/electric/tech2
	name = "2st Ion Thruster (Machine Board)"
	build_path = /obj/machinery/power/shuttle/engine/electric/tech2
	req_components = list(/obj/item/stock_parts/capacitor = 2,
		/obj/item/stock_parts/micro_laser = 2)

/obj/item/circuitboard/machine/shuttle/engine/electric/tech3
	name = "3st Ion Thruster (Machine Board)"
	build_path = /obj/machinery/power/shuttle/engine/electric/tech3
	req_components = list(/obj/item/stock_parts/capacitor = 2,
		/obj/item/stock_parts/micro_laser = 2)

/obj/machinery/power/shuttle 		// Взято из code\game\machinery\shuttle\custom_shuttle.dm строка 1
	name = "shuttle component"
	desc = "Something for shuttles."
	density = TRUE
	obj_integrity = 250
	max_integrity = 250
	icon = 'mod_celadon/balance/icons/shuttle.dmi'
	icon_state = "burst_plasma"
	circuit = /obj/item/circuitboard/machine/shuttle/engine
	var/icon_state_closed = "burst_plasma"
	var/icon_state_open = "burst_plasma_open"
	var/icon_state_off = "burst_plasma_off"

/obj/machinery/atmospherics/components/unary/shuttle 		// Взято из code\game\machinery\shuttle\shuttle_heater.dm строка 7
	name = "shuttle atmospherics device"
	desc = "This does something to do with shuttle atmospherics"
	icon_state = "heater"
	icon = 'mod_celadon/balance/icons/shuttle.dmi'
