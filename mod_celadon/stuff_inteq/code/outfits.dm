//							///
//			INTEQ			///
//							///

/proc/get_inteq_acces()
	return list(ACCESS_INTEQ_GENERAL, ACCESS_INTEQ_SECURITY, ACCESS_INTEQ_CAPTAIN)

//рекрут
/datum/outfit/job/inteq/assistant/celadon
	name = "Recruit (InteQ)"
	id = /obj/item/card/id/inteq/recruit

/datum/outfit/job/inteq/assistant/celadon/post_equip(mob/living/carbon/human/H)
	H.faction |= list(FACTION_PLAYER_INTEQ)

	var/obj/item/card/id/I = H.wear_id
	I.registered_name = H.real_name
	I.access += list(ACCESS_INTEQ_GENERAL)

	for (var/datum/bank_account/bank_account in SSeconomy.bank_accounts)
		if (bank_account.account_id == H.account_id)
			bank_account.bank_cards += src
			I.registered_account = bank_account
			to_chat(H, "<span class='notice'>Your account number has been automatically assigned.</span>")
			break

	I.update_label()

//Капитан

/datum/outfit/job/inteq/captain/celadon
	name = "Vanguard (InteQ)"
	head = /obj/item/clothing/head/beret/sec/hos/inteq
	mask = /obj/item/clothing/mask/gas/sechailer/swat
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses/inteq
	suit = /obj/item/clothing/suit/armor/vest/inteq
	suit_store = /obj/item/gun/ballistic/revolver/horizonx
	gloves = /obj/item/clothing/gloves/combat
	id = /obj/item/card/id/inteq/vanguard

/datum/outfit/job/inteq/captain/celadon/post_equip(mob/living/carbon/human/H)
	H.faction |= list(FACTION_PLAYER_INTEQ)

	var/obj/item/card/id/I = H.wear_id
	I.registered_name = H.real_name
	I.access = get_all_accesses()+get_inteq_acces()

	for (var/datum/bank_account/bank_account in SSeconomy.bank_accounts)
		if (bank_account.account_id == H.account_id)
			bank_account.bank_cards += src
			I.registered_account = bank_account
			to_chat(H, "<span class='notice'>Your account number has been automatically assigned.</span>")
			break

	I.update_label()

// Лейтенант первого класса
/datum/outfit/job/inteq/captain/enfco/celadon
	name = "Enforcer class One (InteQ)"
	head = /obj/item/clothing/head/beret/sec/hos/inteq
	mask = /obj/item/clothing/mask/gas/sechailer/balaclava/inteq
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses/inteq
	suit = /obj/item/clothing/suit/armor/vest/inteq
	suit_store = /obj/item/gun/ballistic/automatic/pistol/usp45
	belt = /obj/item/ammo_box/magazine/usp45_standart
	gloves = /obj/item/clothing/gloves/combat
	id = /obj/item/card/id/inteq/vanguard
	id = /obj/item/card/id/inteq/enfco

/datum/outfit/job/inteq/captain/enfco/celadon/post_equip(mob/living/carbon/human/H)
	H.faction |= list(FACTION_PLAYER_INTEQ)

	var/obj/item/card/id/I = H.wear_id
	I.registered_name = H.real_name
	I.access = get_all_accesses()+get_inteq_acces()

	for (var/datum/bank_account/bank_account in SSeconomy.bank_accounts)
		if (bank_account.account_id == H.account_id)
			bank_account.bank_cards += src
			I.registered_account = bank_account
			to_chat(H, "<span class='notice'>Your account number has been automatically assigned.</span>")
			break

	I.update_label()

//Парамедик

/datum/outfit/job/inteq/paramedic/celadon
	name = "Corpsman (InteQ)"
	ears = /obj/item/radio/headset/inteq
	id = /obj/item/card/id/inteq/corspman

