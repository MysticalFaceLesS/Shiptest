/*
	  /\        /\      *
	 //\\      //\\     *
	//__\\    //__\\    *
*/

/obj/item/organ/ears/tajara
	name = "tajara ears"
	icon = 'icons/obj/clothing/hats.dmi'	//пока такая хурма, но нужно будет сделать уши отдельно от головы и втыкнуть в какой-либо файл(хоть в тот же таяран_бодипартс)
	icon_state = "kitty"					//когда будут уши в каком-то файле, тогда и поменяешь
	damage_multiplier = 2

/obj/item/organ/ears/tajara/Insert(mob/living/carbon/human/ear_owner, special = 0, drop_if_replaced = TRUE)
	..()
	if(istype(ear_owner))
		color = ear_owner.hair_color
		ear_owner.dna.species.mutant_bodyparts |= "ears"
		ear_owner.dna.features["ears"] = "tajara"
		ear_owner.update_body()

/obj/item/organ/ears/tajara/Remove(mob/living/carbon/human/ear_owner,  special = 0)
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

/obj/item/organ/eyes/tajara
	name = "Tajara eyes"
	icon = 'mod_celadon/tajara/icons/tajara_organs.dmi'
	icon_state = "night_eyes_off"
	desc = "Some eyes"
	actions_types = list(/datum/action/item_action/organ_action/toggle)
	var/active = FALSE
	var/current_lighting_alpha = null

/obj/item/organ/eyes/tajara/Initialize()
	current_lighting_alpha = lighting_alpha
	. = ..()

/obj/item/organ/eyes/tajara/Destroy()
	if(active)
		deactivate()
	. = ..()

/obj/item/organ/eyes/tajara/Remove(mob/living/carbon/M, special = FALSE)
	if(active)
		deactivate()
	. = ..()

/obj/item/organ/eyes/tajara/ui_action_click()
	toggle_active()

/obj/item/organ/eyes/tajara/proc/toggle_active()
	if(active)
		deactivate()
	else
		activate()

/obj/item/organ/eyes/tajara/proc/activate()
	active = TRUE
	current_lighting_alpha = lighting_alpha
	lighting_alpha = LIGHTING_PLANE_ALPHA_MOSTLY_VISIBLE
	see_in_dark = 6
	owner.add_client_colour(/datum/client_colour/monochrome)
	owner.update_sight()

/obj/item/organ/eyes/tajara/proc/deactivate()
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

/obj/item/organ/tail/tajara
	name = "\improper Tajara tail"
	desc = "A severed Tajara's tail."
	icon_state = "severedtail"
	color = "#661111"
	tail_type = "Long"

/obj/item/organ/tail/tajara/Initialize()
	. = ..()
	color = "#"+ random_color()

/obj/item/organ/tail/tajara/Insert(mob/living/carbon/human/H, special = 0, drop_if_replaced = TRUE)
	..()
	if(istype(H))
		// Checks here are necessary so it wouldn't overwrite the tail of a tajara it spawned in
		if(!("tajara_tail" in H.dna.species.mutant_bodyparts))
			if(!H.dna.features["tajara_tail"])
				H.dna.features["tajara_tail"] = tail_type
				H.dna.species.mutant_bodyparts |= "tajara_tail"
			else
				H.dna.species.mutant_bodyparts["tajara_tail"] = H.dna.features["tajara_tail"]

		H.update_body()

/obj/item/organ/tail/tajara/Remove(mob/living/carbon/human/H,  special = 0)
	..()
	if(istype(H))
		H.dna.species.mutant_bodyparts -= "tajara_tail"
		color = "#" + H.dna.features["mcolor"]
		tail_type = H.dna.features["tajara_tail"]
		H.update_body()

/obj/item/organ/tail/tajara/fake
	name = "fabricated tajara tail"
	desc = "A fabricated severed tajara tail. This one's made of synthflesh."

