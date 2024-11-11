/turf/open/floor/engine/cult
	name = "engraved floor"
	desc = "The air smells strange over this sinister flooring."
	icon_state = "plating"
	floor_tile = null
	var/obj/effect/cult_turf/overlay/floor/bloodcult/realappearance


/turf/open/floor/engine/cult/Initialize(mapload, inherited_virtual_z)
	. = ..()
	new /obj/effect/temp_visual/cult/turf/floor(src)
	realappearance = new /obj/effect/cult_turf/overlay/floor/bloodcult(src)
	realappearance.linked = src

/turf/open/floor/engine/cult/Destroy()
	be_removed()
	return ..()

/turf/open/floor/engine/cult/ChangeTurf(path, new_baseturf, flags)
	if(path != type)
		be_removed()
	return ..()

/turf/open/floor/engine/cult/proc/be_removed()
	qdel(realappearance)
	realappearance = null

/turf/open/floor/engine/cult/airless
	initial_gas_mix = AIRLESS_ATMOS