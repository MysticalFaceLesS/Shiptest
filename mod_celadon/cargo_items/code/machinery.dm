/datum/supply_pack/machinery/rnd_beac
	name = "R&D Beacon"
	desc = "A set of specialized platforms for research and production, limited by license. "
	cost = 9000
	contains = list(/obj/item/choice_beacon/rnd,
					/obj/item/circuitboard/machine/rdserver)
	crate_name = "r&d starter kit"
	crate_type = /obj/structure/closet/crate/science

/datum/supply_pack/machinery/selling_pad_pack
	name = "Cargo teleport"
	desc = " A set of specialized platforms for building and managing a cargo teleport "
	cost = 8000
	contains = list(/obj/item/circuitboard/machine/selling_pad,
					/obj/item/circuitboard/computer/selling_pad_control)
	crate_name = "cargo teleport"
	crate_type = /obj/structure/closet/crate/science

/datum/supply_pack/machinery/rnd_full
	name = "Suspicious circuits"
	desc = "A set of specialized circuits for research and production. An unknown craftsman hacked them, now they are not limited by license. "
	cost = 39999
	contains = list(/obj/item/circuitboard/machine/circuit_imprinter,
					/obj/item/circuitboard/machine/protolathe,
					/obj/item/circuitboard/machine/rdserver)
	crate_name = "hacked r&d kit"
	crate_type = /obj/structure/closet/crate/science

/datum/supply_pack/machinery/plasma_thruster	// оригинал -> code\modules\cargo\packs\machinery.dm
	name = "Набор для создания плазменного двигателя"
	desc = "Набор содержит одну канистру плазмы, платы плазменного двигателя, плазменного нагревателя и раздатчика труб."
	cost = 5000
	contains = list(
		/obj/item/circuitboard/machine/shuttle/engine/plasma,
		/obj/item/circuitboard/machine/shuttle/heater,
		/obj/item/circuitboard/machine/pipedispenser,
		/obj/machinery/portable_atmospherics/canister/toxins
	)
	crate_name = "Набор для создания плазменного двигателя"
	crate_type = /obj/structure/closet/crate/secure/engineering
