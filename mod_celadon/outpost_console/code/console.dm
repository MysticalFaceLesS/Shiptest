/*
	Faction-less
*/

/obj/machinery/computer/cargo/faction
	name = "faction outpost console"
	desc = "Looks like that console hasn't correct faction connection. Please, message to our specialists!"
	icon_screen = "civ_bounty"
	circuit = /obj/item/circuitboard/computer/cargo
	light_color = COLOR_LIME

	contraband = FALSE
	self_paid = FALSE

	charge_account = ACCOUNT_FAC

	podType = /obj/structure/closet/supplypod/centcompod

/obj/machinery/computer/cargo/faction/Initialize()
	. = ..()
	var/obj/item/circuitboard/computer/cargo/board = circuit
	contraband = board.contraband
	if (board.obj_flags & EMAGGED)
		obj_flags |= EMAGGED
	else
		obj_flags &= ~EMAGGED
	var/datum/bank_account/B = SSeconomy.get_dep_account(charge_account)
	if(B)
		charge_account = B
	generate_pack_data()

/obj/machinery/computer/cargo/faction/reconnect(obj/docking_port/mobile/port)
	if(!port)
		var/area/ship/current_area = get_area(src)
		if(!istype(current_area))
			return
		port = current_area.mobile_port
	if(!port)
		return
	landingzone = get_area(src)

/obj/machinery/computer/cargo/faction/ui_interact(mob/user, datum/tgui/ui)
	ui = SStgui.try_update_ui(user, src, ui)
	if(!ui)
		ui = new(user, src, "OutpostCommunicationsFaction", name)
		ui.open()
		if(!charge_account)
			reconnect()

/obj/machinery/computer/cargo/faction/generate_pack_data()
	supply_pack_data = list()
	for(var/pack in SSshuttle.supply_packs)
		var/datum/supply_pack/P = SSshuttle.supply_packs[pack]
		if(!supply_pack_data[P.group])
			supply_pack_data[P.group] = list(
				"name" = P.group,
				"packs" = list()
			)
		if(P.hidden)
			continue
		supply_pack_data[P.group]["packs"] += list(list(
			"name" = P.name,
			"cost" = P.cost,
			"id" = pack,
			"desc" = P.desc || P.name // If there is a description, use it. Otherwise use the pack's name.
		))

/obj/machinery/computer/cargo/faction/ui_static_data(mob/user)
	var/list/data = list()
	data["supplies"] = list()
	for(var/pack in SSshuttle.supply_packs)
		var/datum/supply_pack/P = SSshuttle.supply_packs[pack]
		if(!data["supplies"][P.group])
			data["supplies"][P.group] = list(
				"name" = P.group,
				"packs" = list()
			)
		if((P.hidden && !(obj_flags & EMAGGED)))
			continue
		data["supplies"][P.group]["packs"] += list(list(
			"name" = P.name,
			"cost" = P.cost,
			"id" = pack,
			"desc" = P.desc || P.name, // If there is a description, use it. Otherwise use the pack's name.
			"small_item" = P.small_item,
		))
	return data

