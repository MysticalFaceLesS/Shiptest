/datum/supply_pack/machinery/rnd_beac
	name = "R&D Beacon"
	desc = "A set of specialized platforms for research and production, limited by license. "
	cost = 16000
	contains = list(/obj/item/choice_beacon/rnd,
					/obj/item/circuitboard/machine/rdserver)
	crate_name = "r&d starter kit"
	crate_type = /obj/structure/closet/crate/science

/datum/supply_pack/machinery/selling_pad_pack
	name = "Cargo teleport"
	desc = " A set of specialized platforms for building and managing a cargo teleport "
	cost = 10000
	contains = list(/obj/item/circuitboard/machine/selling_pad,
					/obj/item/circuitboard/computer/selling_pad_control)
	crate_name = "cargo teleport"
	crate_type = /obj/structure/closet/crate/science

/datum/supply_pack/machinery/rnd_full
	name = "Suspicious circuits"
	desc = "A set of specialized circuits for research and production. An unknown craftsman hacked them, now they are not limited by license. "
	cost = 89371
	contains = list(/obj/item/circuitboard/machine/circuit_imprinter,
					/obj/item/circuitboard/machine/protolathe,
					/obj/item/circuitboard/machine/rdserver)
	crate_name = "hacked r&d kit"
	crate_type = /obj/structure/closet/crate/science

/datum/supply_pack/food/ration_irp
	name = "IRP set"
	desc = "6 expanded IRP sets. Now with warm-up!"
	cost = 750
	contains = list(/obj/item/storage/ration/vegan_chili,
					/obj/item/storage/ration/shredded_beef,
					/obj/item/storage/ration/pork_spaghetti,
					/obj/item/storage/ration/fried_fish,
					/obj/item/storage/ration/beef_strips,
					/obj/item/storage/ration/chili_macaroni
	)
	crate_name = "IRP set"
	crate_type = /obj/structure/closet/crate/secure/weapon
