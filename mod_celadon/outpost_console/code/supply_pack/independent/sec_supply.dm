/datum/supply_pack/faction/independent/sec_supply
	group = "Security Supplies"
	crate_type = /obj/structure/closet/crate/secure/gear

/datum/supply_pack/faction/independent/sec_supply/machete
	name = "Stampted Steel Machete Crate"
	desc = "Contains five mass produced machetes. A perfect choice for crews on a budget."
	cost = 500
	contains = list(/obj/item/melee/sword/mass,
					/obj/item/melee/sword/mass,
					/obj/item/melee/sword/mass,
					/obj/item/melee/sword/mass,
					/obj/item/melee/sword/mass)
	crate_name = "combat knife crate"

/*
/datum/supply_pack/sec_supply/fire
	name = "Incendiary Weapons Crate"
	desc = "Burn, baby burn. Contains three incendiary grenades and three prebuilt flamethrowers."
	cost = 5000
	contains = list(
		/obj/item/flamethrower/full,
		/obj/item/flamethrower/full,
		/obj/item/flamethrower/full,
		/obj/item/grenade/chem_grenade/incendiary,
		/obj/item/grenade/chem_grenade/incendiary,
		/obj/item/grenade/chem_grenade/incendiary,
	)
	crate_name = "incendiary weapons crate"
	crate_type = /obj/structure/closet/crate/secure/plasma
	faction = FACTION_NGR
*/
