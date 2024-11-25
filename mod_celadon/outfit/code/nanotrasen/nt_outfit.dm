// Доступы для Нанотрахенов

/datum/outfit/job/nanotrasen/proc/get_nt_general_access(mob/living/carbon/human/H)
	var/obj/item/storage/wallet/W = null
	for (var/obj/item/O in H.contents)
		if (istype(O, /obj/item/storage/wallet))
			W = O
			break
	if (W)
		var/obj/item/card/id/I = null
		for (var/obj/item/O in W.contents)
			if (istype(O, /obj/item/card/id))
				I = O
				break
		if (I)
			I.access += list(ACCESS_OUTPOST_FACTION_SOLFED, ACCESS_OUTPOST_FACTION_NT)
			I.update_label()
		W.combined_access = list()
		for (var/obj/item/card/id/card in W.contents)
			W.combined_access |= card.access

/datum/outfit/job/nanotrasen/post_equip(mob/living/carbon/human/H)
	. = ..()
	get_nt_general_access(H)

// Директор исследований

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

//лп уборщик

/datum/outfit/job/nanotrasen/janitor/lp
	name = "Nanotrasen - LP Janitorial Specialist"
	jobtype = /datum/job/janitor
	job_icon = "janitor"

	uniform = /obj/item/clothing/under/nanotrasen/janitor
	shoes = /obj/item/clothing/shoes/sneakers/black
	suit = /obj/item/clothing/suit/nanotrasen/suitjacket
	head = /obj/item/clothing/head/nanotrasen/cap/janitor
	id = /obj/item/card/id/lpjanitor
	ears = /obj/item/radio/headset/nanotrasen
	belt = /obj/item/storage/belt/janitor
	gloves = /obj/item/clothing/gloves/color/purple
	back = /obj/item/storage/backpack/ert/janitor
