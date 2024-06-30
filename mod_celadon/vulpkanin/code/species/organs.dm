/*
	  /\        /\      *
	 //\\      //\\     *
	//__\\    //__\\    *
*/

/obj/item/organ/ears/vulp
	name = "vulp ears"
	icon = 'icons/obj/clothing/hats.dmi'	//пока такая хурма, но нужно будет сделать уши отдельно от головы и втыкнуть в какой-либо файл(хоть в тот же таяран_бодипартс)
	icon_state = "kitty"					//когда будут уши в каком-то файле, тогда и поменяешь
	damage_multiplier = 2

/obj/item/organ/ears/vulp/Insert(mob/living/carbon/human/ear_owner, special = 0, drop_if_replaced = TRUE)
	..()
	if(istype(ear_owner))
		color = ear_owner.hair_color
		ear_owner.dna.species.mutant_bodyparts |= "ears"
		ear_owner.dna.features["ears"] = "vulp"
		ear_owner.update_body()

/obj/item/organ/ears/vulp/Remove(mob/living/carbon/human/ear_owner,  special = 0)
	..()
	if(istype(ear_owner))
		color = ear_owner.hair_color
		ear_owner.dna.features["ears"] = "None"
		ear_owner.dna.species.mutant_bodyparts -= "ears"
		ear_owner.update_body()

/*
	/---\    /---\    *
	| | |    | | |    *
	\---/    \---/    *
*/

/obj/item/organ/eyes/vulp
	name = "vulp eyes"
	icon = 'mod_celadon/vulp/icons/vulp_organs.dmi'
	icon_state = "night_eyes_off"
	desc = "Some eyes"
	actions_types = list(/datum/action/item_action/organ_action/toggle)
	var/active = FALSE
	var/current_lighting_alpha = null

/obj/item/organ/eyes/vulp/Initialize()
	current_lighting_alpha = lighting_alpha
	. = ..()

/obj/item/organ/eyes/vulp/Destroy()
	if(active)
		deactivate()
	. = ..()

/obj/item/organ/eyes/vulp/Remove(mob/living/carbon/M, special = FALSE)
	if(active)
		deactivate()
	. = ..()

/obj/item/organ/eyes/vulp/ui_action_click()
	toggle_active()

/obj/item/organ/eyes/vulp/proc/toggle_active()
	if(active)
		deactivate()
	else
		activate()

/obj/item/organ/eyes/vulp/proc/activate()
	active = TRUE
	current_lighting_alpha = lighting_alpha
	lighting_alpha = LIGHTING_PLANE_ALPHA_MOSTLY_VISIBLE
	see_in_dark = 6
	owner.add_client_colour(/datum/client_colour/monochrome)
	owner.update_sight()

/obj/item/organ/eyes/vulp/proc/deactivate()
	active = FALSE
	lighting_alpha = current_lighting_alpha
	see_in_dark = 2
	owner.remove_client_colour(/datum/client_colour/monochrome)
	owner.update_sight()

/*
	  ____      _     *
	 / __ \____/ )    *
	/_/  \______/     *
*/

/obj/item/organ/tail/vulp
	name = "\improper vulp tail"
	desc = "A severed vulp's tail."
	icon_state = "severedtail"
	color = "#661111"
	tail_type = "Long"

/obj/item/organ/tail/vulp/Initialize()
	. = ..()
	color = "#"+ random_color()

/obj/item/organ/tail/vulp/Insert(mob/living/carbon/human/H, special = 0, drop_if_replaced = TRUE)
	..()
	if(istype(H))
		// Checks here are necessary so it wouldn't overwrite the tail of a vulp it spawned in
		if(!("vulp_tail" in H.dna.species.mutant_bodyparts))
			if(!H.dna.features["vulp_tail"])
				H.dna.features["vulp_tail"] = tail_type
				H.dna.species.mutant_bodyparts |= "vulp_tail"
			else
				H.dna.species.mutant_bodyparts["vulp_tail"] = H.dna.features["vulp_tail"]

		H.update_body()

/obj/item/organ/tail/vulp/Remove(mob/living/carbon/human/H,  special = 0)
	..()
	if(istype(H))
		H.dna.species.mutant_bodyparts -= "vulp_tail"
		color = "#" + H.dna.features["mcolor"]
		tail_type = H.dna.features["vulp_tail"]
		H.update_body()

/obj/item/organ/tail/vulp/fake
	name = "fabricated vulp tail"
	desc = "A fabricated severed vulp tail. This one's made of synthflesh."

/*
	|  |  |    *
	|  |  |    *
	 \___/     *
*/

/obj/item/organ/tongue/vulp
	name = "vulp tongue"
	desc = "The traditionally employed tongue of Ahdomai, composed of expressive yowls and chirps. Native to the vulp."
	say_mod = "mrowls"
	taste_sensitivity = 10 // combined nose + tongue, extra sensitive
	modifies_speech = TRUE
	var/static/list/languages_possible_vulp = typecacheof(list(
		/datum/language/common,
		/datum/language/draconic,
		/datum/language/codespeak,
		/datum/language/monkey,
		/datum/language/narsie,
		/datum/language/beachbum,
		/datum/language/aphasia,
		/datum/language/piratespeak,
		/datum/language/moffic,
		/datum/language/sylvan,
		/datum/language/shadowtongue,
		/datum/language/siiktajr
	))

/obj/item/organ/tongue/vulp/handle_speech(datum/source, list/speech_args)
	if(speech_args[SPEECH_LANGUAGE] == /datum/language/siiktajr)
		return

	var/static/regex/vulp_rr = new("r+", "g")
	var/static/regex/vulp_RR = new("R+", "g")
	var/static/regex/vulp_ru_rr = new("р+", "g")
	var/static/regex/vulp_ru_RR = new("Р+", "g")
	var/message = speech_args[SPEECH_MESSAGE]
	if(message[1] != "*")
		message = vulp_rr.Replace(message, pick("rrr", "rr"))
		message = vulp_RR.Replace(message, pick("Rrr", "Rr"))
		message = vulp_ru_rr.Replace_char(message, pick("ррр", "рр"))
		message = vulp_ru_RR.Replace_char(message, pick("Ррр", "Рр"))
	speech_args[SPEECH_MESSAGE] = message

/obj/item/organ/tongue/vulp/Initialize(mapload)
	. = ..()
	languages_possible = languages_possible_vulp
