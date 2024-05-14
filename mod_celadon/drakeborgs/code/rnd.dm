/obj/item/borg/upgrade/transform/drake
	name = "Test"
	desc = "Test"
	icon = 'mod_celadon/drakeborgs/icons/drake.dmi'
	icon_state = "drake_upg"


/obj/item/borg/upgrade/transform/drake/med
	name = "Test"
	desc = "Test"
	require_module = TRUE
	module_type = list(/obj/item/robot_module/medical)
	new_module = /obj/item/robot_module/drake/medical
