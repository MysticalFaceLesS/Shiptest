/datum/supply_pack/faction/independent/mech
	group = "Exosuit Construction"
	crate_type = /obj/structure/closet/crate/large


/datum/supply_pack/faction/independent/mech/equipment
	name = "Exosuit equipment crate"
	crate_type = /obj/structure/closet/crate/secure/gear
	crate_name = "exosuit equipment"

/datum/supply_pack/faction/independent/mech/equipment/conversions
	name = "Mecha Conversion kits"
	desc = "Mecha conversion kits desing disk."
	cost = 500
	contains = list(
		/obj/item/disk/design_disk/pub_mechs
	)
