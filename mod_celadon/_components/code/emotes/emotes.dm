/datum/emote/living/warcray
	key = "warcray"
	key_third_person = "warcray"
	message = "издаёт вдохновляющий крик!"
	emote_type = EMOTE_AUDIBLE

/datum/emote/living/warcray/can_run_emote(mob/living/user, status_check = TRUE , intentional)
	. = ..()
	if(. && iscarbon(user))
		var/mob/living/carbon/C = user
		return !C.silent

/datum/emote/living/warcray/get_sound(mob/living/user)
	if(!ishuman(user))
		return
	var/mob/living/carbon/human/H = user
	var/human_warcray = ishumanbasic(H)
	var/slime_warcray = isjellyperson(H)
	if((human_warcray||slime_warcray) && (!H.mind || !H.mind.miming))
		if(user.gender == FEMALE)
			return pick(
			'mod_celadon/_storge_sounds/sound/voice/human_female_warcry_1.ogg',
			'mod_celadon/_storge_sounds/sound/voice/human_female_warcry_2.ogg',
			'mod_celadon/_storge_sounds/sound/voice/human_female_warcry_3.ogg',
			'mod_celadon/_storge_sounds/sound/voice/human_female_warcry_4.ogg',
			'mod_celadon/_storge_sounds/sound/voice/human_female_warcry_5.ogg')
		else
			return pick(
			'mod_celadon/_storge_sounds/sound/voice/human_male_warcry_1.ogg',
			'mod_celadon/_storge_sounds/sound/voice/human_male_warcry_2.ogg',
			'mod_celadon/_storge_sounds/sound/voice/human_male_warcry_3.ogg',
			'mod_celadon/_storge_sounds/sound/voice/human_male_warcry_4.ogg',
			'mod_celadon/_storge_sounds/sound/voice/human_male_warcry_5.ogg',
			'mod_celadon/_storge_sounds/sound/voice/human_male_warcry_6.ogg',
			'mod_celadon/_storge_sounds/sound/voice/human_male_warcry_7.ogg',
			'mod_celadon/_storge_sounds/sound/voice/human_male_warcry_8.ogg',
			'mod_celadon/_storge_sounds/sound/voice/human_male_warcry_9.ogg')
	if(ismoth(H))
		if(prob(3))
			message = "издаёт вдохновляющий крик!"
			return 'mod_celadon/_storge_sounds/sound/voice/alastor_attack1-attackvoice.ogg'
		else
			message = "издаёт вдохновляющий крик!"
			return pick(
			'mod_celadon/_storge_sounds/sound/voice/alastor_wing1.ogg',
			'mod_celadon/_storge_sounds/sound/voice/alastor_wing1_2.ogg',
			'mod_celadon/_storge_sounds/sound/voice/alastor_wing2.ogg',
			'mod_celadon/_storge_sounds/sound/voice/alastor_wing2_2.ogg')

/**
 * Perform a custom emote.
 *
 * * m_type: Type of message to send.
 * * message: Content of the message. If none is provided, the user will be prompted to choose the input.
 * * intentional: Whether or not the user intendeded to perform the emote.
 */
/mob/proc/custom_emote(m_type = EMOTE_VISIBLE, message = null, intentional = FALSE)
	var/input = ""
	if(!message && !client)
		CRASH("An empty custom emote was called from a client-less mob.")
	else if(!message)
		input = sanitize(copytext_char(input(src,"Choose an emote to display.") as text|null, 1, MAX_MESSAGE_LEN))
	else
		input = message

	emote("me", m_type, input, intentional)
