/datum/overmap/outpost/elysium_asteroid
	token_icon_state = "station_asteroid_0"
	main_template = /datum/map_template/outpost/elysium_asteroid
	elevator_template = /datum/map_template/outpost/elevator_test
	hangar_templates = list(
		/datum/map_template/outpost/hangar/elysium_asteroid_20x20,
		/datum/map_template/outpost/hangar/elysium_asteroid_40x20,
		/datum/map_template/outpost/hangar/elysium_asteroid_40x40,
		/datum/map_template/outpost/hangar/elysium_asteroid_56x20,
		/datum/map_template/outpost/hangar/elysium_asteroid_56x40
	)

/*
	Elysium Asteroid
*/

/datum/map_template/outpost/elysium_asteroid
	name = "elysium_asteroid"

/datum/map_template/outpost/hangar/elysium_asteroid_20x20
	name = "hangar/elysium_asteroid_20x20"
	dock_width = 20
	dock_height = 20

/datum/map_template/outpost/hangar/elysium_asteroid_40x20
	name = "hangar/elysium_asteroid_40x20"
	dock_width = 40
	dock_height = 20

/datum/map_template/outpost/hangar/elysium_asteroid_40x40
	name = "hangar/elysium_asteroid_40x40"
	dock_width = 40
	dock_height = 40

/datum/map_template/outpost/hangar/elysium_asteroid_56x20
	name = "hangar/elysium_asteroid_56x20"
	dock_width = 56
	dock_height = 20

/datum/map_template/outpost/hangar/elysium_asteroid_56x40
	name = "hangar/elysium_asteroid_56x40"
	dock_width = 56
	dock_height = 40

/*
	Elysium Ice
*/
/datum/map_template/outpost/elysium_ice
	name = "elysium_ice"

/datum/map_template/outpost/hangar/elysium_ice_20x20
	name = "hangar/elysium_ice_20x20"
	dock_width = 20
	dock_height = 20

/datum/map_template/outpost/hangar/elysium_ice_40x20
	name = "hangar/elysium_ice_40x20"
	dock_width = 40
	dock_height = 20

/datum/map_template/outpost/hangar/elysium_ice_40x40
	name = "hangar/elysium_ice_40x40"
	dock_width = 40
	dock_height = 40

/datum/map_template/outpost/hangar/elysium_ice_56x20
	name = "hangar/elysium_ice_56x20"
	dock_width = 56
	dock_height = 20

/datum/map_template/outpost/hangar/elysium_ice_56x40
	name = "hangar/elysium_ice_56x40"
	dock_width = 56
	dock_height = 40

/datum/overmap/outpost/elysium_ice
	token_icon_state = "station_asteroid_0"
	main_template = /datum/map_template/outpost/elysium_ice
	elevator_template = /datum/map_template/outpost/elevator_ice
	hangar_templates = list(
		/datum/map_template/outpost/hangar/elysium_ice_20x20,
		/datum/map_template/outpost/hangar/elysium_ice_40x20,
		/datum/map_template/outpost/hangar/elysium_ice_40x40,
		/datum/map_template/outpost/hangar/elysium_ice_56x20,
		/datum/map_template/outpost/hangar/elysium_ice_56x40
	)
