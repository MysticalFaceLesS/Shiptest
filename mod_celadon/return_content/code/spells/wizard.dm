/obj/effect/proc_holder/spell/targeted/turf_teleport/blink/cult
	name = "quickstep"

	charge_max = 100
	clothes_req = TRUE

/obj/effect/proc_holder/spell/aoe_turf/conjure/construct
	name = "Artificer"
	desc = "This spell conjures a construct which may be controlled by Shades."
	school = "conjuration"
	charge_max = 600
	clothes_req = FALSE
	invocation = "none"
	invocation_type = "none"
	range = 0
	summon_type = list(/obj/structure/constructshell)
	action_icon = 'icons/mob/actions/actions_cult.dmi'
	action_icon_state = "artificer"
	cast_sound = 'sound/magic/summonitems_generic.ogg'
	
/obj/effect/proc_holder/spell/aoe_turf/conjure/creature/cult
	name = "Summon Creatures (DANGEROUS)"
	clothes_req = TRUE
	charge_max = 5000
	summon_amt = 2