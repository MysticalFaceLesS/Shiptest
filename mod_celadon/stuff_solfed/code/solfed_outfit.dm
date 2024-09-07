//										//
//			SOLAR FEDERATION			//
//										//

/datum/outfit/job/solgov/proc/get_solfed_captain_access(mob/living/carbon/human/H)
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
			I.access = list(ACCESS_SOLGOV, ACCESS_CAPTAIN, ACCESS_ENGINE, ACCESS_MEDICAL, ACCESS_ARMORY, ACCESS_BRIG, ACCESS_SECURITY)
			I.update_label()
		W.combined_access = list()
		for (var/obj/item/card/id/card in W.contents)
			W.combined_access |= card.access

/datum/outfit/job/solgov/proc/get_solfed_overseer_access(mob/living/carbon/human/H)
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
			I.access += list(ACCESS_ENGINE, ACCESS_MEDICAL, ACCESS_ARMORY, ACCESS_BRIG, ACCESS_SECURITY)
			I.update_label()
		W.combined_access = list()
		for (var/obj/item/card/id/card in W.contents)
			W.combined_access |= card.access

/datum/outfit/job/solgov/proc/get_solfed_sonnensoldner_access(mob/living/carbon/human/H)
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
			I.access += list(ACCESS_ENGINE, ACCESS_MEDICAL, ACCESS_BRIG, ACCESS_SECURITY)
			I.update_label()
		W.combined_access = list()
		for (var/obj/item/card/id/card in W.contents)
			W.combined_access |= card.access

/datum/outfit/job/solgov/proc/get_solfed_engineer_access(mob/living/carbon/human/H)
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
			I.access += list(ACCESS_ENGINE, ACCESS_MEDICAL, ACCESS_SECURITY)
			I.update_label()
		W.combined_access = list()
		for (var/obj/item/card/id/card in W.contents)
			W.combined_access |= card.access

// Ученые
/datum/outfit/job/solgov/scientist
	name = "SolGov - Scientific Officer"
	jobtype = /datum/job/scientist
	job_icon = "scientist"

	id = /obj/item/card/id/solgov
	ears = /obj/item/radio/headset/headset_sci
	uniform = /obj/item/clothing/under/solgov/formal
	shoes = /obj/item/clothing/shoes/laceup
	suit = /obj/item/clothing/suit/toggle/labcoat/science
	dcoat = /obj/item/clothing/suit/hooded/wintercoat/science

	backpack = /obj/item/storage/backpack/science
	satchel = /obj/item/storage/backpack/satchel/tox
	courierbag = /obj/item/storage/backpack/messenger/tox

/datum/outfit/job/solgov/scientist/roboticist
	name = "SolGov - Mechanical Technician Officer"
	job_icon = "roboticist"
	jobtype = /datum/job/roboticist

	uniform = /obj/item/clothing/under/rank/rnd/roboticist
	suit = /obj/item/clothing/suit/longcoat/robowhite

	backpack_contents = list(/obj/item/weldingtool/hugetank)

// Пилот меха

/datum/outfit/job/solgov/sonnensoldner/pilot
	name = "SolGov - Exosuit Operator"
	jobtype = /datum/job/officer
	job_icon = "sonnensoldner"

	head = /obj/item/clothing/head/solgov
	glasses = /obj/item/clothing/glasses/sunglasses
	suit = /obj/item/clothing/suit/jacket/leather

//										//
//	SOLAR FEDERATION - LIGHTNING BOLT	//
//										//

/datum/outfit/job/solgov/bolt/captain
	name = "SolFed Bolt - Captain"
	jobtype = /datum/job/captain
	job_icon = "solgovrepresentative"

	uniform = /obj/item/clothing/under/solfed
	shoes = /obj/item/clothing/shoes/combat
	backpack = /obj/item/storage/backpack/ert/engineer
	id = /obj/item/card/id/solgov

/datum/outfit/job/solgov/bolt/captain/post_equip(mob/living/carbon/human/H)
	. = ..()
	get_solfed_captain_access(H)

/datum/outfit/job/solgov/bolt/bureaucrat
	name = "SolFed Bolt - Bureaucrat"
	jobtype = /datum/job/head_of_personnel
	job_icon = "headofpersonnel"

	uniform = /obj/item/clothing/under/solfed
	shoes = /obj/item/clothing/shoes/combat
	backpack = /obj/item/storage/backpack/ert/engineer
	id = /obj/item/card/id/solgov

/datum/outfit/job/solgov/bolt/bureaucrat/post_equip(mob/living/carbon/human/H)
	. = ..()
	get_solfed_overseer_access(H)

