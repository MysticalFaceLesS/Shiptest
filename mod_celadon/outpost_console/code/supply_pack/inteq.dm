/datum/supply_pack/faction/inteq/gun // Пушки
	group = "Faction gun"

/datum/supply_pack/faction/inteq/gun/skm_carbine
	name = "SKM-44v Mongrel"
	desc = "Inteq SMG"
	contains = list(/obj/item/storage/guncase/skm_carabine)
	cost = 3500
	crate_type = /obj/structure/closet/crate/secure/gear

/datum/supply_pack/faction/inteq/gun/bulldog
	name = "Bulldog Shotgun"
	desc = "Automatic Shotgun"
	contains = list(/obj/item/storage/guncase/bulldog/inteq)
	cost = 5000

/datum/supply_pack/faction/inteq/gun/commanders
	name = "Commander Pistol Crate"
	desc = "Contains a modified Candor 'Commander' pistol, produced by InteQ and chambered in 9mm."
	cost = 750
	contains = list(/obj/item/storage/pistolcase/commander/inteq)

/datum/supply_pack/faction/inteq/clothing // Одежда
	group = "Faction clothing"

/datum/supply_pack/faction/inteq/clothing/hardsuit // Слишком сильно?
	name = "InteQ hardsuit"
	desc = "Made by InteQ"
	contains = list(/obj/item/clothing/suit/space/hardsuit/syndi/inteq)
	cost = 12000

/datum/supply_pack/faction/inteq/clothing/spacesuit
	name = "InteQ spacesuit"
	desc = "Made by InteQ"
	contains = list(/obj/item/clothing/suit/space/inteq,
					/obj/item/clothing/head/helmet/space/inteq)
	cost = 1500
