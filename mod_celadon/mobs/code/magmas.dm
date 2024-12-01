//Lavaland Goliath
/mob/living/simple_animal/hostile/asteroid/goliath/magma
	name = "goliath"
	desc = "A hulking, armor-plated beast with long tendrils arching from its back."
	icon = 'mod_celadon/_storge_icons/icons/mobs/goliaph_magma.dmi'
	icon_state = "goliath"
	icon_living = "goliath"
	icon_aggro = "goliath"
	icon_dead = "goliath_dead"
	throw_message = "does nothing to the tough hide of the"
	pre_attack_icon = "goliath_preattack"
	//mob_trophy = /obj/item/mob_trophy/goliath_tentacle
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab/goliath = 2, /obj/item/stack/sheet/bone = 2, /obj/item/stack/sheet/sinew = 2, /obj/item/stack/ore/silver = 10)
	guaranteed_butcher_results = list(/obj/item/stack/sheet/animalhide/goliath_hide = 2)
	loot = list()
	stat_attack = UNCONSCIOUS
	robust_searching = 1
	var/saddled = FALSE
	var/charging = FALSE
	var/revving_charge = FALSE
	var/charge_range = 7
	var/tent_range = 3

/mob/living/simple_animal/hostile/asteroid/goliath/magma/proc/charge(atom/chargeat = target, delay = 10, chargepast = 2)
	if(!chargeat)
		return
	var/chargeturf = get_turf(chargeat)
	if(!chargeturf)
		return
	var/dir = get_dir(src, chargeturf)
	var/turf/T = get_ranged_target_turf(chargeturf, dir, chargepast)
	if(!T)
		return
	charging = TRUE
	revving_charge = TRUE
	walk(src, 0)
	setDir(dir)
	var/obj/effect/temp_visual/decoy/D = new /obj/effect/temp_visual/decoy(loc,src)
	animate(D, alpha = 0, color = "#FF0000", transform = matrix()*2, time = 3)
	SLEEP_CHECK_DEATH(delay)
	revving_charge = FALSE
	var/movespeed = 0.7
	walk_towards(src, T, movespeed)
	SLEEP_CHECK_DEATH(get_dist(src, T) * movespeed)
	walk(src, 0) // cancel the movement
	charging = FALSE

/mob/living/simple_animal/hostile/asteroid/goliath/magma/Bump(atom/A)
	. = ..()
	if(charging && isclosedturf(A))				// We slammed into a wall while charging
		wall_slam(A)

/mob/living/simple_animal/hostile/asteroid/goliath/magma/proc/wall_slam(atom/A)
	charging = FALSE
	Stun(100, TRUE, TRUE)
	walk(src, 0)		// Cancel the movement
	if(ismineralturf(A))
		var/turf/closed/mineral/M = A
		if(M.mineralAmt < 7)
			M.mineralAmt++

/mob/living/simple_animal/hostile/asteroid/goliath/magma/OpenFire()
	var/tturf = get_turf(target)
	var/dist = get_dist(src, target)
	if(!isturf(tturf) || !isliving(target))
		return
	if(dist <= tent_range)
		visible_message("<span class='warning'>[src] digs it's tentacles under [target]!</span>")
		new tentacle_type(tturf, src ,TRUE)
		ranged_cooldown = world.time + ranged_cooldown_time
		icon_state = icon_aggro
		pre_attack = 0
	else if(dist <= charge_range && can_charge)		//Screen range check, so you can't get charged offscreen
		charge()

