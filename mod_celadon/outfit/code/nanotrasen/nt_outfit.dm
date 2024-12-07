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

// Научный директор - РД

/datum/outfit/job/nanotrasen/rd
	name = "Nanotrasen - Science Director"
	job_icon = "researchdirector"
	jobtype = /datum/job/rd
	id = /obj/item/card/id/silver
	ears = /obj/item/radio/headset/heads/rd
	uniform = /obj/item/clothing/under/nanotrasen/science/director
	shoes = /obj/item/clothing/shoes/sneakers/brown
	suit = /obj/item/clothing/suit/toggle/labcoat/nanotrasen/black
	alt_suit = /obj/item/clothing/suit/toggle/suspenders
	dcoat = /obj/item/clothing/suit/hooded/wintercoat/science
	l_hand = /obj/item/clipboard
	backpack_contents = list(/obj/item/melee/classic_baton/telescopic=1, /obj/item/modular_computer/tablet/preset/advanced=1)

	backpack = /obj/item/storage/backpack/science
	satchel = /obj/item/storage/backpack/satchel/tox
	courierbag = /obj/item/storage/backpack/messenger/tox

	chameleon_extras = /obj/item/stamp/rd

// Медицинский директор - СМО

/datum/outfit/job/nanotrasen/cmo
	name = "Nanotrasen - Medical Director"
	job_icon = "chiefmedicalofficer"
	jobtype = /datum/job/cmo
	id = /obj/item/card/id/silver
	ears = /obj/item/radio/headset/heads/cmo
	head = /obj/item/clothing/head/beret/cmo
	uniform = /obj/item/clothing/under/nanotrasen/medical/director
	shoes = /obj/item/clothing/shoes/laceup
	suit = /obj/item/clothing/suit/toggle/labcoat/nanotrasen/blue
	alt_suit = /obj/item/clothing/suit/toggle/suspenders
	dcoat = /obj/item/clothing/suit/hooded/wintercoat/medical
	backpack_contents = list(/obj/item/melee/classic_baton/telescopic=1, /obj/item/modular_computer/tablet/preset/advanced=1)

	backpack = /obj/item/storage/backpack/medic
	satchel = /obj/item/storage/backpack/satchel/med
	courierbag = /obj/item/storage/backpack/messenger/med

	chameleon_extras = /obj/item/stamp/cmo

// Химик

/datum/outfit/job/nanotrasen/chemist
	name = "Nanotrasen - Chemist"
	job_icon = "chemist"
	jobtype = /datum/job/chemist

	belt = /obj/item/pda/chemist
	ears = /obj/item/radio/headset/headset_med
	head = /obj/item/clothing/head/beret/chem
	uniform = /obj/item/clothing/under/rank/medical/chemist
	shoes = /obj/item/clothing/shoes/sneakers/white
	suit =  /obj/item/clothing/suit/toggle/labcoat/nanotrasen
	dcoat = /obj/item/clothing/suit/hooded/wintercoat/medical

	backpack = /obj/item/storage/backpack/chemistry
	satchel = /obj/item/storage/backpack/satchel/chem
	duffelbag = /obj/item/storage/backpack/duffelbag/med
	courierbag = /obj/item/storage/backpack/messenger/chem
	box = /obj/item/storage/box/survival/medical

// Генетик

/datum/outfit/job/nanotrasen/geneticist
	name = "Nanotrasen - Genetical Researcher"
	job_icon = "geneticist"
	jobtype = /datum/job/geneticist

	belt = /obj/item/pda/geneticist
	ears = /obj/item/radio/headset/headset_medsci
	head = /obj/item/clothing/head/beret/sci
	uniform = /obj/item/clothing/under/rank/medical/geneticist
	shoes = /obj/item/clothing/shoes/sneakers/white
	suit =  /obj/item/clothing/suit/toggle/labcoat/nanotrasen
	dcoat = /obj/item/clothing/suit/hooded/wintercoat/science

	backpack = /obj/item/storage/backpack/genetics
	satchel = /obj/item/storage/backpack/satchel/tox
	duffelbag = /obj/item/storage/backpack/duffelbag/med
	courierbag = /obj/item/storage/backpack/messenger/tox
	box = /obj/item/storage/box/survival/medical

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

//ЕРТ коммандер

/datum/outfit/job/nanotrasen/security/ert/commander
	name = "Nanotrasen - ERT Сommander"

	uniform = /obj/item/clothing/under/rank/security/officer/blueshirt
	shoes = /obj/item/clothing/shoes/combat
	suit = /obj/item/clothing/suit/armor/vest/marine
	head = /obj/item/clothing/head/nanotrasen/beret
	backpack = /obj/item/storage/backpack/ert
	belt = /obj/item/storage/belt/military/assault
	id = /obj/item/card/id/ert
	ears = /obj/item/radio/headset/nanotrasen/alt
	r_pocket = /obj/item/melee/knife/survival
	backpack_contents = list(/obj/item/radio, /obj/item/flashlight/seclite, /obj/item/gun_voucher/nanotrasen)
	glasses = /obj/item/clothing/glasses/sunglasses
