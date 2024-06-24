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
    var/obj/item/card/id/I = H.wear_id
    I.registered_name = H.real_name
    I.assignment = "Musharif"
    I.access = list(ACCESS_SOLGOV, ACCESS_CAPTAIN, ACCESS_ENGINE, ACCESS_MEDICAL, ACCESS_ARMORY, ACCESS_BRIG, ACCESS_SECURITY)

    for (var/datum/bank_account/bank_account in SSeconomy.bank_accounts)
        if (bank_account.account_id == H.account_id)
            bank_account.bank_cards += src
            // bank_card.registered_account = bank_account
            to_chat(H, "<span class='notice'>Your account number has been automatically assigned.</span>")
            break

    I.update_label()

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
    var/obj/item/card/id/I = H.wear_id
    I.registered_name = H.real_name
    I.assignment = "Mulazim"
    I.access = list(ACCESS_ENGINE, ACCESS_MEDICAL, ACCESS_ARMORY, ACCESS_BRIG, ACCESS_SECURITY)

    for (var/datum/bank_account/bank_account in SSeconomy.bank_accounts)
        if (bank_account.account_id == H.account_id)
            bank_account.bank_cards += src
            // bank_card.registered_account = bank_account
            to_chat(H, "<span class='notice'>Your account number has been automatically assigned.</span>")
            break

    I.update_label()

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
    var/obj/item/card/id/I = H.wear_id
    I.registered_name = H.real_name
    I.assignment = "Haris"
    I.access = list(ACCESS_ENGINE, ACCESS_MEDICAL, ACCESS_BRIG, ACCESS_SECURITY)

    for (var/datum/bank_account/bank_account in SSeconomy.bank_accounts)
        if (bank_account.account_id == H.account_id)
            bank_account.bank_cards += src
            // bank_card.registered_account = bank_account
            to_chat(H, "<span class='notice'>Your account number has been automatically assigned.</span>")
            break

    I.update_label()

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
    var/obj/item/card/id/I = H.wear_id
    I.registered_name = H.real_name
    I.assignment = "Shafi"
    I.access = list(ACCESS_ENGINE, ACCESS_MEDICAL, ACCESS_SECURITY)

    for (var/datum/bank_account/bank_account in SSeconomy.bank_accounts)
        if (bank_account.account_id == H.account_id)
            bank_account.bank_cards += src
            // bank_card.registered_account = bank_account
            to_chat(H, "<span class='notice'>Your account number has been automatically assigned.</span>")
            break

    I.update_label()

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
    var/obj/item/card/id/I = H.wear_id
    I.registered_name = H.real_name
    I.assignment = "Khabeer Fanni"
    I.access = list(ACCESS_ENGINE, ACCESS_MEDICAL, ACCESS_SECURITY)

    for (var/datum/bank_account/bank_account in SSeconomy.bank_accounts)
        if (bank_account.account_id == H.account_id)
            bank_account.bank_cards += src
            // bank_card.registered_account = bank_account
            to_chat(H, "<span class='notice'>Your account number has been automatically assigned.</span>")
            break

    I.update_label()
