//	Syndicate
/datum/outfit/job/syndicate/post_equip(mob/living/carbon/human/H, visualsOnly)
 	. = ..()
 	H.faction |= list(FACTION_PLAYER_SYNDICATE,FACTION_ANTAG_SYNDICATE)

//	Elysium
/datum/outfit/job/independent/assistant/elysium
	name = "Elysium - Assistant"

	uniform = /obj/item/clothing/under/utility
	shoes = /obj/item/clothing/shoes/sneakers/black
	box = /obj/item/storage/box/survival
	id = /obj/item/card/id/silver

/datum/outfit/job/independent/assistant/elysium/post_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	H.faction |= list(FACTION_PLAYER_ELYSIUM)

//	Nanotrasen
/datum/outfit/job/nanotrasen/post_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	H.faction |= list(FACTION_PLAYER_NANOTRASEN,FACTION_PLAYER_SOLGOV)

//	SolFed
/datum/outfit/job/solgov/post_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	H.faction |= list(FACTION_PLAYER_SOLGOV,FACTION_PLAYER_NANOTRASEN)

//	InteQ
/datum/outfit/job/inteq/post_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	H.faction |= list(FACTION_PLAYER_INTEQ)

