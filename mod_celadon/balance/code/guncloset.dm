//GUNCLOSET//

/obj/structure/guncloset
	capacity = 6
	armor = list("melee" = 20, "bullet" = 20, "laser" = 20, "energy" = 20, "bomb" = 20, "bio" = 0, "rad" = 0, "fire" = 70, "acid" = 60)

/obj/structure/guncloset/Destroy()
	dump_contents()
	return ..()

/obj/structure/guncloset/dump_contents()
	if(!isturf(loc))
		return
	var/atom/L = drop_location()
	for(var/atom/movable/AM as anything in src)
		AM.forceMove(L)
		if(throwing) // you keep some momentum when getting out of a thrown closet
			step(AM, dir)
	if(throwing)
		throwing.finalize(FALSE)
