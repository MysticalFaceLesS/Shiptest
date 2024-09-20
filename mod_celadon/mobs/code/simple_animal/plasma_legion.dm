/mob/living/simple_animal/hostile/asteroid/hivelord/legion/crystal/plasma
	icon = 'mod_celadon/_storge_icons/icons/mob/plasma_legion.dmi'
	brood_type = /mob/living/simple_animal/hostile/asteroid/hivelordbrood/legion/crystal/plasma

/mob/living/simple_animal/hostile/asteroid/hivelordbrood/legion/crystal/plasma
	icon = 'mod_celadon/_storge_icons/icons/mob/plasma_legion.dmi'
	move_to_delay = 1

/obj/projectile/goliath/plasma
	icon = 'mod_celadon/_storge_icons/icons/mob/projectile.dmi'

/obj/effect/temp_visual/goliath_tentacle/crystal/plasma
	icon = 'mod_celadon/_storge_icons/icons/mob/32x64.dmi'

/mob/living/simple_animal/hostile/asteroid/hivelordbrood/legion/crystal/plasma/death(gibbed)
	for(var/i in 0 to 5)
		var/obj/projectile/P = new /obj/projectile/goliath/plasma(get_turf(src))
		P.preparePixelProjectile(get_step(src, pick(GLOB.alldirs)), get_turf(src))
		P.firer = source
		P.fire(i*(360/5))
	return ..()

/obj/projectile/goliath/plasma/on_hit(atom/target, blocked)
	. = ..()
	var/turf/turf_hit = get_turf(target)
	new /obj/effect/temp_visual/goliath_tentacle/crystal/plasma(turf_hit,firer)
