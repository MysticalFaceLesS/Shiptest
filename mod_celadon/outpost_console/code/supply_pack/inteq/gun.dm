/datum/supply_pack/faction/inteq/gun // Пушки
	group = "Faction gun"

/datum/supply_pack/faction/inteq/gun/skm_carbine
	name = "SKM-44v Mongrel"
	desc = "Inteq SMG"
	contains = list(/obj/item/storage/guncase/skm_carabine)
	cost = 5000
	crate_type = /obj/structure/closet/crate/secure/gear

/datum/supply_pack/faction/inteq/gun/bulldog
	name = "Bulldog Shotgun"
	desc = "Automatic Shotgun"
	contains = list(/obj/item/storage/guncase/bulldog/inteq)
	cost = 8000

/datum/supply_pack/faction/inteq/gun/commanders
	name = "Commander Pistol Crate"
	desc = "Contains a modified Candor 'Commander' pistol, produced by InteQ and chambered in 9mm."
	cost = 750
	contains = list(/obj/item/storage/pistolcase/commander/inteq)

/datum/supply_pack/faction/inteq/gun/ssg04/inteq
	name = "SSG-04"
	desc = "Modified InteQ SSG-04. It have a scope, uses a 308 caliber "
	contains = list(/obj/item/storage/guncase/f4_308/inteq)
	cost = 9000
	crate_type = /obj/structure/closet/crate/secure/gear
