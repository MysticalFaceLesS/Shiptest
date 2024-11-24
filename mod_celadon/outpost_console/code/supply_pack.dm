/datum/supply_pack/faction
	name = "Crate"
	group = "Faction products"
	faction = ""
	hidden = TRUE

// Делаем красиво? Наверное? По крайней мере экономим буквы, чтобы не писать в каждом датуме эти вещи!

/datum/supply_pack/faction/syndicate
	hidden = FALSE
	faction = "syndicate"
	crate_type = /obj/structure/closet/crate/secure/gear/syndicate

/datum/supply_pack/faction/solfed
	hidden = FALSE
	faction = "solfed"
	crate_type = /obj/structure/closet/crate/secure/gear/solFed

/datum/supply_pack/faction/inteq
	hidden = FALSE
	faction = "inteq"
	crate_type = /obj/structure/closet/crate/secure/gear/inteq

// Создаём ещё одну степень защиты от нежелательного доступа в карго

/obj/structure/closet/crate/secure/gear/syndicate
	req_access = list(ACCESS_OUTPOST_FACTION_SYNDICATE)

/obj/structure/closet/crate/secure/gear/solFed
	req_access = list(ACCESS_OUTPOST_FACTION_SOLFED)

/obj/structure/closet/crate/secure/gear/inteq
	req_access = list(ACCESS_OUTPOST_FACTION_INTEQ)