/obj/machinery/computer/cargo/faction/ui_act(action, params, datum/tgui/ui)
	. = ..()
	if(.)
		return
	switch(action)
		if("withdrawCash")
			var/val = text2num(params["value"])
			// no giving yourself money
			if(!charge_account || !val || val <= 0)
				return
			if(charge_account.adjust_money(-val))
				var/obj/item/holochip/cash_chip = new /obj/item/holochip(drop_location(), val)
				if(ishuman(usr))
					var/mob/living/carbon/human/user = usr
					user.put_in_hands(cash_chip)
				playsound(src, 'sound/machines/twobeep_high.ogg', 50, TRUE)
				src.visible_message("<span class='notice'>[src] dispenses a holochip.</span>")
			return TRUE

		if("LZCargo")
			use_beacon = FALSE
			if (beacon)
				beacon.update_status(SP_UNREADY) //ready light on beacon will turn off
		if("LZBeacon")
			use_beacon = TRUE
			if (beacon)
				beacon.update_status(SP_READY) //turns on the beacon's ready light
		if("printBeacon")
			if(charge_account?.adjust_money(-BEACON_COST))
				cooldown = 10//a ~ten second cooldown for printing beacons to prevent spam
				var/obj/item/supplypod_beacon/C = new /obj/item/supplypod_beacon(drop_location())
				C.link_console(src, usr)//rather than in beacon's Initialize(), we can assign the computer to the beacon by reusing this proc)
				printed_beacons++//printed_beacons starts at 0, so the first one out will be called beacon # 1
				beacon.name = "Supply Pod Beacon #[printed_beacons]"
		if("add")
			var/area/current_area = get_area(src)
			var/datum/supply_pack/pack = SSshuttle.supply_packs[text2path(params["id"])]
			if(!pack || !charge_account?.has_money(pack.cost) || !istype(current_area))
				return

			var/turf/landing_turf
			if(!isnull(beacon) && use_beacon) // prioritize beacons over landing in cargobay
				landing_turf = get_turf(beacon)
				beacon.update_status(SP_LAUNCH)
			else if(!use_beacon)// find a suitable supplypod landing zone in cargobay
				var/list/empty_turfs = list()
				if(!landingzone)
					reconnect()
					if(!landingzone)
						WARNING("[src] couldnt find a Ship/Cargo (aka cargobay) area on a ship, and as such it has set the supplypod landingzone to the area it resides in.")
						landingzone = get_area(src)
				for(var/turf/open/floor/T in landingzone.contents)//uses default landing zone
					if(T.is_blocked_turf())
						continue
					empty_turfs += T
					CHECK_TICK
				landing_turf = pick(empty_turfs)

			// note that, because of CHECK_TICK above, we aren't sure if we can
			// afford the pack, even though we checked earlier. luckily adjust_money
			// returns false if the account can't afford the price
			if(landing_turf && charge_account.adjust_money(-pack.cost))
				var/name = "*None Provided*"
				var/rank = "*None Provided*"
				if(ishuman(usr))
					var/mob/living/carbon/human/H = usr
					name = H.get_authentification_name()
					rank = H.get_assignment(hand_first = TRUE)
				else if(issilicon(usr))
					name = usr.real_name
					rank = "Silicon"
				var/datum/supply_order/SO = new(pack, name, rank, usr.ckey, "")
				new /obj/effect/pod_landingzone(landing_turf, podType, SO)
				update_appearance() // ??????????????????
				return TRUE

		if("mission-act")
			var/datum/mission/mission = locate(params["ref"])
			var/obj/docking_port/mobile/D = SSshuttle.get_containing_shuttle(src)
			var/datum/overmap/ship/controlled/ship = D.current_ship
			var/datum/overmap/outpost/outpost = ship.docked_to
			if(!istype(outpost) || mission.source_outpost != outpost) // important to check these to prevent href fuckery
				return
			if(!mission.accepted)
				if(LAZYLEN(ship.missions) >= ship.max_missions)
					return
				mission.accept(ship, loc)
				return TRUE
			else if(mission.servant == ship)
				if(mission.can_complete())
					mission.turn_in()
				else
					mission.give_up()
				return TRUE

/*
	Syndicate
*/

/obj/machinery/computer/cargo/faction/syndicate
	name = "syndicate outpost console"
	desc = "That outpost console belongs to Syndicate."
	icon_screen = "syndishuttle"
	circuit = /obj/item/circuitboard/computer/cargo
	light_color = COLOR_DARK_RED

	contraband = FALSE
	self_paid = FALSE

	podType = /obj/structure/closet/supplypod/extractionpod

	charge_account = ACCOUNT_SYN

/obj/machinery/computer/cargo/faction/syndicate/ui_interact(mob/user, datum/tgui/ui)
	ui = SStgui.try_update_ui(user, src, ui)
	if(!ui)
		ui = new(user, src, "OutpostCommunicationsFactionSyndicate", name)
		ui.open()
		if(!charge_account)
			reconnect()

