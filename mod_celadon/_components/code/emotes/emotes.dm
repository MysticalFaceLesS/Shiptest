/* 	1. Carbon - code/modules/mob/living/carbon/emote.dm
	2. Human - code/modules/mob/living/carbon/human/emote.dm	*/

		//////////////////
		//	1. CARBON	//
		//////////////////

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
			'mod_celadon/_components/sounds/voice/human_female_warcry_1.ogg',
			'mod_celadon/_components/sounds/voice/human_female_warcry_2.ogg',
			'mod_celadon/_components/sounds/voice/human_female_warcry_3.ogg',
			'mod_celadon/_components/sounds/voice/human_female_warcry_4.ogg',
			'mod_celadon/_components/sounds/voice/human_female_warcry_5.ogg')
		else
			return pick(
			'mod_celadon/_components/sounds/voice/human_male_warcry_1.ogg',
			'mod_celadon/_components/sounds/voice/human_male_warcry_2.ogg',
			'mod_celadon/_components/sounds/voice/human_male_warcry_3.ogg',
			'mod_celadon/_components/sounds/voice/human_male_warcry_4.ogg',
			'mod_celadon/_components/sounds/voice/human_male_warcry_5.ogg',
			'mod_celadon/_components/sounds/voice/human_male_warcry_6.ogg',
			'mod_celadon/_components/sounds/voice/human_male_warcry_7.ogg',
			'mod_celadon/_components/sounds/voice/human_male_warcry_8.ogg',
			'mod_celadon/_components/sounds/voice/human_male_warcry_9.ogg')
	if(ismoth(H))
		if(prob(3))
			message = "издаёт вдохновляющий крик!"
			return 'mod_celadon/_components/sounds/voice/alastor_attack1-attackvoice.ogg'
		else
			message = "издаёт вдохновляющий крик!"
			return pick(
			'mod_celadon/_components/sounds/voice/alastor_wing1.ogg',
			'mod_celadon/_components/sounds/voice/alastor_wing1_2.ogg',
			'mod_celadon/_components/sounds/voice/alastor_wing2.ogg',
			'mod_celadon/_components/sounds/voice/alastor_wing2_2.ogg')

/datum/emote/living/carbon/airguitar
	key = "airguitar"
	message = "делает невероятный запил на воображаемой гитаре!"
	hands_use_check = TRUE

/// The time it takes for the blink to be removed
#define BLINK_DURATION 0.5 SECONDS
/datum/emote/living/carbon/blink
	key = "blink"
	key_third_person = "blinks"
	message = "моргает."
	/// Timer for the blink to wear off
	var/blink_timer = TIMER_ID_NULL

/datum/emote/living/carbon/blink/run_emote(mob/user, params, type_override, intentional)
	. = ..()
	if(. && isliving(user))
		var/mob/living/living_user = user
		ADD_TRAIT(living_user, TRAIT_EYESCLOSED, "[type]")
		living_user.update_body()

		// Use a timer to remove the closed eyes after the BLINK_DURATION has passed
		var/list/key_emotes = GLOB.emote_list["blink"]
		for(var/datum/emote/living/carbon/blink/living_emote in key_emotes)
			// The existing timer restarts if it's already running
			blink_timer = addtimer(CALLBACK(living_emote, PROC_REF(end_blink), living_user), BLINK_DURATION, TIMER_UNIQUE | TIMER_OVERRIDE)

/datum/emote/living/carbon/blink/proc/end_blink(mob/living/living_user)
	if(!QDELETED(living_user))
		REMOVE_TRAIT(living_user, TRAIT_EYESCLOSED, "[type]")
		living_user.update_body()

#undef BLINK_DURATION

/datum/emote/living/carbon/blink_r
	key = "blink_r"
	message = "быстро моргает."

/datum/emote/living/carbon/clap
	key = "clap"
	key_third_person = "claps"
	message = "хлопает."
	muzzle_ignore = TRUE
	hands_use_check = TRUE
	emote_type = EMOTE_AUDIBLE
	vary = TRUE

/datum/emote/living/carbon/crack
	key = "crack"
	key_third_person = "cracks"
	message = "хрустит костяшками пальцев."
	sound = 'sound/misc/knuckles.ogg'
	cooldown = 6 SECONDS

/datum/emote/living/carbon/gnarl
	key = "gnarl"
	key_third_person = "gnarls"
	message = "рычит и скалит зубы..."
	mob_type_allowed_typecache = list(/mob/living/carbon/monkey)

/datum/emote/living/carbon/moan
	key = "moan"
	key_third_person = "moans"
	message = "стонет!"
	message_mime = "кажется стонет"
	emote_type = EMOTE_AUDIBLE