/datum/outfit/job/inteq/paramedic/celadon/post_equip(mob/living/carbon/human/H)
	H.faction |= list(FACTION_PLAYER_INTEQ)

	var/obj/item/card/id/I = H.wear_id
	I.registered_name = H.real_name
	I.access += list(ACCESS_INTEQ_GENERAL)

	for (var/datum/bank_account/bank_account in SSeconomy.bank_accounts)
		if (bank_account.account_id == H.account_id)
			bank_account.bank_cards += src
			I.registered_account = bank_account
			to_chat(H, "<span class='notice'>Your account number has been automatically assigned.</span>")
			break

	I.update_label()

//Служба безопасности

/datum/outfit/job/inteq/security/celadon
	name = "Enforcer (InteQ)"
	id = /obj/item/card/id/inteq/enf

/datum/outfit/job/inteq/security/celadon/post_equip(mob/living/carbon/human/H)
	H.faction |= list(FACTION_PLAYER_INTEQ)

	var/obj/item/card/id/I = H.wear_id
	I.registered_name = H.real_name
	I.access += list(ACCESS_INTEQ_GENERAL,ACCESS_INTEQ_SECURITY)

	for (var/datum/bank_account/bank_account in SSeconomy.bank_accounts)
		if (bank_account.account_id == H.account_id)
			bank_account.bank_cards += src
			I.registered_account = bank_account
			to_chat(H, "<span class='notice'>Your account number has been automatically assigned.</span>")
			break

	I.update_label()

// Варден

/datum/outfit/job/inteq/warden/celadon
	name = "Master At Arms (InteQ)"
	id = /obj/item/card/id/inteq/maas

/datum/outfit/job/inteq/warden/celadon/post_equip(mob/living/carbon/human/H)
	H.faction |= list(FACTION_PLAYER_INTEQ)

	var/obj/item/card/id/I = H.wear_id
	I.registered_name = H.real_name
	I.access += list(ACCESS_INTEQ_GENERAL,ACCESS_INTEQ_SECURITY)

	for (var/datum/bank_account/bank_account in SSeconomy.bank_accounts)
		if (bank_account.account_id == H.account_id)
			bank_account.bank_cards += src
			I.registered_account = bank_account
			to_chat(H, "<span class='notice'>Your account number has been automatically assigned.</span>")
			break

	I.update_label()

// Главный инженер

/datum/outfit/job/inteq/ce/celadon
	name = "Artificer Class One (InteQ)"
	id = /obj/item/card/id/inteq/afr/ce

/datum/outfit/job/inteq/ce/celadon/post_equip(mob/living/carbon/human/H)
	H.faction |= list(FACTION_PLAYER_INTEQ)

	var/obj/item/card/id/I = H.wear_id
	I.registered_name = H.real_name
	I.access = get_all_accesses()+get_inteq_acces()

	for (var/datum/bank_account/bank_account in SSeconomy.bank_accounts)
		if (bank_account.account_id == H.account_id)
			bank_account.bank_cards += src
			I.registered_account = bank_account
			to_chat(H, "<span class='notice'>Your account number has been automatically assigned.</span>")
			break

	I.update_label()

//Инженегр

/datum/outfit/job/inteq/engineer/celadon
	name = "Artificer (InteQ)"
	id = /obj/item/card/id/inteq/afr

/datum/outfit/job/inteq/engineer/celadon/post_equip(mob/living/carbon/human/H)
	H.faction |= list(FACTION_PLAYER_INTEQ)

	var/obj/item/card/id/I = H.wear_id
	I.registered_name = H.real_name
	I.access += list(ACCESS_INTEQ_GENERAL)

	for (var/datum/bank_account/bank_account in SSeconomy.bank_accounts)
		if (bank_account.account_id == H.account_id)
			bank_account.bank_cards += src
			I.registered_account = bank_account
			to_chat(H, "<span class='notice'>Your account number has been automatically assigned.</span>")
			break

	I.update_label()