/obj/machinery/computer/cargo/faction/syndicate/generate_pack_data()
	supply_pack_data = list()
	for(var/pack in SSshuttle.supply_packs)
		var/datum/supply_pack/P = SSshuttle.supply_packs[pack]
		if(!supply_pack_data[P.group] && P.faction == "syndicate")
			supply_pack_data[P.group] = list(
				"name" = P.group,
				"packs" = list()
			)
		if(P.hidden && (P.faction != "syndicate"))
			continue
		if(P.faction == "syndicate")
			supply_pack_data[P.group]["packs"] += list(list(
				"name" = P.name,
				"cost" = P.cost,
				"id" = pack,
				"desc" = P.desc || P.name // If there is a description, use it. Otherwise use the pack's name.
			))

/obj/machinery/computer/cargo/faction/syndicate/ui_static_data(mob/user)
	var/list/data = list()
	data["supplies"] = list()
	for(var/pack in SSshuttle.supply_packs)
		var/datum/supply_pack/P = SSshuttle.supply_packs[pack]
		if(!data["supplies"][P.group])
			data["supplies"][P.group] = list(
				"name" = P.group,
				"packs" = list()
			)
		if((P.hidden && !(obj_flags & EMAGGED)) && (P.faction != "syndicate"))
			continue
		data["supplies"][P.group]["packs"] += list(list(
			"name" = P.name,
			"cost" = P.cost,
			"id" = pack,
			"desc" = P.desc || P.name, // If there is a description, use it. Otherwise use the pack's name.
			"small_item" = P.small_item,
		))
	return data

/*
	Inteq
*/

/obj/machinery/computer/cargo/faction/inteq
	name = "inteq outpost console"
	desc = "That outpost console belongs to Inteq."
	icon_screen = "ratvar1"
	circuit = /obj/item/circuitboard/computer/cargo
	light_color = COLOR_TAN_ORANGE

	contraband = FALSE
	self_paid = FALSE

	podType = /obj/structure/closet/supplypod/centcompod

	charge_account = ACCOUNT_INT

/obj/machinery/computer/cargo/faction/inteq/ui_interact(mob/user, datum/tgui/ui)
	ui = SStgui.try_update_ui(user, src, ui)
	if(!ui)
		ui = new(user, src, "OutpostCommunicationsFactionInteq", name)
		ui.open()
		if(!charge_account)
			reconnect()

/obj/machinery/computer/cargo/faction/inteq/generate_pack_data()
	supply_pack_data = list()
	for(var/pack in SSshuttle.supply_packs)
		var/datum/supply_pack/P = SSshuttle.supply_packs[pack]
		if(!supply_pack_data[P.group] && P.faction == "inteq")
			supply_pack_data[P.group] = list(
				"name" = P.group,
				"packs" = list()
			)
		if(P.hidden && (P.faction != "inteq"))
			continue
		if(P.faction == "inteq")
			supply_pack_data[P.group]["packs"] += list(list(
				"name" = P.name,
				"cost" = P.cost,
				"id" = pack,
				"desc" = P.desc || P.name // If there is a description, use it. Otherwise use the pack's name.
			))

/obj/machinery/computer/cargo/faction/inteq/ui_static_data(mob/user)
	var/list/data = list()
	data["supplies"] = list()
	for(var/pack in SSshuttle.supply_packs)
		var/datum/supply_pack/P = SSshuttle.supply_packs[pack]
		if(!data["supplies"][P.group])
			data["supplies"][P.group] = list(
				"name" = P.group,
				"packs" = list()
			)
		if((P.hidden && !(obj_flags & EMAGGED)) && (P.faction != "inteq"))
			continue
		data["supplies"][P.group]["packs"] += list(list(
			"name" = P.name,
			"cost" = P.cost,
			"id" = pack,
			"desc" = P.desc || P.name, // If there is a description, use it. Otherwise use the pack's name.
			"small_item" = P.small_item,
		))
	return data

/*
	SolFed
*/

/obj/machinery/computer/cargo/faction/solfed
	name = "SolFed outpost console"
	desc = "That outpost console belongs to SolFed."
	icon_screen = "vault"
	circuit = /obj/item/circuitboard/computer/cargo
	light_color = COLOR_DARK_CYAN

	contraband = FALSE
	self_paid = FALSE

	podType = /obj/structure/closet/supplypod/centcompod

	charge_account = ACCOUNT_SLF

