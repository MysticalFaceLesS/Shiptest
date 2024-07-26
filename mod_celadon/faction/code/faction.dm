//	Syndicate
/datum/outfit/job/syndicate/post_equip(mob/living/carbon/human/H, visualsOnly)
 	. = ..()
 	H.faction |= list(FACTION_PLAYER_SYNDICATE,FACTION_ANTAG_SYNDICATE)

//	Elysium
/datum/outfit/job/elysium/assistant
	name = "Elysium - Assistant"
	job_icon = "captain"
	jobtype = /datum/job/captain

	uniform = /obj/item/clothing/under/utility
	shoes = /obj/item/clothing/shoes/sneakers/black
	box = /obj/item/storage/box/survival
	id = /obj/item/card/id/silver

/datum/outfit/job/elysium/proc/get_elysium_access(mob/living/carbon/human/H)
	var/obj/item/storage/wallet/W = null
	for (var/obj/item/O in H.contents)
		if (istype(O, /obj/item/storage/wallet))
			W = O
			break
	if (W)
		var/obj/item/card/id/I = null
		for (var/obj/item/O in W.contents)
			if (istype(O, /obj/item/card/id/silver))
				I = O
				break
		if (I)
			I.access = list(ACCESS_MAINT_TUNNELS)
			I.update_label()
		W.combined_access = list()
		for (var/obj/item/card/id/card in W.contents)
			W.combined_access |= card.access

/datum/outfit/job/elysium/assistant/post_equip(mob/living/carbon/human/H)
	. = ..()
	get_elysium_access(H)

/datum/outfit/job/elysium/post_equip(mob/living/carbon/human/H)
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
