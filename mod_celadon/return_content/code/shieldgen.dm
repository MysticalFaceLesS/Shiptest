/obj/structure/emergency_shield/sanguine
	name = "sanguine barrier"
	desc = "A potent shield summoned by cultists to defend their rites."
	icon_state = "shield-red"
	max_integrity = 60

/obj/structure/emergency_shield/sanguine/emp_act(severity)
	return

/obj/structure/emergency_shield/invoker
	name = "Invoker's Shield"
	desc = "A weak shield summoned by cultists to protect them while they carry out delicate rituals."
	color = "#FF0000"
	max_integrity = 20
	mouse_opacity = MOUSE_OPACITY_TRANSPARENT
	layer = ABOVE_MOB_LAYER

/obj/structure/emergency_shield/invoker/emp_act(severity)
	return
