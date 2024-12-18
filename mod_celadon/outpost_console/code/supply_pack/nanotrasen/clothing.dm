/datum/supply_pack/faction/nanotrasen/clothing //Одежда

	group = "Faction clothing"

/datum/supply_pack/faction/nanotrasen/clothing/hardsuitswat
	hidden = FALSE
	name = "Nanotrasen MK2 SWAT hardsuit"
	desc = "Advanced MK2 SWAT hardsuit used by elite corporate assets. While it is bulky, slow and is missing a built in flashlight, it provides excellent protection against almost any weapon and is great for work in hazardous environments"
	contains = list(/obj/item/clothing/suit/space/hardsuit/swat/captain)
	cost = 11500
	faction = "nanotrasen"

/datum/supply_pack/faction/nanotrasen/clothing/hardsuitsec
	hidden = FALSE
	name = "Nanotrasen Security Hardsuit"
	desc = "A cheap spare security hardsuit used on NT's stations by the sec department. Provides weak protection against most damage types. Using it for combat in the frontier region of space is not recommended"
	contains = list(/obj/item/clothing/suit/space/hardsuit/security)
	cost = 3500
	faction = "nanotrasen"

/datum/supply_pack/faction/nanotrasen/clothing/armorsec
	hidden = FALSE
	name = "Nanotrasen Security Vests Kit"
	desc = "Some security armor vests to protect you. Produced by Nanotrasen"
	contains = list(/obj/item/clothing/suit/armor/nanotrasen,
					/obj/item/clothing/suit/armor/nanotrasen,
					/obj/item/clothing/suit/armor/nanotrasen)
	cost = 4000
	faction = "nanotrasen"
