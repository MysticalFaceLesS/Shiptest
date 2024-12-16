/datum/supply_pack/tools/blueprints_shuttle
	name = "shuttle expansion permit"
	desc = "A set of paperwork which is used to expand flyable shuttles."
	contains = list(/obj/item/areaeditor/shuttle)
	cost = 20000
	crate_name = "blueprint crate"

/datum/supply_pack/gun/p16
	name = "P16 Assault Rifle Crate"
	desc = "Contains a high-powered, automatic rifle chambered in 5.56mm."
	cost = 2500
	contains = list(/obj/item/storage/guncase/p16)
	crate_name = "auto rifle crate"

/datum/supply_pack/machinery/plasma_thruster
	name = "Plasma Thruster Crate"
	desc = "A crate containing a plasma thruster and its heater's electronics. For when you need a lot of extra thrust."
	cost = 5000
	contains = list(/obj/item/circuitboard/machine/shuttle/engine/plasma,
					/obj/item/circuitboard/machine/shuttle/heater,
					/obj/item/circuitboard/machine/pipedispenser,
					/obj/machinery/portable_atmospherics/canister/toxins)
	crate_name = "plasma thruster crate"
	crate_type = /obj/structure/closet/crate/engineering
