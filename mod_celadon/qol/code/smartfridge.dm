/obj/item/circuitboard/machine/smartfridge
	name = "Smartfridge (Machine Board)"
	build_path = /obj/machinery/smartfridge
	req_components = list(/obj/item/stock_parts/matter_bin = 1)
	var/static/list/fridges_name_paths = list(/obj/machinery/smartfridge/bloodbank = "blood", // Bloodbank circuit added
		/obj/machinery/smartfridge/chemistry = "chems",
		/obj/machinery/smartfridge/disks = "disks",
		/obj/machinery/smartfridge/drinks = "drinks",
		/obj/machinery/smartfridge/food = "food",
		/obj/machinery/smartfridge/organ = "organs",
		/obj/machinery/smartfridge = "plant produce",
		/obj/machinery/smartfridge/extract = "slimes",
		/obj/machinery/smartfridge/chemistry/virology = "viruses")
	needs_anchored = FALSE
