/datum/planet_type/old_town
	name = "old town"
	desc = "An abandoned and infected city. A place you don't want to be."
	planet = DYNAMIC_WORLD_OLD_TOWN
	color = COLOR_NAVY
	mapgen = null
	gravity = GRAVITY_DAMAGE_TRESHOLD
	default_baseturf = /turf/open/floor/plating/asteroid/wasteplanet
	weather_controller_type = /datum/weather_controller/desert
	weight = 0
	icon_state = "globe"
	preserve_level = TRUE
	landing_sound = 'sound/effects/planet_landing_2.ogg'

/datum/planet_type/plasma_giant
	name = "plasma giant"
	desc = "The backbone of interstellar travel, the mighty plasma giant allows fuel collection to take place."
	planet = DYNAMIC_WORLD_PLASMA_GIANT
	color = COLOR_PURPLE
	mapgen = /datum/map_generator/planet_generator/plasma_gaint
	gravity = GRAVITY_DAMAGE_TRESHOLD
	default_baseturf = /turf/open/floor/plating/asteroid/plasma_gaint
	icon_state = "globe"
	preserve_level = FALSE
	weight = 20
	ruin_type = RUINTYPE_PLASMA
	landing_sound = 'sound/effects/planet_landing_2.ogg'

/datum/planet_type/earthsand
	name = "Sand Planet"
	desc = "Great Quicksand"
	planet = DYNAMIC_WORLD_EARTH_SAND
	color = COLOR_LIGHT_ORANGE
	mapgen = /datum/map_generator/planet_generator/earth_sand
	gravity = STANDARD_GRAVITY
	default_baseturf = /turf/open/floor/plating/asteroid/sand
	icon_state = "globe_2"
	weight = 0
	ruin_type = RUINTYPE_EARTH_SAND
	landing_sound = 'mod_celadon/_storge_sounds/sound/events/planet_landing_3.mp3'

/datum/planet_type/ice/night // Мне очень не нравится, как я это сделал, но на другую реализацию у меня не хватает знаний
	planet = DYNAMIC_WORLD_ICE_NIGHT
	mapgen = /datum/map_generator/planet_generator/snow/night
	default_baseturf = /turf/open/floor/plating/asteroid/snow/icemoon

/datum/planet_type/jungle/night
	planet = DYNAMIC_WORLD_JUNGLE_NIGHT
	mapgen = /datum/map_generator/planet_generator/jungle/night
	default_baseturf = /turf/open/floor/plating/dirt/jungle

/datum/planet_type/rock/night
	planet = DYNAMIC_WORLD_ROCKPLANET_NIGHT
	mapgen = /datum/map_generator/planet_generator/rock/night
	default_baseturf = /turf/open/floor/plating/asteroid

/datum/planet_type/beach/night
	planet = DYNAMIC_WORLD_BEACHPLANET_NIGHT
	mapgen = /datum/map_generator/planet_generator/beach/night
	default_baseturf = /turf/open/floor/plating/asteroid/sand/lit
