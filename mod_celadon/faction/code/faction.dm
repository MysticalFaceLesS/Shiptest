//	Syndicate
/datum/outfit/job/syndicate/post_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	H.faction |= list(FACTION_PLAYER_SYNDICATE)

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

/datum/faction/elysium
	name = FACTION_ELYSIUM
	prefixes = list("EUSM", "EUSQ", "EUSF", "EUSR",)

/datum/faction/pirate
	name = FACTION_PIRATES
	prefixes = list("PIRATE")

/datum/faction/nt
	prefixes = list("NTSV", "NTBSV", "NTASV", "NTSSV", "NTTSV", "NTMSV", "NTLSV", "NTDSV", "NTSPSV",)

/datum/faction/inteq
	prefixes = list("IRMV", "IQMSSV", "BIQSV", "LIQSV", "SPIQSV")

/datum/faction/solgov
	prefixes = list("SFSV", "BSFSV", "ASFSV", "SSFSV", "MDSFSV", "LSFSV", "MSFSV", "SPSFSV")

/datum/faction/syndicate
	prefixes = list("SEV", "SSV", "SMMV", "PCAC", "SSASV", "SSSV", "SOSSV", "TSSV", "SABSV", "BSSV", "ASSV", "MSSV", "LSSV", "DSSV")

/datum/outfit/job/nanotrasen/rd
	name = "Nanotrasen - Research Director"
	job_icon = "researchdirector"
	jobtype = /datum/job/rd
	id = /obj/item/card/id/silver
	ears = /obj/item/radio/headset/heads/rd
	uniform = /obj/item/clothing/under/rank/rnd/research_director/turtleneck
	shoes = /obj/item/clothing/shoes/sneakers/brown
	suit = /obj/item/clothing/suit/toggle/labcoat
	alt_suit = /obj/item/clothing/suit/toggle/suspenders
	dcoat = /obj/item/clothing/suit/hooded/wintercoat/science
	l_hand = /obj/item/clipboard
	backpack_contents = list(/obj/item/melee/classic_baton/telescopic=1, /obj/item/modular_computer/tablet/preset/advanced=1)

	backpack = /obj/item/storage/backpack/science
	satchel = /obj/item/storage/backpack/satchel/tox
	courierbag = /obj/item/storage/backpack/messenger/tox

	chameleon_extras = /obj/item/stamp/rd
