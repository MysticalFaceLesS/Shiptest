/datum/supply_pack/faction/syndicate/gun // Пушки
	group = "Faction gun"

/datum/supply_pack/faction/syndicate/gun/ringneck
	name = "PC-76"
	desc = "Automatic pistol"
	contains = list(/obj/item/storage/pistolcase/ringneck)
	cost = 700

// /datum/supply_pack/faction/syndicate/gun/deagle // У нас нет коробок для этой пушки, поэтому пока что так
// 	name = "Deagle"
// 	desc = "A true hand cannon"
// 	contains = list(/obj/item/storage/pistolcase/deagle)
// 	cost = 2000

/datum/supply_pack/faction/syndicate/gun/bulldog
	name = "Bulldog Shotgun"
	desc = "Automatic Shotgun"
	contains = list(/obj/item/storage/guncase/bulldog)
	cost = 7000

/datum/supply_pack/faction/syndicate/gun/hydra
	name = "SMR-80 \"Hydra\""
	desc = "Scarborough Arms' premier modular assault rifle platform."
	contains = list(/obj/item/storage/guncase/hydra)
	cost = 6400

/datum/supply_pack/faction/syndicate/gun/cobra
	name = "CR-20 \"Cobra\""
	desc = "A bullpup submachine gun. Chambered in .45"
	contains = list(/obj/item/storage/guncase/syndicate/cobra)
	cost = 5500

/datum/supply_pack/faction/syndicate/ammo // патроны
	group = "Faction ammo"

/datum/supply_pack/faction/syndicate/ammo/smgm45ammo
	name = ".45 Cobra Ammo Crate"
	desc = "Contains a .45 magazine for the Cobra-20, containing 24 rounds."
	cost = 750
	contains = list(/obj/item/ammo_box/magazine/m45_cobra)

/datum/supply_pack/faction/syndicate/ammo/c45_ammo_box
	name = ".45 Ammo Box Crate"
	desc = "Contains a fifty-round .45"
	contains = list(/obj/item/ammo_box/c45)
	cost = 500

/datum/supply_pack/faction/syndicate/clothing // Одежда
	group = "Faction clothing"

/datum/supply_pack/faction/syndicate/clothing/hardsuit // Слишком сильно?
	name = "Syndicate hardsuit"
	desc = "Made by SYNDICATE"
	contains = list(/obj/item/clothing/suit/space/hardsuit/syndi)
	cost = 12000
