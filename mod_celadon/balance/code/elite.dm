//Elite mining mobs
/mob/living/simple_animal/hostile/asteroid/elite
	faction = list("elitefauna")
	maxHealth = 400
	health = 400
	
// Turmor
/obj/structure/elite_tumor
	icon = 'mod_celadon/_storge_icons/icons/obj/tumor.dmi'
	var/doom = FALSE
	var/mfauna

/obj/structure/elite_tumor/proc/make_activator(mob/user)
	if(activator)
		return
	activator = user
	ADD_TRAIT(user, TRAIT_ELITE_CHALLENGER, REF(src))
	RegisterSignal(user, COMSIG_PARENT_QDELETING, PROC_REF(clear_activator))
	user.log_message("activated an Elite Tumor!", LOG_GAME, color="#960000")

/obj/structure/elite_tumor/proc/clear_activator(mob/source)
	SIGNAL_HANDLER
	if(!activator)
		return
	activator = null
	REMOVE_TRAIT(source, TRAIT_ELITE_CHALLENGER, REF(src))
	UnregisterSignal(source, COMSIG_PARENT_QDELETING)

/mob/living/simple_animal/hostile/asteroid/elite/broodmother
	armor = list("melee" = 10, "bullet" = 20, "laser" = 20, "energy" = 30, "bomb" = 40, "bio" = 20, "rad" = 20, "fire" = 40, "acid" = 20)
	melee_damage_lower = 10
	melee_damage_upper = 10
	armour_penetration = 0
	var/hp_high = 0
	var/hp_mid = 0
	var/hp_low = 0
	var/hp_dead = 0
	var/childragecall = 0

/mob/living/simple_animal/hostile/asteroid/elite/broodmother/update_stat()
	. = ..()
	if(hp_high != 1 && health < maxHealth * 0.75 && health >= maxHealth * 0.5)
		spawn_children()
		hp_high = 1
	if(hp_mid != 1 && health < maxHealth * 0.50 && health >= maxHealth * 0.25)
		spawn_children()
		hp_mid = 1
	if(hp_low != 1 && health < maxHealth * 0.25 && health >= 1)
		spawn_children()
		hp_low = 1
	if(hp_dead != 1 && stat == DEAD)
		spawn_children()
		hp_dead = 1

/mob/living/simple_animal/hostile/asteroid/elite/broodmother/AttackingTarget()
	if(target && isliving(target))
		if(childragecall != 0)
			call_children()
			childragecall = 0
	return ..()

/mob/living/simple_animal/hostile/asteroid/elite/herald
	armor = list("melee" = 20, "bullet" = 30, "laser" = 20, "energy" = 30, "bomb" = 50, "bio" = 40, "rad" = 20, "fire" = 20, "acid" = 20)

/mob/living/simple_animal/hostile/asteroid/elite/herald/AttackingTarget()
	if(target && isliving(target))
		if(prob(10))
			herald_teleshot(target)
	return ..()

/mob/living/simple_animal/hostile/asteroid/elite/legionnaire
	armor = list("melee" = 10, "bullet" = 20, "laser" = 20, "energy" = 30, "bomb" = 40, "bio" = 100, "rad" = 20, "fire" = 20, "acid" = 20)
	speed = 5
	retreat_distance = 4
	minimum_distance = 3

/mob/living/simple_animal/hostile/asteroid/elite/legionnairehead
	melee_damage_lower = 5

/obj/structure/legionnaire_bonfire
	max_integrity = 50
	armor = list("melee" = 20, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = -10)

/obj/structure/legionnaire_bonfire/Initialize()
	. = ..()
	var/datum/effect_system/smoke_spread/smoke = new
	smoke.set_up(1, loc)
	smoke.start()
	addtimer(CALLBACK(src, PROC_REF(conjure_broodlings)), 5 SECONDS)

/obj/structure/legionnaire_bonfire/proc/conjure_broodlings()
	var/mob/living/simple_animal/hostile/asteroid/hivelordbrood/legion/A = new /mob/living/simple_animal/hostile/asteroid/hivelordbrood/legion(get_turf(src),src)
	A.faction = myowner.faction
	addtimer(CALLBACK(src, PROC_REF(conjure_broodlings)), 5 SECONDS)
