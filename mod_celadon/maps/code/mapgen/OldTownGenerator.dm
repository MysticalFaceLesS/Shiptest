/datum/map_generator/planet_generator/oldtown

	mountain_height = 0.35
	perlin_zoom = 40

	initial_closed_chance = 45
	smoothing_iterations = 20
	birth_limit = 4
	death_limit = 3

	primary_area_type = /area/overmap_encounter/planetoid/oldtown

	biome_table = list(
		BIOME_COLDEST = list(
			BIOME_LOWEST_HUMIDITY = /datum/biome/waste/crater,
			BIOME_LOW_HUMIDITY = /datum/biome/waste/crater,
			BIOME_MEDIUM_HUMIDITY = /datum/biome/waste/clearing,
			BIOME_HIGH_HUMIDITY = /datum/biome/waste/clearing/mushroom,
			BIOME_HIGHEST_HUMIDITY = /datum/biome/waste/metal/rust
		),
		BIOME_COLD = list(
			BIOME_LOWEST_HUMIDITY = /datum/biome/waste/crater,
			BIOME_LOW_HUMIDITY = /datum/biome/waste/crater/rad,
			BIOME_MEDIUM_HUMIDITY = /datum/biome/oldtown,
			BIOME_HIGH_HUMIDITY = /datum/biome/waste/clearing/mushroom,
			BIOME_HIGHEST_HUMIDITY = /datum/biome/waste/tar_bed
		),
		BIOME_WARM = list(
			BIOME_LOWEST_HUMIDITY = /datum/biome/waste/clearing, //to-do, add chembees
			BIOME_LOW_HUMIDITY = /datum/biome/waste/clearing,
			BIOME_MEDIUM_HUMIDITY = /datum/biome/waste/clearing/mushroom,
			BIOME_HIGH_HUMIDITY = /datum/biome/oldtown,
			BIOME_HIGHEST_HUMIDITY = /datum/biome/oldtown
		),
		BIOME_TEMPERATE = list(
			BIOME_LOWEST_HUMIDITY = /datum/biome/oldtown,
			BIOME_LOW_HUMIDITY = /datum/biome/waste/tar_bed,
			BIOME_MEDIUM_HUMIDITY = /datum/biome/waste/metal,
			BIOME_HIGH_HUMIDITY = /datum/biome/oldtown,
			BIOME_HIGHEST_HUMIDITY = /datum/biome/waste/metal/rust
		),
		BIOME_HOT = list(
			BIOME_LOWEST_HUMIDITY = /datum/biome/oldtown,
			BIOME_LOW_HUMIDITY = /datum/biome/waste/tar_bed,
			BIOME_MEDIUM_HUMIDITY = /datum/biome/waste/tar_bed,
			BIOME_HIGH_HUMIDITY = /datum/biome/waste/tar_bed/total,
			BIOME_HIGHEST_HUMIDITY = /datum/biome/waste/tar_bed/total
		),
		BIOME_HOTTEST = list(
			BIOME_LOWEST_HUMIDITY = /datum/biome/waste/metal,
			BIOME_LOW_HUMIDITY = /datum/biome/waste/metal,
			BIOME_MEDIUM_HUMIDITY = /datum/biome/waste/metal,
			BIOME_HIGH_HUMIDITY = /datum/biome/waste/metal/rust,
			BIOME_HIGHEST_HUMIDITY = /datum/biome/waste/metal/rust
		)
	)

	cave_biome_table = list(
		BIOME_COLDEST_CAVE = list( //irradiated caves
			BIOME_LOWEST_HUMIDITY = /datum/biome/cave/waste,
			BIOME_LOW_HUMIDITY = /datum/biome/cave/waste,
			BIOME_MEDIUM_HUMIDITY = /datum/biome/cave/waste/tar_bed,
			BIOME_HIGH_HUMIDITY = /datum/biome/cave/waste/tar_bed/full,
			BIOME_HIGHEST_HUMIDITY = /datum/biome/cave/waste/tar_bed/full
		),
		BIOME_COLD_CAVE = list(
			BIOME_LOWEST_HUMIDITY = /datum/biome/cave/waste,
			BIOME_LOW_HUMIDITY = /datum/biome/cave/waste/rad,
			BIOME_MEDIUM_HUMIDITY = /datum/biome/cave/waste,
			BIOME_HIGH_HUMIDITY = /datum/biome/cave/waste/rad,
			BIOME_HIGHEST_HUMIDITY = /datum/biome/cave/waste
		),
		BIOME_WARM_CAVE = list(
			BIOME_LOWEST_HUMIDITY = /datum/biome/cave/waste,
			BIOME_LOW_HUMIDITY = /datum/biome/cave/waste,
			BIOME_MEDIUM_HUMIDITY = /datum/biome/cave/waste/metal,
			BIOME_HIGH_HUMIDITY = /datum/biome/cave/waste/metal,
			BIOME_HIGHEST_HUMIDITY = /datum/biome/cave/waste/tar_bed
		),
		BIOME_HOT_CAVE = list( //metal wreck for salvaging
			BIOME_LOWEST_HUMIDITY = /datum/biome/cave/waste/metal/hivebot,
			BIOME_LOW_HUMIDITY = /datum/biome/cave/waste/metal/hivebot,
			BIOME_MEDIUM_HUMIDITY = /datum/biome/cave/waste/metal/hivebot,
			BIOME_HIGH_HUMIDITY = /datum/biome/cave/waste/metal/,
			BIOME_HIGHEST_HUMIDITY = /datum/biome/cave/waste/metal/
		)
	)

/datum/biome/oldtown
	open_turf_types = list(
		/turf/open/floor/plating/asteroid/wasteplanet/lit = 80,
		/turf/open/floor/plating/wasteplanet/rust/lit = 15,
		/turf/open/floor/plating/wasteplanet/lit = 5
	)
