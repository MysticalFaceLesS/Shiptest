// Transfer <= code\modules\clothing\outfits\factions\inteq.dm

/* List:
1. Independent (Нейтральные)
2. Inteq
*/

//								///
//	1.Independent (Нейтральные)	///
//								///

//	Mime for Mimos
/datum/outfit/job/mime/captain
	name = "Master Mime"
	job_icon = "mime"
	jobtype = /datum/job/mime

	belt = /obj/item/pda/mime
	ears = /obj/item/radio/headset/alt
	uniform = /obj/item/clothing/under/rank/civilian/mime
	alt_uniform = /obj/item/clothing/under/rank/civilian/mime/sexy //WS Edit - Alt Uniforms
	mask = /obj/item/clothing/mask/gas/mime
	gloves = /obj/item/clothing/gloves/color/captain
	shoes = /obj/item/clothing/shoes/jackboots
	head = /obj/item/clothing/head/beret/command
	suit = /obj/item/clothing/suit/toggle/suspenders

	backpack_contents = list(
		/obj/item/stamp/mime = 1,
		/obj/item/book/mimery = 1,
		/obj/item/reagent_containers/food/drinks/bottle/bottleofnothing = 1
		)

	backpack = /obj/item/storage/backpack/mime
	satchel = /obj/item/storage/backpack/mime

	chameleon_extras = /obj/item/stamp/mime

//	Clown for Mimos
/datum/outfit/job/clown/maintenanceclown
	name = "Maintenance Clown"
	job_icon = "clown"
	jobtype = /datum/job/clown

	belt = /obj/item/storage/belt/utility/full/engi
	l_pocket = /obj/item/pda/clown
	ears = /obj/item/radio/headset/headset_srv
	uniform = /obj/item/clothing/under/rank/civilian/clown
	alt_uniform = /obj/item/clothing/under/rank/civilian/clown/green //WS Edit - Alt Uniforms
	shoes = /obj/item/clothing/shoes/clown_shoes
	mask = /obj/item/clothing/mask/gas/clown_hat
	head = /obj/item/clothing/head/hardhat/dblue
	gloves = /obj/item/clothing/gloves/color/yellow
	suit = /obj/item/clothing/suit/hooded/wintercoat/engineering
	backpack_contents = list(
		/obj/item/stamp/clown = 1,
		/obj/item/reagent_containers/spray/waterflower = 1,
		/obj/item/reagent_containers/food/snacks/grown/banana = 1,
		)

	implants = list(/obj/item/implant/sad_trombone)

	backpack = /obj/item/storage/backpack/clown
	satchel = /obj/item/storage/backpack/clown
	duffelbag = /obj/item/storage/backpack/duffelbag/clown //strangely has a duffel

	box = /obj/item/storage/box/hug/survival

	chameleon_extras = /obj/item/stamp/clown

//							///
//			2.INTEQ			///
//							///

/proc/get_inteq_acces()
	return list(ACCESS_INTEQ_GENERAL, ACCESS_INTEQ_SECURITY, ACCESS_INTEQ_CAPTAIN)

//рекрут
/datum/outfit/job/assistant/inteq/cardacces
	name = "Recruit (InteQ)"
	ears = null
	id = /obj/item/card/id/inteq/recruit

/datum/outfit/job/assistant/inteq/cardacces/post_equip(mob/living/carbon/human/H)
    H.faction |= list("InteQ")

    var/obj/item/card/id/I = H.wear_id
    I.registered_name = pick(GLOB.commando_names)
    I.access = list(ACCESS_INTEQ_GENERAL)
    I.update_label()

//Капитан
/datum/outfit/job/inteq/captain/geared/cardacces
    name = "Vanguard (InteQ)"
    id = /obj/item/card/id/inteq/vanguard

/datum/outfit/job/inteq/captain/geared/cardacces/post_equip(mob/living/carbon/human/H)
    H.faction |= list("InteQ")

    var/obj/item/card/id/I = H.wear_id
    I.registered_name = pick(GLOB.commando_names)
    I.access = get_all_accesses()+get_inteq_acces()
    I.update_label()

