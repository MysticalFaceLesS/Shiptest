/obj/machinery/power/shuttle/engine/fueled/plasma 		// Взято из mod_celadon\balance\code\engine\enginebalance.dm строка 88
	name = "plasma thruster"
	desc = "A thruster that burns plasma from an adjacent heater to create thrust."
	circuit = /obj/item/circuitboard/machine/shuttle/engine/plasma
	fuel_type = GAS_PLASMA
	fuel_use = 30
	thrust = 10

/obj/machinery/power/shuttle/engine/fueled/expulsion
	name = "expulsion thruster"
	desc = "A thruster that expels gas inefficiently to create thrust."
	circuit = /obj/item/circuitboard/machine/shuttle/engine/expulsion
	fuel_use = 90
	thrust = 8

/obj/machinery/power/shuttle/engine/electric
	name = "ion thruster"
	desc = "A thruster that expels charged particles to generate thrust."
	circuit = /obj/item/circuitboard/machine/shuttle/engine/electric
	icon_state = "burst"
	icon_state_off = "burst_off"
	icon_state_closed = "burst"
	icon_state_open = "burst_open"
	thrust = 1
	///Amount, in kilojoules, needed for a full burn.
	var/power_per_burn = 25000

/obj/machinery/power/shuttle/engine/electric/tech1
	name = "1-st ion thruster"
	desc = "A thruster that expels charged particles to generate thrust."
	circuit = /obj/item/circuitboard/machine/shuttle/engine/electric/tech1
	icon_state = "tech1"
	icon_state_off = "tech1_off"
	icon_state_closed = "tech1"
	icon_state_open = "tech1_open"
	thrust = 2
	power_per_burn = 35000

/obj/machinery/power/shuttle/engine/electric/tech2
	name = "2-st ion thruster"
	desc = "A thruster that expels charged particles to generate thrust."
	circuit = /obj/item/circuitboard/machine/shuttle/engine/electric/tech2
	icon_state = "tech2"
	icon_state_off = "tech2_off"
	icon_state_closed = "tech2"
	icon_state_open = "tech2_open"
	thrust = 4
	power_per_burn = 50000

/obj/machinery/power/shuttle/engine/electric/tech3
	name = "3-st ion thruster"
	desc = "A thruster that expels charged particles to generate thrust."
	circuit = /obj/item/circuitboard/machine/shuttle/engine/electric/tech3
	icon_state = "tech3"
	icon_state_off = "tech3_off"
	icon_state_closed = "tech3"
	icon_state_open = "tech3_open"
	thrust = 6
	power_per_burn = 65000

/obj/machinery/power/shuttle/engine/electric/bad
	name = "Outdated Ion Thruster"
	circuit = /obj/item/circuitboard/machine/shuttle/engine/electric/bad
	thrust = 2
	power_per_burn = 70000

/obj/machinery/power/shuttle/engine/electric/premium
	name = "high performance ion thruster"
	desc = "An expensive variant of a standard ion thruster, using highest quality components in order to achieve much better performance."
	thrust = 10
	power_per_burn = 30000
