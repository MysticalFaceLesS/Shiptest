/obj/item/tank/jetpack/suit
	name = "hardsuit jetpack upgrade"
	desc = "A modular, compact set of thrusters designed to integrate with a hardsuit. It is fueled by a tank inserted into the suit's storage compartment."
	icon = 'mod_celadon/fixes/icons/obj/items.dmi' //Changed item icon
	icon_state = "jetpack_upgrade"
	item_state = "jetpack-black"
	w_class = WEIGHT_CLASS_NORMAL
	actions_types = list(/datum/action/item_action/toggle_jetpack, /datum/action/item_action/jetpack_stabilization)
	volume = 1
	slot_flags = null
	gas_type = null
	full_speed = FALSE
	custom_price = 2000
//	var/datum/gas_mixture/temp_air_contents
//	var/obj/item/tank/internals/tank = null
//	var/mob/living/carbon/human/cur_user

/obj/item/tank/jetpack/suit
	name = "hardsuit jetpack upgrade"
	desc = "A modular, compact set of thrusters designed to integrate with a hardsuit. It is fueled by a tank inserted into the suit's storage compartment."
	icon = 'mod_celadon/fixes/icons/obj/items.dmi' // Changed item icon
	icon_state = "jetpack_upgrade"
	item_state = "jetpack-black"
	w_class = WEIGHT_CLASS_NORMAL
	actions_types = list(/datum/action/item_action/toggle_jetpack, /datum/action/item_action/jetpack_stabilization)
	volume = 1
	slot_flags = null
	gas_type = null
	full_speed = FALSE
	custom_price = 2000
//	var/datum/gas_mixture/temp_air_contents
//	var/obj/item/tank/internals/tank = null
//	var/mob/living/carbon/human/cur_user

/obj/item/tank/jetpack/suit/turn_off(mob/user)
	icon = 'mod_celadon/fixes/icons/obj/tank.dmi' // Changed item icon
	icon_state = "jetpack_upgrade"
	tank = null
	air_contents = temp_air_contents
	STOP_PROCESSING(SSobj, src)
	cur_user = null
	..()
