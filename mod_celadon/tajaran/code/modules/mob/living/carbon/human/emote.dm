/datum/emote/living/carbon/human/pur //tajaran
	key = "pur"
	key_third_person = "purring"
	message = "мурчит"
	emote_type = EMOTE_AUDIBLE
	vary = TRUE

/datum/emote/living/carbon/human/pur/get_sound(mob/living/user)
	if(istajaran(user))
		return 'sound/voice/tajaran/purr.ogg'
	else
		return

/datum/emote/living/carbon/human/purlong //tajaran
	key = "purlong"
	key_third_person = "purring long"
	message = "мурчит"
	emote_type = EMOTE_AUDIBLE
	vary = TRUE

/datum/emote/living/carbon/human/purlong/get_sound(mob/living/user)
	if(istajaran(user))
		return 'sound/voice/tajaran/purr_long.ogg'
	else
		return
