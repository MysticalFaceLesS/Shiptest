/mob/living/simple_animal/iriska
	name = "Iriska"
	desc = "The captain's own cat. Fat and lazy."
	icon = 'mod_celadon/_storge_icons/icons/mobs/iriska.dmi'
	desc = "Its said that the cat has bluespace powers, cursing anyone whom it has been angered by upon death."
	icon_state = "iriska"
	icon_dead = "iriska_dead"
	health = 80
	maxHealth = 80
	wander = FALSE
//	canmove = FALSE
	turns_per_move = 0
	speak_emote = list("purrs.", "meows.")
	emote_see = list("shakes her head.", "shivers.")
	speak_chance = 0.75
//	meat_amount = 6
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab = 6)
//	meat_type = /obj/item/reagent_containers/food/snacks/meat
	response_help_simple = "pets"
	response_disarm_simple = "rubs"
	response_harm_simple = "makes terrible mistake by kicking"
	atmos_requirements = list("min_oxy" = 16, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	minbodytemp = 223
	maxbodytemp = 323
	mob_size = MOB_SIZE_HUGE
	harm_intent_damage = 20
	melee_damage_lower = 10
	melee_damage_upper = 30
	attack_verb_simple = "slashed"
	attack_sound = 'sound/weapons/bladeslice.ogg'
	density = TRUE
	// bite_factor = 0.8
	// stomach_size_mult = 10

	// autoseek_food = FALSE // Original code for seeking food doesn't fit, Iriska will use slightly modified version
	// beg_for_food = FALSE
	// max_scan_interval = 10
	// eat_from_hand = FALSE

var/atom/snack = null

var/list/tolerated = list()
var/list/despised = list()

var/min_scan_interval = 1//Minimum and maximum number of procs between a foodscan. Animals will slow down if there's no food around for a while
var/max_scan_interval = 10
var/scan_interval = 5//current scan interval, clamped between min and max
//It gradually increases up to max when its left alone, to save performance
//It will drop back to 1 if it spies any food.
//This short time makes animals more responsive to interactions and more fun to play with

var/seek_speed = 2//How many tiles per second the animal will move towards food
var/seek_move_delay
var/scan_range = 6//How far around the animal will look for food
var/foodtarget = 0
var/turns_since_scan = 0
var/eat_from_hand = TRUE
//Used to control how often ian scans for nearby food
var/hunger_enabled = 1//If set to 0, a creature ignores hunger
var/max_nutrition = 50
var/nutrition = 400 // carbon
// /mob/living/simple_animal/iriska/fall_asleep()
// 	return

// /mob/living/simple_animal/iriska/wake_up()
// 	return

/mob/living/simple_animal/iriska/proc/can_eat()
	if (!hunger_enabled || nutrition > max_nutrition * 0.9)
		return 0//full

	else if (nutrition > max_nutrition * 0.8)
		return 1//content

	else return 2//hungry

/mob/living/simple_animal/iriska/Life()
	.=..()

	if(check_should_sleep())

		seek_food()
		react_to_mob()

/mob/living/simple_animal/iriska/proc/seek_food()
	turns_since_scan++
	if(turns_since_scan >= scan_interval)
		turns_since_scan = 0
		if(snack && (!(isturf(snack.loc) || (foodtarget && !can_eat()) )))
			snack = null
			foodtarget = 0
		if(!snack || !(snack.loc in oview(src, 1)))
			snack = null
			foodtarget = 0
			if (can_eat())
				for(var/obj/item/reagent_containers/food/snacks/S in oview(src,1))
					if(!istype(S, /obj/item/reagent_containers/food/snacks/grown))
						if(isturf(S.loc))
							snack = S
							foodtarget = 1
							break

		if(snack)
			scan_interval = min_scan_interval

			// if (snack.loc.x < src.x)
			// 	set_dir(WEST)
			// else if (snack.loc.x > src.x)
			// 	set_dir(EAST)
			// else if (snack.loc.y < src.y)
			// 	set_dir(SOUTH)
			// else if (snack.loc.y > src.y)
			// 	set_dir(NORTH)
			// else
			// 	set_dir(SOUTH)

			if(isturf(snack.loc) && Adjacent(get_turf(snack), src))
				var/mob/mob = get_mob_by_key(snack.fingerprintslast)
				UnarmedAttack(snack)
				if(!(mob in despised))
					tolerate(mob)
	else
		scan_interval = max(min_scan_interval, min(scan_interval+1, max_scan_interval))

/mob/living/simple_animal/iriska/proc/react_to_mob()
	for(var/mob/living/M in oview(src, 1))
		if (M.stat != DEAD)

			if(iscorgi(M))
				if(prob(5)) to_chat("pointedly ignores [M].")

			else if(iscat(M))
				var/verb = pick("meows", "mews", "mrowls")
				if(prob(5)) to_chat("[verb] at [M].")

			else if(ishuman(M))
				if(M.real_name in tolerated)
					if(prob(2)) say("Meoow!")

				else if ((M.job == "Captain") && !(M.real_name in despised)) // Recognize captain
					tolerated |= M.real_name
					to_chat("looks at [M] with a hint of respect.")

				else
					assert_dominance(M)

			else
				assert_dominance(M)
	return

/mob/living/simple_animal/iriska/proc/assert_dominance(var/mob/target_mob)
	if(prob(15)) say("HSSSSS")
	if(!Adjacent(target_mob))
		return
	if(isliving(target_mob))
		CanAttack(target_mob)
		return target_mob
	// if(istype(target_mob, /obj/machinery/bot))
	// 	var/obj/machinery/bot/B = target_mob
	// 	B.CanAttack(src,rand(melee_damage_lower,melee_damage_upper),attacktext)
	// 	return B

/mob/living/simple_animal/iriska/proc/despise(mob/living/carbon/human/M as mob)
	if(istype(M))
		despised |= M.real_name
		if(M.real_name in tolerated)
			tolerated -= M.real_name

/mob/living/simple_animal/iriska/proc/tolerate(mob/living/carbon/human/M as mob)
	if(istype(M))
		if(!(M.real_name in tolerated) && prob(30))
			to_chat("looks at [M] approvingly.")
			tolerated += M.real_name

/mob/living/simple_animal/iriska/attackby(var/obj/item/O, var/mob/user)
	. = ..()
	if(O.force)
		despise(user)

/mob/living/simple_animal/iriska/attack_hand(mob/living/carbon/human/M as mob)
	. = ..()
	if(M.a_intent == INTENT_DISARM)
		despise(M)
	if((M.a_intent == INTENT_HELP) && (M in tolerated))
		if(prob(15)) say("PRRRR")

// /mob/living/simple_animal/iriska/bullet_act(var/obj/item/projectile/proj)
// 	. = ..()
// 	despise(proj.firer)

// /mob/living/simple_animal/iriska/hitby(atom/movable/AM)
// 	. = ..()
// 	despise(AM.thrower)

/mob/living/simple_animal/iriska/death(gibbed, deathmessage = "dies!")
//	destroy_lifes()
	.=..()

	snack = null
	return ..(gibbed,deathmessage)

// /mob/living/simple_animal/iriska/proc/destroy_lifes()
// 	for(var/mob/living/carbon/human/H in GLOB.human_mob_list)
// 		if(H.real_name in despised)
// 			H.sanity.insight = 0
// 			H.sanity.environment_cap_coeff = 0
// 			H.sanity.negative_prob += 30
// 			H.sanity.positive_prob = 0
// 			H.sanity.level = 0
// 			H.max_style = MIN_HUMAN_STYLE
// 			for(var/stat in ALL_STATS)
// 				H.stats.changeStat(stat, -10)
// 			to_chat(H, SPAN_DANGER("The shadows seem to lengthen, the walls are closing in. The ship itself wants you dead."))
