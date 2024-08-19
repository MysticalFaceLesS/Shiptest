//	Syndicate
/datum/outfit/job/syndicate/post_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	H.faction |= list(FACTION_PLAYER_SYNDICATE,FACTION_ANTAG_SYNDICATE)

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