/datum/outfit/job/solgov/bolt/security
	name = "SolFed Bolt - Security"
	jobtype = /datum/job/officer
	job_icon = "security"

	uniform = /obj/item/clothing/under/solfed
	shoes = /obj/item/clothing/shoes/combat
	backpack = /obj/item/storage/backpack/ert/engineer
	id = /obj/item/card/id/solgov

/datum/outfit/job/solgov/bolt/security/post_equip(mob/living/carbon/human/H)
	. = ..()
	get_solfed_sonnensoldner_access(H)

/datum/outfit/job/solgov/bolt/medic
	name = "SolFed Bolt - Medic"
	jobtype = /datum/job/paramedic
	job_icon = "medicaldoctor"

	uniform = /obj/item/clothing/under/solfed
	shoes = /obj/item/clothing/shoes/combat
	backpack = /obj/item/storage/backpack/ert/engineer
	id = /obj/item/card/id/solgov

/datum/outfit/job/solgov/bolt/medic/post_equip(mob/living/carbon/human/H)
	. = ..()
	get_solfed_engineer_access(H)

/datum/outfit/job/solgov/bolt/engineer
	name = "SolFed Bolt - Engineer"
	jobtype = /datum/job/engineer
	job_icon = "stationengineer"

	uniform = /obj/item/clothing/under/solfed
	shoes = /obj/item/clothing/shoes/combat
	backpack = /obj/item/storage/backpack/ert/engineer
	id = /obj/item/card/id/solgov

/datum/outfit/job/solgov/bolt/engineer/post_equip(mob/living/carbon/human/H)
	. = ..()
	get_solfed_engineer_access(H)

//							///
//		Elysium on solgov	///
//							///

//	Капитан	//
/datum/outfit/job/solgov/captain/elysium_celadon
	name = "SolGov - Elysium Musharif"

	head = /obj/item/clothing/head/solfed/elysium/beret
	uniform = /obj/item/clothing/under/solgov/elysium
	suit = /obj/item/clothing/suit/armor/solfed/elysium/jacket
	shoes = /obj/item/clothing/shoes/combat
	ears = /obj/item/radio/headset/solgov/alt/captain
	id = /obj/item/card/id/solgov
	backpack = /obj/item/storage/backpack/messenger/com
	gloves = null

/datum/outfit/job/solgov/captain/elysium_celadon/post_equip(mob/living/carbon/human/H)
	. = ..()
	get_solfed_captain_access(H)

//	Хос	//
/datum/outfit/job/solgov/overseer/elysium_celadon
	name = "SolGov - Elysium Mulazim"

	head = /obj/item/clothing/head/solfed/elysium/beret
	uniform = /obj/item/clothing/under/solgov/elysium
	suit = /obj/item/clothing/suit/armor/solfed/elysium/jacket
	shoes = /obj/item/clothing/shoes/combat
	ears = /obj/item/radio/headset/solgov/alt
	id = /obj/item/card/id/solgov
	neck = null

/datum/outfit/job/solgov/overseer/elysium_celadon/post_equip(mob/living/carbon/human/H)
	. = ..()
	get_solfed_overseer_access(H)

//	Офицер	//
/datum/outfit/job/solgov/sonnensoldner/elysium_celadon
	name = "SolGov - Elysium Haris"

	id = /obj/item/card/id/solgov/elysium
	head = null
	suit = null
	gloves = null
	shoes = /obj/item/clothing/shoes/combat
	uniform = /obj/item/clothing/under/solfed/elysium

/datum/outfit/job/solgov/sonnensoldner/elysium_celadon/post_equip(mob/living/carbon/human/H)
	. = ..()
	get_solfed_sonnensoldner_access(H)

//	медик	//
/datum/outfit/job/solgov/doctor/elysium_celadon
	name = "SolGov - Elysium Shafi"

	id = /obj/item/card/id/solgov/elysium
	head = null
	suit = null
	gloves = null
	shoes = /obj/item/clothing/shoes/combat
	uniform = /obj/item/clothing/under/solfed/elysium

/datum/outfit/job/solgov/doctor/elysium_celadon/post_equip(mob/living/carbon/human/H)
	. = ..()
	get_solfed_engineer_access(H)

//	Инженер	//
/datum/outfit/job/solgov/engineer/elysium_celadon
	name = "SolGov - Elysium Khabeer Fanni"

	id = /obj/item/card/id/solgov/elysium
	head = null
	suit = null
	gloves = null
	shoes = /obj/item/clothing/shoes/combat
	uniform = /obj/item/clothing/under/solfed/elysium

/datum/outfit/job/solgov/engineer/elysium_celadon/post_equip(mob/living/carbon/human/H)
	. = ..()
	get_solfed_engineer_access(H)