//Хос
/datum/outfit/job/hos/inteq/naked/cardacces
    name = "Enforcer class One (InteQ)"
    ears = null
    id = /obj/item/card/id/inteq/enfco

/datum/outfit/job/hos/inteq/naked/cardacces/post_equip(mob/living/carbon/human/H)
    H.faction |= list("InteQ")

    var/obj/item/card/id/I = H.wear_id
    I.registered_name = pick(GLOB.commando_names)
    I.access = get_all_accesses()+get_inteq_acces()
    I.update_label()

//Парамедик

/datum/outfit/job/paramedic/inteq/naked/cardacces
    name = "Corpsman (InteQ)"
    ears = null
    id = /obj/item/card/id/inteq/corspman

/datum/outfit/job/paramedic/inteq/naked/cardacces/post_equip(mob/living/carbon/human/H)
    H.faction |= list("InteQ")

    var/obj/item/card/id/I = H.wear_id
    I.registered_name = pick(GLOB.commando_names)
    I.access = list(ACCESS_MEDICAL, ACCESS_MORGUE, ACCESS_SURGERY, ACCESS_GENETICS, ACCESS_CLONING, ACCESS_MECH_MEDICAL, ACCESS_MINERAL_STOREROOM, ACCESS_MAINT_TUNNELS, ACCESS_EVA, ACCESS_INTEQ_GENERAL)
    I.update_label()

//Сесурити

/datum/outfit/job/security/inteq/naked/cardacces
    name = "Enforcer (InteQ)"
    ears = null
    id = /obj/item/card/id/inteq/enf

/datum/outfit/job/security/inteq/naked/cardacces/post_equip(mob/living/carbon/human/H)
    H.faction |= list("InteQ")

    var/obj/item/card/id/I = H.wear_id
    I.registered_name = pick(GLOB.commando_names)
    I.access = list(ACCESS_SECURITY, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_COURT, ACCESS_MAINT_TUNNELS, ACCESS_MECH_SECURITY, ACCESS_MORGUE, ACCESS_WEAPONS, ACCESS_FORENSICS_LOCKERS, ACCESS_MINERAL_STOREROOM, ACCESS_EVA, ACCESS_INTEQ_GENERAL, ACCESS_INTEQ_SECURITY)
    I.update_label()

// Warden

/datum/outfit/job/warden/inteq/cardacces
    name = "Master At Arms (InteQ)"
    ears = null
    id = /obj/item/card/id/inteq/maas

/datum/outfit/job/warden/inteq/cardacces/post_equip(mob/living/carbon/human/H)
    H.faction |= list("InteQ")

    var/obj/item/card/id/I = H.wear_id
    I.registered_name = pick(GLOB.commando_names)
    I.access = list(ACCESS_SECURITY, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_ARMORY, ACCESS_COURT, ACCESS_MECH_SECURITY, ACCESS_MAINT_TUNNELS, ACCESS_MORGUE, ACCESS_WEAPONS, ACCESS_FORENSICS_LOCKERS, ACCESS_MINERAL_STOREROOM, ACCESS_EVA, ACCESS_INTEQ_GENERAL, ACCESS_INTEQ_SECURITY)
    I.update_label()

//Инженегр

/datum/outfit/job/engineer/inteq/cardacces
    name = "Artificer (InteQ)"
    ears = null
    id = /obj/item/card/id/inteq/afr

/datum/outfit/job/engineer/inteq/cardacces/post_equip(mob/living/carbon/human/H)
    H.faction |= list("InteQ")

    var/obj/item/card/id/I = H.wear_id
    I.registered_name = pick(GLOB.commando_names)
    I.access = list(ACCESS_ENGINE, ACCESS_ENGINE_EQUIP, ACCESS_TECH_STORAGE, ACCESS_MAINT_TUNNELS, ACCESS_MECH_ENGINE,ACCESS_EXTERNAL_AIRLOCKS, ACCESS_CONSTRUCTION, ACCESS_ATMOSPHERICS, ACCESS_TCOMSAT, ACCESS_MINERAL_STOREROOM, ACCESS_EVA, ACCESS_INTEQ_GENERAL)
    I.update_label()
