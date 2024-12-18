/datum/supply_pack/faction/nanotrasen/ammo //Патроны

	group = "Faction ammo"

/datum/supply_pack/faction/nanotrasen/ammo/commander_ammo_box
	hidden = FALSE
	name = "9mm ammo box"
	desc = "9mm ammo box for guns like commander. Contains 50 shells"
	contains = list(/obj/item/ammo_box/c9mm)
	cost = 250
	faction = "nanotrasen"

/datum/supply_pack/faction/nanotrasen/ammo/wt_ammo_box
	hidden = FALSE
	name = "4.6x30mm ammo box"
	desc = "4.6x30mm ammo box for guns like WT550. Contains 50 shells"
	contains = list(/obj/item/ammo_box/c46x30mm_box)
	cost = 500
	faction = "nanotrasen"

/datum/supply_pack/faction/nanotrasen/ammo/wt_magazine
	hidden = FALSE
	name = "Single WT550 magazine"
	desc = "A single magazine for the WT550"
	contains = list(/obj/item/ammo_box/magazine/wt550m9)
	cost = 700
	faction = "nanotrasen"

/datum/supply_pack/faction/nanotrasen/ammo/commander_magazine
	hidden = FALSE
	name = "Single commander magazine"
	desc = "A single magazine for the commander"
	contains = list(/obj/item/ammo_box/magazine/co9mm)
	cost = 600
	faction = "nanotrasen"
