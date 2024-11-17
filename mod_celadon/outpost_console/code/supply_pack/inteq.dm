/datum/supply_pack/faction/inteq/gun // Пушки
	group = "Faction gun"

/datum/supply_pack/faction/inteq/gun/skm_carbine
	name = "SKM-44v Mongrel"
	desc = "Inteq SMG"
	contains = list(/obj/item/storage/guncase/skm_carabine)
	cost = 1200
	crate_type = /obj/structure/closet/crate/secure/gear

/datum/supply_pack/faction/inteq/gun/bulldog
	name = "Bulldog Shotgun"
	desc = "Automatic Shotgun"
	contains = list(/obj/item/storage/guncase/bulldog/inteq)
	cost = 3000

/datum/supply_pack/faction/inteq/gun/commanders
	name = "Commander Pistol Crate"
	desc = "Contains a modified Candor 'Commander' pistol, produced by InteQ and chambered in 9mm."
	cost = 750
	contains = list(/obj/item/storage/pistolcase/commander/inteq)

/datum/supply_pack/faction/inteq/clothing // Одежда
	group = "Faction clothing"

/datum/supply_pack/faction/inteq/clothing/hardsuit
	name = "InteQ hardsuit"
	desc = "Made by InteQ"
	contains = list(/obj/item/clothing/suit/space/hardsuit/syndi)
	cost = 2000

/datum/supply_pack/faction/inteq/clothing/spacesuit
	name = "InteQ spacesuit"
	desc = "Made by InteQ"
	contains = list(/obj/item/clothing/suit/space/inteq,
					/obj/item/clothing/suit/space/hardsuit/security/independent/inteq)
	cost = 2000