/mob/living/simple_animal/hostile/asteroid/goliath/magma/attackby(obj/item/O, mob/user, params)
	if(istype(O, /obj/item/saddle) && !saddled)
		if(tame && do_after(user, 55, target=src))
			user.visible_message("<span class='notice'>You manage to put [O] on [src], you can now ride [p_them()].</span>")
			qdel(O)
			saddled = TRUE
			can_buckle = TRUE
			buckle_lying = FALSE
			add_overlay("goliath_saddled")
			var/datum/component/riding/D = LoadComponent(/datum/component/riding)
			D.set_riding_offsets(RIDING_OFFSET_ALL, list(TEXT_NORTH = list(0, 8), TEXT_SOUTH = list(0, 8), TEXT_EAST = list(-2, 8), TEXT_WEST = list(2, 8)))
			D.set_vehicle_dir_layer(SOUTH, ABOVE_MOB_LAYER)
			D.set_vehicle_dir_layer(NORTH, OBJ_LAYER)
			D.set_vehicle_dir_layer(EAST, OBJ_LAYER)
			D.set_vehicle_dir_layer(WEST, OBJ_LAYER)
			D.drive_verb = "ride"
		else
			user.visible_message("<span class='warning'>[src] is rocking around! You can't put the saddle on!</span>")
		return
	..()

//tentacles
/obj/effect/temp_visual/goliath_tentacle
	name = "goliath tentacle"
	icon = 'mod_celadon/_storge_icons/icons/mobs/elemental_fire.dmi'
	icon_state = "Goliath_tentacle_wiggle"
	layer = BELOW_MOB_LAYER
	var/mob/living/spawner
	var/wiggle = "Goliath_tentacle_spawn"
	var/retract = "Goliath_tentacle_retract"
	var/difficulty = 3

/obj/effect/temp_visual/goliath_tentacle/Initialize(mapload, mob/living/new_spawner,recursive = FALSE)
	. = ..()
	flick(wiggle,src)
	for(var/obj/effect/temp_visual/goliath_tentacle/T in loc)
		if(T != src)
			return INITIALIZE_HINT_QDEL
	if(!QDELETED(new_spawner))
		spawner = new_spawner
	if(ismineralturf(loc))
		var/turf/closed/mineral/M = loc
		M.gets_drilled()
	deltimer(timerid)
	timerid = addtimer(CALLBACK(src, PROC_REF(tripanim)), 7, TIMER_STOPPABLE)
	if(!recursive)
		return
	var/list/directions = get_directions()
	for(var/i in 1 to difficulty)
		var/spawndir = pick_n_take(directions)
		var/turf/T = get_step(src, spawndir)
		if(T)
			new type(T, spawner)

/obj/effect/temp_visual/goliath_tentacle/proc/get_directions()
	return GLOB.cardinals.Copy()

/obj/effect/temp_visual/goliath_tentacle/proc/tripanim()
	deltimer(timerid)
	timerid = addtimer(CALLBACK(src, PROC_REF(trip)), 3, TIMER_STOPPABLE)

/obj/effect/temp_visual/goliath_tentacle/proc/trip()
	var/latched = FALSE
	for(var/mob/living/L in loc)
		if((!QDELETED(spawner) && spawner.faction_check_mob(L)) || L.stat == DEAD)
			continue
		visible_message("<span class='danger'>[src] wraps a mass of tentacles around [L]!</span>")
		on_hit(L)
		latched = TRUE
	if(!latched)
		retract()
	else
		deltimer(timerid)
		timerid = addtimer(CALLBACK(src, PROC_REF(retract)), 10, TIMER_STOPPABLE)

/obj/effect/temp_visual/goliath_tentacle/proc/on_hit(mob/living/target)
	target.apply_damage(rand(20,30), BRUTE, pick(BODY_ZONE_L_LEG, BODY_ZONE_R_LEG))
	if(iscarbon(target))
		var/obj/item/restraints/legcuffs/beartrap/goliath/B = new /obj/item/restraints/legcuffs/beartrap/goliath(get_turf(target))
		B.on_entered(src, target)

/obj/effect/temp_visual/goliath_tentacle/proc/retract()
	icon_state = "marker"
	flick(retract,src)
	deltimer(timerid)
	timerid = QDEL_IN(src, 7)
