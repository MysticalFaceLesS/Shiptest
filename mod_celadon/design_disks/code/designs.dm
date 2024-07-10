/obj/item/disk/design_disk/cybernetic_organs_basic
	name = "Design Disk - Basic cybernetic organs"
	desc = "A design disk containing the pattern for basic cybernetic organs."
	max_blueprints = 5

/obj/item/disk/design_disk/cybernetic_organs_basic/Initialize()
	. = ..()
	blueprints[1] = new /datum/design/cybernetic_liver()
	blueprints[2] = new /datum/design/cybernetic_heart()
	blueprints[3] = new /datum/design/cybernetic_lungs()
	blueprints[4] = new /datum/design/cybernetic_stomach()
	blueprints[5] = new /datum/design/cybernetic_ears()

/obj/item/disk/design_disk/t2_parts
	name = "Design Disk - Advanced machine parts"
	desc = "A design disk containing the pattern for basic cybernetic organs."
	max_blueprints = 5

/obj/item/disk/design_disk/t2_parts/Initialize()
	. = ..()
	blueprints[1] = new /datum/design/adv_capacitor()
	blueprints[2] = new /datum/design/adv_scanning()
	blueprints[3] = new /datum/design/nano_mani()
	blueprints[4] = new /datum/design/high_micro_laser()
	blueprints[5] = new /datum/design/adv_matter_bin()
