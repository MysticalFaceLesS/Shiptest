/mob/living/carbon/human/verb/emote_rawr()
	set name = "~ Урчание"
	set category = "Эмоции"
	emote_with_delay("rawr", timer)

/datum/emote/living/carbon/human/rawr //lizard
	key = "rawr"
	key_third_person = "rawrs"
	message = "Урчит!"
	emote_type = EMOTE_AUDIBLE
	vary = TRUE

/datum/emote/living/carbon/human/rawr/get_sound(mob/living/user)
	if(!ishuman(user))
		return
	if(islizard(user))
		return 'Gardelin0/sound/rumble_1.ogg'
