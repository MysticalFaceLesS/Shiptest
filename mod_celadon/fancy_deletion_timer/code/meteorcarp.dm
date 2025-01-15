/obj/effect/meteor/carp/make_debris()
	for(var/throws = dropamt, throws > 0, throws--)
		var/mob/living/thing_to_spawn = pick(meteordrop)
		thing_to_spawn = new thing_to_spawn(get_turf(src))

		thing_to_spawn.AddComponent(/datum/component/fancy_deleting_timer)
		var/datum/component/fancy_deleting_timer/fdt = thing_to_spawn.GetComponent(/datum/component/fancy_deleting_timer)
		fdt.turf_whitelist = 1
		fdt.T = list(/turf/open/space)
		fdt.parent = thing_to_spawn
		fdt.start_the_timer(360)
