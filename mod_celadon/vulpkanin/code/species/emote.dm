/datum/emote/living/carbon/human/vulp/can_run_emote(mob/user, status_check = TRUE , intentional)
	if(!..())
		return FALSE

	if (!isvulp(user))
		return FALSE

	return TRUE

/datum/emote/living/carbon/human/vulp/purr
	key = "purr"
	key_third_person = "purrs"
	message = "мурчит"
	emote_type = EMOTE_AUDIBLE
	vary = TRUE

/datum/emote/living/carbon/human/vulp/purr/get_sound(mob/living/user)
	return 'mod_celadon/vulp/sound/purr.ogg'

/datum/emote/living/carbon/human/vulp/purrl
	key = "purrl"
	key_third_person = "purrls"
	message = "мурчит"
	emote_type = EMOTE_AUDIBLE
	vary = TRUE

/datum/emote/living/carbon/human/vulp/purrl/get_sound(mob/living/user)
	return 'mod_celadon/vulp/sound/purr_long.ogg'
