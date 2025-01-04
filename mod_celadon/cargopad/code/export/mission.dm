/datum/mission/acquire/extraction/New(...)
	. = ..()
	desc = "[pick("Factions","Corporations","Federations")] require large amounts of plasma sheets \
	for [pick("base","station","ships")]. You are tasked with extracting them in large quantities in a short period of time."

/datum/mission/acquire/extraction/plasma
	name = "Plasma required"
	duration = 60 MINUTES
	value = 12500
	weight = 3
	container_type = /obj/structure/closet/crate/extraction/plasma
	objective_type = /obj/item/stack/sheet/mineral/plasma
	num_wanted = 250

/obj/structure/closet/crate/extraction/plasma
	name = "crate for plasma"
	desc = "A plasma crate."
	icon_state = "scicrate"
