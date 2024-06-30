/obj/machinery/limbgrower/Initialize(mapload)
	categories += SPECIES_VULP
	return ..()

/datum/design/vulp_tail
	name = "Tajara Tail"
	id = "long"
	build_type = LIMBGROWER
	reagents_list = list(/datum/reagent/medicine/synthflesh = 20)
	build_path = /obj/item/organ/tail/vulp/fake
	category = list("initial",SPECIES_VULP)

/datum/design/vulp_tongue
	name = "Forked Tongue"
	id = "vulptongue"
	build_type = LIMBGROWER
	reagents_list = list(/datum/reagent/medicine/synthflesh = 10)
	build_path = /obj/item/organ/tongue/vulp
	category = list("initial",SPECIES_VULP)
