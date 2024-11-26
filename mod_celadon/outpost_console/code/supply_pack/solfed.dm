/datum/supply_pack/faction/solfed/gun // Пушки
	group = "Faction gun"

/datum/supply_pack/faction/solfed/gun/gar
	name = "Solar 'GAR' Carbine"
	desc = "Something on Gauss"
	contains = list(/obj/item/storage/guncase/gauss)
	cost = 9000

/datum/supply_pack/faction/solfed/gun/commanders
	name = "Commander Pistol Crate"
	desc = "Contains a modified Candor 'Commander' pistol, produced by Nanotrasen and chambered in 9mm."
	cost = 750
	contains = list(/obj/item/storage/pistolcase/commander)

/datum/supply_pack/faction/solfed/gun/gauss/prototype
	name = "Prototype gauss rifle"
	desc = "A high capacity experimental rifle developed by Nanotrasen"
	contains = list(/obj/item/storage/guncase/automatic/powered/gauss)
	cost = 6000

/datum/supply_pack/faction/solfed/ammo // патроны
	group = "Faction ammo"


/datum/supply_pack/faction/solfed/ammo/ferrolancebox
	name = "Ferromagnetic lance"
	desc = "A box of standard ferromagnetic lances"
	contains = list(/obj/item/ammo_box/ferrolancebox)
	cost = 700

/datum/supply_pack/faction/solfed/ammo/ferropellets
	name = "A box of ferromagnetic pellets"
	desc = "Contains a fifty-round .45"
	contains = list(/obj/item/ammo_box/ferropelletbox)
	cost = 500

/datum/supply_pack/faction/solfed/clothing // Одежда
	group = "Faction clothing"

/datum/supply_pack/faction/solfed/clothing/hardsuit
	name = "SolFed hardsuit"
	desc = "Made in Solar Federation"
	contains = list(/obj/item/clothing/suit/space/hardsuit/solgov)
	cost = 11000

/datum/supply_pack/faction/solfed/clothing/med_hardsuit
	name = "Medical Hardsuit Crate"
	desc = "One medical hardsuit, resistant to diseases and useful for retrieving patients in space."
	cost = 4000
	contains = list(/obj/item/clothing/suit/space/hardsuit/medical)
	crate_name = "medical hardsuit crate"

