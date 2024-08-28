/obj/item/card/id/elysium_com
	name = "\improper Elysium Central Command access card"
	desc = "An access card sourced from Elysium Central Command."
	icon = 'mod_celadon/_storge_icons/icons/obj/elysium_card.dmi'
	icon_state = "elysium_com"
	uses_overlays = FALSE
	registered_age = null

/obj/item/card/id/elysium_com/Initialize()
	access = get_all_centcom_access()+get_all_accesses_outpost()
	. = ..()

/obj/item/card/id/elysium_com/has_ship_access(datum/overmap/ship/controlled/ship)
	return TRUE

/obj/effect/mob_spawn/human/bridgeofficerelysium
	name = "Avanpost Bridge Officer Elysium"
	id_job = "Bridge Officer"
	id_access_list = list(ACCESS_CENT_CAPTAIN)
	outfit = /datum/outfit/elysiumbridgeofficercorpse

/datum/outfit/elysiumbridgeofficercorpse
	name = "Avanpost Bridge Officer Elysium"
	ears = /obj/item/radio/headset/heads/head_of_personnel
	uniform = /obj/item/clothing/under/rank/avanpost/elysium_apparel
	suit = /obj/item/clothing/suit/armor/vest/bulletproof
	shoes = /obj/item/clothing/shoes/sneakers/sandals_cc
	head = /obj/item/clothing/head/shemag_elysium
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses
	id = /obj/item/card/id/elysium_com
	belt = /obj/item/storage/belt/security/webbing/elysium/vest_black
	l_pocket = /obj/item/restraints/handcuffs
	r_pocket = /obj/item/ammo_box/a357
	box = /obj/item/storage/box/survival/security
	suit_store = /obj/item/gun/ballistic/revolver/mateba
	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
	back = /obj/item/storage/backpack/security

	backpack_contents = list(/obj/item/melee/classic_baton,
							/obj/item/restraints/handcuffs = 4,
							/obj/item/ammo_box/a357 = 3)

	implants = list(/obj/item/implant/mindshield, /obj/item/implant/krav_maga)

/obj/effect/mob_spawn/human/commanderelysium
	name = "Avanpost Commander Elysium"
	id_job = "Avanpost Commander Elysium"
	id_access_list = list(ACCESS_CENT_CAPTAIN, ACCESS_CENT_GENERAL, ACCESS_CENT_SPECOPS, ACCESS_CENT_MEDICAL, ACCESS_CENT_STORAGE)
	outfit = /datum/outfit/elysiumcommandercorpse

/datum/outfit/elysiumcommandercorpse
	name = "\improper Avanpost Private Security Commander Elysium"
	uniform = /obj/item/clothing/under/rank/avanpost/elysium_apparel
	suit = /obj/item/clothing/suit/armor/vest/bulletproof
	ears = /obj/item/radio/headset/heads/captain
	glasses = /obj/item/clothing/glasses/eyepatch
	mask = /obj/item/clothing/mask/cigarette/cigar/cohiba
	head = /obj/item/clothing/head/shemag_elysium
	gloves = /obj/item/clothing/gloves/tackler/combat
	shoes = /obj/item/clothing/shoes/sneakers/sandals_cc
	belt = /obj/item/lighter
	l_pocket = /obj/item/restraints/handcuffs
	r_pocket = /obj/item/ammo_box/a357
	box = /obj/item/storage/box/survival/security
	suit_store = /obj/item/gun/ballistic/revolver/mateba
	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
	id = /obj/item/card/id/elysium_com

	implants = list(/obj/item/implant/mindshield)

/obj/effect/mob_spawn/human/commanderelysium_alt
	name = "Avanpost Commander Elysium (Alternative)"
	id_job = "Avanpost Commander Elysium"
	id_access_list = list(ACCESS_CENT_CAPTAIN, ACCESS_CENT_GENERAL, ACCESS_CENT_SPECOPS, ACCESS_CENT_MEDICAL, ACCESS_CENT_STORAGE)
	outfit = /datum/outfit/elysiumcommandercorpse_alt

/datum/outfit/elysiumcommandercorpse_alt
	name = "\improper Avanpost Private Security Commander Elysium"
	uniform = /obj/item/clothing/under/rank/avanpost/elysium_apparel_long
	suit = /obj/item/clothing/suit/armor/vest/bulletproof
	ears = /obj/item/radio/headset/heads/captain
	glasses = /obj/item/clothing/glasses/eyepatch
	mask = /obj/item/clothing/mask/cigarette/cigar/cohiba
	head = /obj/item/clothing/head/turban_elysium
	gloves = /obj/item/clothing/gloves/tackler/combat
	shoes = /obj/item/clothing/shoes/sneakers/sandals_cc
	r_pocket = /obj/item/lighter
	id = /obj/item/card/id/elysium_com

/obj/effect/mob_spawn/human/commanderelysium/alive
	death = FALSE
	roundstart = FALSE
	mob_name = "\improper Avanpost Elysium Commander"
	name = "sleeper"
	icon = 'icons/obj/machines/sleeper.dmi'
	icon_state = "sleeper"
	short_desc = "You are a Avanpost Elysium Commander!"

/obj/effect/mob_spawn/human/elysiumsoldier/alive
	death = FALSE
	roundstart = FALSE
	mob_name = "Avanpost Elysium Private Security Officer"
	name = "sleeper"
	icon = 'icons/obj/machines/sleeper.dmi'
	icon_state = "sleeper"
	faction = (FACTION_PLAYER_ELYSIUM)
	short_desc = "You are a Avanpost Elysium Private Security Officer!"

/datum/outfit/avanpost
	name = "Avanpost"
	uniform = /obj/item/clothing/under/rank/avanpost/elysium_apparel
	suit = /obj/item/clothing/suit/armor/vest/bulletproof
	ears = /obj/item/radio/headset/heads/captain
	glasses = /obj/item/clothing/glasses/eyepatch
	mask = /obj/item/clothing/mask/cigarette/cigar/cohiba
	gloves = /obj/item/clothing/gloves/tackler/combat
	shoes = /obj/item/clothing/shoes/sneakers/sandals_cc
	r_pocket = /obj/item/lighter
	id = /obj/item/card/id/elysium_com

	implants = list(/obj/item/implant/mindshield)

/datum/outfit/avanpost/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	if(visualsOnly)
		return

/datum/outfit/avanpost/commander
	name = "Avanpost Elysium Commander"
	uniform = /obj/item/clothing/under/rank/avanpost/elysium_apparel
	suit = /obj/item/clothing/suit/armor/vest/bulletproof
	shoes = /obj/item/clothing/shoes/sneakers/sandals_cc
	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
	ears = /obj/item/radio/headset/headset_cent/commander
	glasses = /obj/item/clothing/glasses/eyepatch
	mask = /obj/item/clothing/mask/cigarette/cigar/cohiba
	head = /obj/item/clothing/head/turban_elysium
	belt = /obj/item/gun/ballistic/revolver/mateba
	r_pocket = /obj/item/lighter
	l_pocket = /obj/item/ammo_box/a357
	back = /obj/item/storage/backpack/satchel/leather
	id = /obj/item/card/id/elysium_com

	implants = list(/obj/item/implant/mindshield)

/datum/outfit/avanpost/commander/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	if(visualsOnly)
		return

	var/obj/item/card/id/W = H.wear_id
	W.access = get_all_accesses()+get_all_accesses_outpost()
	W.access += get_centcom_access("CentCom Commander")
	W.assignment = "CentCom Commander"
	W.registered_name = H.real_name
	W.update_label()
	..()
