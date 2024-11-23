/datum/supply_pack/faction/solfed/gun // Пушки
	group = "Faction gun"

/datum/supply_pack/faction/solfed/gun/gar
	name = "Solar 'GAR' Carbine"
	desc = "Something on Gauss"
	contains = list(/obj/item/storage/guncase/gauss)
	cost = 8000

/datum/supply_pack/faction/solfed/gun/commanders
	name = "Commander Pistol Crate"
	desc = "Contains a modified Candor 'Commander' pistol, produced by Nanotrasen and chambered in 9mm."
	cost = 750
	contains = list(/obj/item/storage/pistolcase/commander)

/datum/supply_pack/faction/solfed/clothing // Одежда
	group = "Faction clothing"

/datum/supply_pack/faction/solfed/clothing/hardsuit
	name = "SolFed hardsuit"
	desc = "Made in Solar Federation"
	contains = list(/obj/item/clothing/suit/space/hardsuit/solgov)
	cost = 12000

/datum/supply_pack/faction/solfed/clothing/med_hardsuit
	name = "Medical Hardsuit Crate"
	desc = "One medical hardsuit, resistant to diseases and useful for retrieving patients in space."
	cost = 6000
	contains = list(/obj/item/clothing/suit/space/hardsuit/medical)
	crate_name = "medical hardsuit crate"
