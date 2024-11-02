// Тюрфы плазменной планеты //

/turf/open/floor/plating/asteroid/plasma_gaint
	name = "ashen sand"
	desc = "Sand, tinted by the chemicals in the atmosphere to an uncanny shade of purple."
	icon = 'icons/turf/lavaland_purple.dmi'
	baseturfs = /turf/open/floor/plating/asteroid/plasma_gaint
	turf_type = /turf/open/floor/plating/asteroid/purple/lit
	initial_gas_mix = PLASMA_GIANT_ATMOS
	color = COLOR_DARK_MODERATE_ORANGE

/turf/open/floor/plating/asteroid/plasma_gaint/lit
	light_range = 2
	light_power = 0.3
	light_color = LIGHT_COLOR_FIRE

/turf/open/floor/plating/moss/plasma_gaint
	name = "mossy carpet"
	desc = "When the forests burned away and the sky grew dark, the moss learned to feed on the falling ash."
	baseturfs = /turf/open/floor/plating/ashplanet //explosions and damage can destroy the moss
	initial_gas_mix = PLASMA_GIANT_ATMOS
	planetary_atmos = TRUE
	icon_state = "moss"
	icon = 'icons/turf/lava_moss.dmi'
	base_icon_state = "moss"
	bullet_bounce_sound = null
	footstep = FOOTSTEP_GRASS
	barefootstep = FOOTSTEP_GRASS
	clawfootstep = FOOTSTEP_GRASS
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	layer = HIGH_TURF_LAYER
	gender = PLURAL
	light_power = 1
	light_range = 2
	pixel_x = -9
	pixel_y = -9

/turf/open/floor/plating/grass/lava/purple/plasma_gaint
	initial_gas_mix = PLASMA_GIANT_ATMOS
	baseturfs = /turf/open/floor/plating/grass/lava/purple
	icon = 'icons/turf/floors/lava_grass_purple.dmi'
	smooth_icon = 'icons/turf/floors/lava_grass_purple.dmi'

/turf/open/lava/plasma_gaint
	name = "liquid plasma"
	desc = "A flowing stream of chilled liquid plasma. You probably shouldn't get in."
	icon_state = "liquidplasma"
	initial_gas_mix = PLASMA_GIANT_ATMOS
	baseturfs = /turf/open/lava/plasma
	slowdown = 2

	light_range = 3
	light_power = 0.75
	light_color = LIGHT_COLOR_PURPLE
	particle_emitter = null

/turf/open/floor/plating/asteroid/basalt/purple/lit/plasma_gaint
	initial_gas_mix = PLASMA_GIANT_ATMOS

/turf/closed/mineral/random/plasma_gaint
	var/gravity = GRAVITY_DAMAGE_TRESHOLD
	name = "basalt"
	desc = "Eruptions stack like layer-cake, forming vast oceans of dried magma."
	icon_state = "smoothrocks-0"
	environment_type = "basalt"
	turf_type = /turf/open/floor/plating/asteroid/basalt/plasma_gaint
	baseturfs = /turf/open/floor/plating/asteroid/basalt/plasma_gaint
	initial_gas_mix = PLASMA_GIANT_ATMOS
	defer_change = 1

	mineralChance = 5
	mineralSpawnChanceList = list(
		/obj/item/stack/ore/uranium = 10, /obj/item/stack/ore/diamond = 4, /obj/item/stack/ore/gold = 20, /obj/item/stack/ore/titanium = 33,
		/obj/item/stack/ore/silver = 24, /obj/item/stack/ore/plasma = 45, /obj/item/stack/ore/iron = 45,
		/turf/closed/mineral/gibtonite/volcanic = 8, /obj/item/stack/ore/bluespace_crystal = 5)

/turf/open/floor/plating/asteroid/basalt/plasma_gaint
	initial_gas_mix = PLASMA_GIANT_ATMOS
	planetary_atmos = TRUE
	icon = 'icons/turf/lavaland_purple.dmi'
	baseturfs = /turf/open/floor/plating/asteroid/basalt/plasma_gaint
	turf_type = /turf/open/floor/plating/asteroid/basalt/plasma_gaint

/turf/open/lava/plasma_gaint/lit
	light_range = 0
	light_power = 0

/turf/open/chasm/plasma
	baseturfs = /turf/open/chasm
	icon = 'icons/turf/floors/chasms.dmi'
	icon_state = "chasms-255"
	base_icon_state = "chasms"
	light_color = COLOR_PURPLE
	color = null
	initial_gas_mix = PLASMA_GIANT_ATMOS

// Тюрфы пустынной планеты //

/turf/closed/mineral/random/whitesands/earth
	name = "sandstone"
	initial_gas_mix = OPENTURF_DEFAULT_ATMOS
	turf_type = /turf/open/floor/plating/asteroid/whitesands/earth
	baseturfs = /turf/open/floor/plating/asteroid/whitesands/earth

/turf/open/floor/plating/asteroid/whitesands/earth
	name = "sand"
	initial_gas_mix = OPENTURF_DEFAULT_ATMOS
	icon = 'mod_celadon/_storge_icons/icons/turf/beach.dmi'
	icon_state = "sand"

// Тюрфы ночи //

/turf/open/water/jungle/nolit
	light_range = 0

/turf/open/water/beach/nolit
	light_range = 0

/turf/open/water/beach/deep/nolit
	light_range = 0

/turf/open/floor/plating/asteroid/snow/lit/rockplanet/nolit
	light_range = 0

/turf/closed/mineral/ice/nolit
	light_range = 0

/turf/closed/indestructible/edge
	light_on = 0
	light_power = 0
	light_system = 0
	dynamic_lighting = 0
