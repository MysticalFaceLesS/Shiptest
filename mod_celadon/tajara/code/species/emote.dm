/datum/emote/living/carbon/human/tajara/can_run_emote(mob/user, status_check = TRUE , intentional)
	if(!..())
		return FALSE

	if (!istajara(user))
		return FALSE

	return TRUE

/datum/emote/living/carbon/human/tajara/purr
	key = "purr"
	key_third_person = "purrs"
	message = "мурчит"
	emote_type = EMOTE_AUDIBLE
	vary = TRUE

/datum/emote/living/carbon/human/tajara/purr/get_sound(mob/living/user)
	return 'mod_celadon/_storge_sounds/sound/purr.ogg'

/datum/emote/living/carbon/human/tajara/purrl
	key = "purrl"
	key_third_person = "purrls"
	message = "мурчит"
	emote_type = EMOTE_AUDIBLE
	vary = TRUE

/datum/emote/living/carbon/human/tajara/purrl/get_sound(mob/living/user)
	return 'mod_celadon/_storge_sounds/sound/purr_long.ogg'