/datum/emote/living/carbon/scratch
	key = "scratch"
	key_third_person = "scratches"
	message = "царапает."
	mob_type_allowed_typecache = list(/mob/living/carbon/monkey, /mob/living/carbon/alien)
	hands_use_check = TRUE

/datum/emote/living/carbon/screech
	key = "screech"
	key_third_person = "screeches"
	message = "издаёт дикий визг."
	mob_type_allowed_typecache = list(/mob/living/carbon/monkey, /mob/living/carbon/alien)

/datum/emote/living/carbon/sign/signal
	key = "signal"
	key_third_person = "signals"
	message_param = "показывает %t пальцев."
	mob_type_allowed_typecache = list(/mob/living/carbon/human)
	hands_use_check = TRUE

/datum/emote/living/carbon/tail
	key = "tail"
	message = "машет хвостом."
	mob_type_allowed_typecache = list(/mob/living/carbon/monkey, /mob/living/carbon/alien)

/datum/emote/living/carbon/wink
	key = "wink"
	key_third_person = "winks"
	message = "подмигивает."

/obj/item/slapper
	name = "slapper"
	desc = "Именно так дерутся настоящие мужчины."
	icon_state = "latexballon"
	item_state = "nothing"
	force = 0
	throwforce = 0
	item_flags = DROPDEL | ABSTRACT
	attack_verb = list("slapped")
	hitsound = 'sound/effects/snap.ogg'
	/// How many smaller table smacks we can do before we're out
	var/table_smacks_left = 3

/datum/emote/living/carbon/slap/run_emote(mob/user, params, type_override, intentional)
	. = ..()
	if(!.)
		return
	var/obj/item/slapper/N = new(user)
	if(user.put_in_hands(N))
		to_chat(user, "<span class='notice'>Вы приготовили свою руку для пощечины.</span>")
	else
		qdel(N)
		to_chat(user, "<span class='warning'>В текущем состоянии ты не можешь дать пощечину.</span>")

/obj/item/slapper/attack(mob/living/M, mob/living/carbon/human/user)
	if(ishuman(M))
		var/mob/living/carbon/human/L = M
		if(L && L.dna && L.dna.species)
			L.dna.species.stop_wagging_tail(M)
	user.do_attack_animation(M)

	var/slap_volume = 50
	var/datum/status_effect/offering/kiss_check = M.has_status_effect(STATUS_EFFECT_OFFERING)
	if(kiss_check && istype(kiss_check.offered_item, /obj/item/kisser) && (user in kiss_check.possible_takers))
		user.visible_message(span_danger("[user] издевается над [M]'s, заставляя [M.p_them()] с грохотом упасть на землю!"),
			span_notice("Нервы! Ты отводишь руку и шлепаешь [M] достаточно сильно, чтобы опрокинуть [M.p_them()]!"),
			span_hear("Вы слышите как кого-то шлёпают!"), ignored_mobs = M)
		to_chat(M, span_userdanger("Ты видишь как усмехается [user] и отводишь руку [user.p_their()], иначе рискуешь оказаться на земле с безбожным звоном в ушах!"))
		slap_volume = 120
		SEND_SOUND(M, sound('sound/weapons/flash_ring.ogg'))
		shake_camera(M, 2, 2)
		M.Paralyze(2.5 SECONDS)
		M.confused += 7
		M.adjustStaminaLoss(40)
	else if(user.zone_selected == BODY_ZONE_HEAD || user.zone_selected == BODY_ZONE_PRECISE_MOUTH)
		user.visible_message(span_danger("[user] ударяет пощёчиной [M] по лицу!"),
			span_notice("Ты шлепаешь [M] по лицу!"),
			span_hear("Вы слышите пощёчину."))
	else
		user.visible_message(span_danger("[user] шлёпает [M]!"),
			span_notice("Ты шлёпаешь [M]!"),
			span_hear("Вы слышите пощечину."))
	playsound(M, 'sound/weapons/slap.ogg', slap_volume, TRUE, -1)
	return

/obj/item/kisser
	name = "поцелуй"
	desc = "I want you all to know, everyone and anyone, to seal it with a kiss."
	icon = 'icons/mob/animal.dmi'
	icon_state = "heart"
	item_state = "nothing"
	force = 0
	throwforce = 0
	item_flags = DROPDEL | ABSTRACT
	/// The kind of projectile this version of the kiss blower fires
	var/kiss_type = /obj/projectile/kiss
	/// TRUE if the user was aiming anywhere but the mouth when they offer the kiss, if it's offered
	var/cheek_kiss