/obj/machinery/computer/cargo/faction/solfed/ui_interact(mob/user, datum/tgui/ui)
	ui = SStgui.try_update_ui(user, src, ui)
	if(!ui)
		ui = new(user, src, "OutpostCommunicationsFactionSolfed", name)
		ui.open()
		if(!charge_account)
			reconnect()

/obj/machinery/computer/cargo/faction/solfed/generate_pack_data()
	supply_pack_data = list()
	for(var/pack in SSshuttle.supply_packs)
		var/datum/supply_pack/P = SSshuttle.supply_packs[pack]
		if(!supply_pack_data[P.group] && P.faction == "solfed")
			supply_pack_data[P.group] = list(
				"name" = P.group,
				"packs" = list()
			)
		if(P.hidden && (P.faction != "solfed"))
			continue
		if(P.faction == "solfed")
			supply_pack_data[P.group]["packs"] += list(list(
				"name" = P.name,
				"cost" = P.cost,
				"id" = pack,
				"desc" = P.desc || P.name // If there is a description, use it. Otherwise use the pack's name.
			))

/obj/machinery/computer/cargo/faction/solfed/ui_static_data(mob/user)
	var/list/data = list()
	data["supplies"] = list()
	for(var/pack in SSshuttle.supply_packs)
		var/datum/supply_pack/P = SSshuttle.supply_packs[pack]
		if(!data["supplies"][P.group])
			data["supplies"][P.group] = list(
				"name" = P.group,
				"packs" = list()
			)
		if((P.hidden && !(obj_flags & EMAGGED)) && (P.faction != "solfed"))
			continue
		data["supplies"][P.group]["packs"] += list(list(
			"name" = P.name,
			"cost" = P.cost,
			"id" = pack,
			"desc" = P.desc || P.name, // If there is a description, use it. Otherwise use the pack's name.
			"small_item" = P.small_item,
		))
	return data

/*
	Independent
*/

/obj/machinery/computer/cargo/faction/independent
	name = "Independent outpost console"
	desc = "That outpost console belongs to Independent faction."
	icon_screen = "idce"
	circuit = /obj/item/circuitboard/computer/cargo
	light_color = COLOR_VIVID_YELLOW

	contraband = FALSE
	self_paid = FALSE

	podType = /obj/structure/closet/supplypod/elysiumpod

	charge_account = ACCOUNT_IND

/obj/machinery/computer/cargo/faction/independent/ui_interact(mob/user, datum/tgui/ui)
	ui = SStgui.try_update_ui(user, src, ui)
	if(!ui)
		ui = new(user, src, "OutpostCommunicationsFactionIndependent", name)
		ui.open()
		if(!charge_account)
			reconnect()

/obj/machinery/computer/cargo/faction/independent/generate_pack_data()
	supply_pack_data = list()
	for(var/pack in SSshuttle.supply_packs)
		var/datum/supply_pack/P = SSshuttle.supply_packs[pack]
		if(!supply_pack_data[P.group] && !P.faction)
			supply_pack_data[P.group] = list(
				"name" = P.group,
				"packs" = list()
			)
		if(P.hidden && (P.faction != "independent"))
			continue
		if(!P.faction)
			supply_pack_data[P.group]["packs"] += list(list(
				"name" = P.name,
				"cost" = P.cost,
				"id" = pack,
				"desc" = P.desc || P.name // If there is a description, use it. Otherwise use the pack's name.
			))

/obj/machinery/computer/cargo/faction/independent/ui_static_data(mob/user)
	var/list/data = list()
	data["supplies"] = list()
	for(var/pack in SSshuttle.supply_packs)
		var/datum/supply_pack/P = SSshuttle.supply_packs[pack]
		if(!data["supplies"][P.group])
			data["supplies"][P.group] = list(
				"name" = P.group,
				"packs" = list()
			)
		if((P.hidden && !(obj_flags & EMAGGED)) && (P.faction != "independent"))
			continue
		data["supplies"][P.group]["packs"] += list(list(
			"name" = P.name,
			"cost" = P.cost,
			"id" = pack,
			"desc" = P.desc || P.name, // If there is a description, use it. Otherwise use the pack's name.
			"small_item" = P.small_item,
		))
	return data