/obj/item/kisser/afterattack(atom/target, mob/user, proximity_flag, click_parameters)
	. = ..()
	var/obj/projectile/blown_kiss = new kiss_type(get_turf(user))
	user.visible_message("<b>[user]</b> посылает воздушный поцелуй в сторону [target]!", span_notice("Ты посылаешь воздушный поцелуй в сторону [target]!"))

	//Shooting Code:
	blown_kiss.original = target
	blown_kiss.fired_from = user
	blown_kiss.firer = user // don't hit ourself that would be really annoying
	LAZYSET(blown_kiss.impacted, user, TRUE) // just to make sure we don't hit the wearer
	blown_kiss.preparePixelProjectile(target, user)
	blown_kiss.fire()
	qdel(src)

/obj/projectile/kiss/proc/try_fluster(mob/living/living_target)
	// people with the social anxiety quirk can get flustered when hit by a kiss
	if(!HAS_TRAIT(living_target, TRAIT_ANXIOUS) || (living_target.stat > SOFT_CRIT) || living_target.is_blind())
		return
	if(HAS_TRAIT(living_target, TRAIT_FEARLESS) || prob(50)) // 50% chance for it to apply, also immune while on meds
		return

	var/other_msg
	var/self_msg
	var/roll = rand(1, 3)
	switch(roll)
		if(1)
			other_msg = "слегка спотыкается, становясь ярко-красным!"
			self_msg = "Вы на мгновение теряете контроль над своими конечностями, когда кровь приливает к лицу, делая его ярко-красным!"
			living_target.confused += (rand(5, 10))
		if(2)
			other_msg = "тихо заикается на мгновение, прежде чем что-то сказать!"
			self_msg = "Вы чувствуете, как ваш язык исчезает в горле, пока вы пытаетесь вспомнить, как произносить слова!"
			addtimer(CALLBACK(living_target, TYPE_PROC_REF(/atom/movable, say), pick("Ухх...", "О-ох, хм...", "Я- ухххх..", "Что?")), rand(0.5 SECONDS, 1.5 SECONDS))
			living_target.stuttering += rand(5, 15)
		if(3)
			other_msg = "пытается откинуть взгляд, при виде [living_target.p_their()], глядя на [firer ? firer : "потолок"]!"
			self_msg = "Твой мозг совершенно не в состоянии обработать то, что только что произошло. Ты застываешь на месте, глядя на [firer ? "[firer]" : "потолок"] с ощущением что прошла вечность!"
			living_target.face_atom(firer)
			living_target.Stun(rand(3 SECONDS, 8 SECONDS))

	living_target.visible_message("<b>[living_target]</b> [other_msg]", "<span class='userdanger'>Whoa! [self_msg]<span>")

		//////////////////
		//	2. HUMAN	//
		//////////////////

/datum/emote/living/carbon/human/cry
	key = "cry"
	key_third_person = "cries"
	message = "плачет."
	emote_type = EMOTE_AUDIBLE

/datum/emote/living/carbon/human/eyebrow
	key = "eyebrow"
	message = "приподнимает бровь."

/datum/emote/living/carbon/human/grumble
	key = "grumble"
	key_third_person = "grumbles"
	message = "ворчит!"
	emote_type = EMOTE_AUDIBLE

/datum/emote/living/carbon/human/hug
	key = "hug"
	key_third_person = "hugs"
	message = "обнимает себя."
	message_param = "обнимает %t."
	hands_use_check = TRUE
	emote_type = EMOTE_AUDIBLE

/datum/emote/living/carbon/human/mumble
	key = "mumble"
	key_third_person = "mumbles"
	message = "бормочет!"
	emote_type = EMOTE_AUDIBLE

/datum/emote/living/carbon/human/scream
	key = "scream"
	key_third_person = "screams"
	message = "кричит!"
	emote_type = EMOTE_AUDIBLE
	vary = TRUE

/datum/emote/living/carbon/human/hiss //lizard
	key = "hiss"
	key_third_person = "hisses"
	message = "шипит!"
	emote_type = EMOTE_AUDIBLE
	vary = TRUE

/datum/emote/living/carbon/human/pale
	key = "pale"
	message = "бледнеет."

/datum/emote/living/carbon/human/raise
	key = "raise"
	key_third_person = "raises"
	message = "поднимает руки."
	hands_use_check = TRUE

/datum/emote/living/carbon/human/salute
	key = "salute"
	key_third_person = "salutes"
	message = "салютует."
	message_param = "салютует %t."
	hands_use_check = TRUE

/datum/emote/living/carbon/human/shrug
	key = "shrug"
	key_third_person = "shrugs"
	message = "пожимает плечами."

/datum/emote/living/carbon/human/wag
	key = "wag"
	key_third_person = "wags"
	message = "начинает махать хвостом."
