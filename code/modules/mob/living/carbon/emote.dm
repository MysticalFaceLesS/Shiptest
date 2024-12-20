/datum/emote/living/carbon
	mob_type_allowed_typecache = list(/mob/living/carbon)

/datum/emote/living/carbon/airguitar
	key = "airguitar"
	// [CELADON-EDIT] - CELADON_COMPONENTS_EMOTE - Эмоции
	// message = "is strumming the air and headbanging like a safari chimp." // CELADON-EDIT - ORIGINAL
	message = "делает невероятный запил на воображаемой гитаре!"
	// [/CELADON-EDIT]
	hands_use_check = TRUE

/// The time it takes for the blink to be removed
#define BLINK_DURATION 0.5 SECONDS
/datum/emote/living/carbon/blink
	key = "blink"
	key_third_person = "blinks"
	// [CELADON-EDIT] - CELADON_COMPONENTS_EMOTE - Эмоции
	// message = "blinks." // CELADON-EDIT - ORIGINAL
	message = "моргает."
	// [/CELADON-EDIT]
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
	// [CELADON-EDIT] - CELADON_COMPONENTS_EMOTE - Эмоции
	// message = "blinks rapidly." // CELADON-EDIT - ORIGINAL
	message = "быстро моргает."
	// [/CELADON-EDIT]

/datum/emote/living/carbon/clap
	key = "clap"
	key_third_person = "claps"
	// [CELADON-EDIT] - CELADON_COMPONENTS_EMOTE - Эмоции
	// message = "claps." // CELADON-EDIT - ORIGINAL
	message = "хлопает."
	// [/CELADON-EDIT]
	muzzle_ignore = TRUE
	hands_use_check = TRUE
	emote_type = EMOTE_AUDIBLE
	vary = TRUE

/datum/emote/living/carbon/clap/get_sound(mob/living/user)
	if(ishuman(user))
		if(!user.get_bodypart(BODY_ZONE_L_ARM) || !user.get_bodypart(BODY_ZONE_R_ARM))
			return
		else
			return pick('sound/misc/clap1.ogg',
							'sound/misc/clap2.ogg',
							'sound/misc/clap3.ogg',
							'sound/misc/clap4.ogg')

/datum/emote/living/carbon/crack
	key = "crack"
	key_third_person = "cracks"
	// [CELADON-EDIT] - CELADON_COMPONENTS_EMOTE - Эмоции
	// message = "cracks their knuckles." - sound = 'sound/misc/crack.ogg'// CELADON-EDIT - ORIGINAL
	message = "хрустит костяшками пальцев."
	sound = 'mod_celadon/_storge_sounds/sound/voice/knuckles.ogg'
	// [/CELADON-EDIT]
	cooldown = 6 SECONDS

/datum/emote/living/carbon/crack/can_run_emote(mob/living/carbon/user, status_check = TRUE , intentional)
	if(user.usable_hands < 2)
		return FALSE
	return ..()

/datum/emote/living/carbon/gnarl
	key = "gnarl"
	key_third_person = "gnarls"
	// [CELADON-EDIT] - CELADON_COMPONENTS_EMOTE - Эмоции
	// message = "gnarls and shows its teeth..." // CELADON-EDIT - ORIGINAL
	message = "рычит и скалит зубы..."
	// [/CELADON-EDIT]
	mob_type_allowed_typecache = list(/mob/living/carbon/monkey)

/datum/emote/living/carbon/moan
	key = "moan"
	key_third_person = "moans"
	message = "moans!"
	message_mime = "appears to moan!"
	emote_type = EMOTE_AUDIBLE

/datum/emote/living/carbon/roll
	key = "roll"
	key_third_person = "rolls"
	message = "rolls."
	mob_type_allowed_typecache = list(/mob/living/carbon/monkey, /mob/living/carbon/alien)
	hands_use_check = TRUE

/datum/emote/living/carbon/scratch
	key = "scratch"
	key_third_person = "scratches"
	// [CELADON-EDIT] - CELADON_COMPONENTS_EMOTE - Эмоции
	// mob_type_allowed_typecache = list(/mob/living/carbon/monkey, /mob/living/carbon/alien)
	// message = "scratches." // CELADON-EDIT - ORIGINAL
	message = "чешется."
	// [/CELADON-EDIT]
	hands_use_check = TRUE

/datum/emote/living/carbon/screech
	key = "screech"
	key_third_person = "screeches"
	// [CELADON-EDIT] - CELADON_COMPONENTS_EMOTE - Эмоции
	// message = "screeches." // CELADON-EDIT - ORIGINAL
	message = "издаёт дикий визг."
	// [/CELADON-EDIT]
	mob_type_allowed_typecache = list(/mob/living/carbon/monkey, /mob/living/carbon/alien)

/datum/emote/living/carbon/sign
	key = "sign"
	key_third_person = "signs"
	message_param = "signs the number %t."
	mob_type_allowed_typecache = list(/mob/living/carbon/monkey, /mob/living/carbon/alien)
	hands_use_check = TRUE

/datum/emote/living/carbon/sign/select_param(mob/user, params)
	. = ..()
	if(!isnum(text2num(params)))
		return message

/datum/emote/living/carbon/sign/signal
	key = "signal"
	key_third_person = "signals"
	// [CELADON-EDIT] - CELADON_COMPONENTS_EMOTE - Эмоции
	// message_param = "raises %t fingers." // CELADON-EDIT - ORIGINAL
	message_param = "показывает %t пальцев."
	// [/CELADON-EDIT]
	mob_type_allowed_typecache = list(/mob/living/carbon/human)
	hands_use_check = TRUE

/datum/emote/living/carbon/tail
	key = "tail"
	// [CELADON-EDIT] - CELADON_COMPONENTS_EMOTE - Эмоции
	// message = "waves their tail." // CELADON-EDIT - ORIGINAL
	message = "машет хвостом."
	// [/CELADON-EDIT]
	mob_type_allowed_typecache = list(/mob/living/carbon/monkey, /mob/living/carbon/alien)

/datum/emote/living/carbon/wink
	key = "wink"
	key_third_person = "winks"
	// [CELADON-EDIT] - CELADON_COMPONENTS_EMOTE - Эмоции
	// message = "winks." // CELADON-EDIT - ORIGINAL
	message = "подмигивает."
	// [/CELADON-EDIT]

/datum/emote/living/carbon/circle
	key = "circle"
	key_third_person = "circles"
	hands_use_check = TRUE
	mob_type_allowed_typecache = list(/mob/living/carbon)

/datum/emote/living/carbon/circle/run_emote(mob/user, params, type_override, intentional)
	. = ..()
	if(!.)
		return
	var/obj/item/circlegame/N = new(user)
	if(user.put_in_hands(N))
		to_chat(user, "<span class='notice'>You make a circle with your hand.</span>")
	else
		qdel(N)
		to_chat(user, "<span class='warning'>You don't have any free hands to make a circle with.</span>")

/datum/emote/living/carbon/slap
	key = "slap"
	key_third_person = "slaps"
	hands_use_check = TRUE
	mob_type_allowed_typecache = list(/mob/living/carbon)

/datum/emote/living/carbon/slap/run_emote(mob/user, params, type_override, intentional)
	. = ..()
	if(!.)
		return
	var/obj/item/slapper/N = new(user)
	if(user.put_in_hands(N))
		// [CELADON-EDIT] - CELADON_COMPONENTS_EMOTE - Эмоции
		// to_chat(user, "<span class='notice'>You ready your slapping hand.</span>") // CELADON-EDIT - ORIGINAL
		to_chat(user, "<span class='notice'>Вы приготовили свою руку для пощечины.</span>")
		// [/CELADON-EDIT]
	else
		qdel(N)
		// [CELADON-EDIT] - CELADON_COMPONENTS_EMOTE - Эмоции
		// to_chat(user, "<span class='warning'>You're incapable of slapping in your current state.</span>") // CELADON-EDIT - ORIGINAL
		to_chat(user, "<span class='warning'>В текущем состоянии ты не можешь дать пощечину.</span>")
		// [/CELADON-EDIT]

/datum/emote/living/carbon/noogie
	key = "noogie"
	key_third_person = "noogies"
	hands_use_check = TRUE

/datum/emote/living/carbon/noogie/run_emote(mob/user, params, type_override, intentional)
	. = ..()
	if(!.)
		return
	var/obj/item/noogie/noogie = new(user)
	if(user.put_in_hands(noogie))
		to_chat(user, "<span class='notice'>You ready your noogie'ing hand.</span>")
	else
		qdel(noogie)
		to_chat(user, "<span class='warning'>You're incapable of noogie'ing in your current state.</span>")


//
//items that are spawned directly from emotes.
//

/obj/item/noogie
	name = "noogie"
	desc = "Get someone in an aggressive grab then use this on them to ruin their day."
	icon_state = "nothing"
	force = 0
	throwforce = 0
	item_flags = DROPDEL | ABSTRACT

/obj/item/noogie/attack(mob/living/carbon/target, mob/living/carbon/human/user)
	if(!istype(target))
		to_chat(user, "<span class='warning'>You don't think you can give this a noogie!</span>")
		return

	if(!(target?.get_bodypart(BODY_ZONE_HEAD)) || user.pulling != target || user.grab_state < GRAB_AGGRESSIVE || user.getStaminaLoss() > 80)
		return FALSE

	// [user] gives [target] a [prefix_desc] noogie[affix_desc]!
	var/brutal_noogie = FALSE // was it an extra hard noogie?
	var/prefix_desc = "rough"
	var/affix_desc = ""
	var/affix_desc_target = ""

	if(HAS_TRAIT(target, TRAIT_ANTENNAE))
		prefix_desc = "violent"
		affix_desc = "on [target.p_their()] sensitive antennae"
		affix_desc_target = "on your highly sensitive antennae"
		brutal_noogie = TRUE
	if(user.dna?.check_mutation(HULK))
		prefix_desc = "sickeningly brutal"
		brutal_noogie = TRUE

	var/message_others = "[prefix_desc] noogie[affix_desc]"
	var/message_target = "[prefix_desc] noogie[affix_desc_target]"

	user.visible_message("<span class='danger'>[user] begins giving [target] a [message_others]!</span>", "<span class='warning'>You start giving [target] a [message_others]!</span>", vision_distance=COMBAT_MESSAGE_RANGE, ignored_mobs=target)
	to_chat(target, "<span class='userdanger'>[user] starts giving you a [message_target]!</span>")

	if(!do_after(user, 1.5 SECONDS, target))
		to_chat(user, "<span class='warning'>You fail to give [target] a noogie!</span>")
		to_chat(target, "<span class='danger'>[user] fails to give you a noogie!</span>")
		return

	if(brutal_noogie)
		SEND_SIGNAL(target, COMSIG_ADD_MOOD_EVENT, "noogie_harsh", /datum/mood_event/noogie_harsh)
	else
		SEND_SIGNAL(target, COMSIG_ADD_MOOD_EVENT, "noogie", /datum/mood_event/noogie)

	noogie_loop(user, target, 0)

/// The actual meat and bones of the noogie'ing
/obj/item/noogie/proc/noogie_loop(mob/living/carbon/human/user, mob/living/carbon/target, iteration)
	if(!(target?.get_bodypart(BODY_ZONE_HEAD)) || user.pulling != target)
		return FALSE

	if(user.getStaminaLoss() > 80)
		to_chat(user, "<span class='warning'>You're too tired to continue giving [target] a noogie!</span>")
		to_chat(target, "<span class='danger'>[user] is too tired to continue giving you a noogie!</span>")
		return

	var/damage = rand(1, 5)
	if(HAS_TRAIT(target, TRAIT_ANTENNAE))
		damage += rand(3,7)
	if(user.dna?.check_mutation(HULK))
		damage += rand(3,7)

	if(damage >= 5)
		target.emote("scream")

	target.apply_damage(damage, BRUTE, BODY_ZONE_HEAD)
	user.adjustStaminaLoss(iteration + 5)
	playsound(get_turf(user), "rustle", 50)

	if(prob(33))
		user.visible_message("<span class='danger'>[user] continues noogie'ing [target]!</span>", "<span class='warning'>You continue giving [target] a noogie!</span>", vision_distance=COMBAT_MESSAGE_RANGE, ignored_mobs=target)
		to_chat(target, "<span class='userdanger'>[user] continues giving you a noogie!</span>")

	if(!do_after(user, 1 SECONDS + (iteration * 2), target))
		to_chat(user, "<span class='warning'>You fail to give [target] a noogie!</span>")
		to_chat(target, "<span class='danger'>[user] fails to give you a noogie!</span>")
		return

	iteration++
	noogie_loop(user, target, iteration)

/obj/item/slapper
	name = "slapper"
	// [CELADON-EDIT] - CELADON_COMPONENTS_EMOTE - Эмоции
	// desc = "This is how real men fight." // CELADON-EDIT - ORIGINAL
	desc = "Именно так дерутся настоящие мужчины."
	// [/CELADON-EDIT]
	icon_state = "latexballon"
	item_state = "nothing"
	force = 0
	throwforce = 0
	item_flags = DROPDEL | ABSTRACT
	attack_verb = list("slapped")
	hitsound = 'sound/effects/snap.ogg'
	/// How many smaller table smacks we can do before we're out
	var/table_smacks_left = 3

/obj/item/slapper/attack(mob/living/M, mob/living/carbon/human/user)
	if(ishuman(M))
		var/mob/living/carbon/human/L = M
		if(L && L.dna && L.dna.species)
			L.dna.species.stop_wagging_tail(M)
	user.do_attack_animation(M)

	var/slap_volume = 50
	var/datum/status_effect/offering/kiss_check = M.has_status_effect(STATUS_EFFECT_OFFERING)
	if(kiss_check && istype(kiss_check.offered_item, /obj/item/kisser) && (user in kiss_check.possible_takers))
		// [CELADON-EDIT] - CELADON_COMPONENTS_EMOTE - Эмоции
		// user.visible_message(span_danger("[user] scoffs at [M]'s advance, winds up, and smacks [M.p_them()] hard to the ground!"), // CELADON-EDIT - ORIGINAL
			// span_notice("The nerve! You wind back your hand and smack [M] hard enough to knock [M.p_them()] over!"), // CELADON-EDIT - ORIGINAL
			// span_hear("You hear someone get the everloving shit smacked out of them!"), ignored_mobs = M) // CELADON-EDIT - ORIGINAL
		// to_chat(M, span_userdanger("You see [user] scoff and pull back [user.p_their()] arm, then suddenly you're on the ground with an ungodly ringing in your ears!")) // CELADON-EDIT - ORIGINAL
		user.visible_message(span_danger("[user] издевается над [M]'s, заставляя [M.p_them()] с грохотом упасть на землю!"),
			span_notice("Нервы! Ты отводишь руку и шлепаешь [M] достаточно сильно, чтобы опрокинуть [M.p_them()]!"),
			span_hear("Вы слышите как кого-то шлёпают!"), ignored_mobs = M)
		to_chat(M, span_userdanger("Ты видишь как усмехается [user] и отводишь руку [user.p_their()], иначе рискуешь оказаться на земле с безбожным звоном в ушах!"))
		// [/CELADON-EDIT]
		slap_volume = 120
		SEND_SOUND(M, sound('sound/weapons/flash_ring.ogg'))
		shake_camera(M, 2, 2)
		M.Paralyze(2.5 SECONDS)
		M.confused += 7
		M.adjustStaminaLoss(40)
	else if(user.zone_selected == BODY_ZONE_HEAD || user.zone_selected == BODY_ZONE_PRECISE_MOUTH)
		// [CELADON-EDIT] - CELADON_COMPONENTS_EMOTE - Эмоции
		// user.visible_message(span_danger("[user] slaps [M] in the face!"), // CELADON-EDIT - ORIGINAL
			// span_notice("You slap [M] in the face!"), // CELADON-EDIT - ORIGINAL
			// span_hear("You hear a slap.")) // CELADON-EDIT - ORIGINAL
		user.visible_message(span_danger("[user] ударяет пощёчиной [M] по лицу!"),
			span_notice("Ты шлепаешь [M] по лицу!"),
			span_hear("Вы слышите пощёчину."))
		// [/CELADON-EDIT]
	else
		// user.visible_message(span_danger("[user] slaps [M]!"), // CELADON-EDIT - ORIGINAL
			// span_notice("You slap [M]!"), // CELADON-EDIT - ORIGINAL
			// span_hear("You hear a slap.")) // CELADON-EDIT - ORIGINAL
		user.visible_message(span_danger("[user] шлёпает [M]!"),
			span_notice("Ты шлёпаешь [M]!"),
			span_hear("Вы слышите пощечину."))
		// [/CELADON-EDIT]
	playsound(M, 'sound/weapons/slap.ogg', slap_volume, TRUE, -1)
	return

/obj/item/slapper/on_offered(mob/living/carbon/offerer)
	. = TRUE

	if(!(locate(/mob/living/carbon) in orange(1, offerer)))
		visible_message(span_danger("[offerer] raises [offerer.p_their()] arm, looking around for a high-five, but there's no one around!"), \
			span_warning("You post up, looking for a high-five, but finding no one within range!"), null, 2)
		return

	offerer.visible_message(span_notice("[offerer] raises [offerer.p_their()] arm, looking for a high-five!"), \
		span_notice("You post up, looking for a high-five!"), null, 2)
	offerer.apply_status_effect(STATUS_EFFECT_OFFERING, src, /atom/movable/screen/alert/give/highfive)

/// Yeah broh! This is where we do the high-fiving (or high-tenning :o)
/obj/item/slapper/on_offer_taken(mob/living/carbon/offerer, mob/living/carbon/taker)
	. = TRUE

	var/open_hands_taker
	var/slappers_giver
	for(var/i in taker.held_items) // see how many hands the taker has open for high'ing
		if(isnull(i))
			open_hands_taker++

	if(!open_hands_taker)
		to_chat(taker, span_warning("You can't high-five [offerer] with no open hands!"))
		SEND_SIGNAL(taker, COMSIG_ADD_MOOD_EVENT, "high_five", /datum/mood_event/high_five_full_hand) // not so successful now!
		return

	for(var/i in offerer.held_items)
		var/obj/item/slapper/slap_check = i
		if(istype(slap_check))
			slappers_giver++

	if(slappers_giver >= 2) // we only check this if it's already established the taker has 2+ hands free
		offerer.visible_message(span_notice("[taker] enthusiastically high-tens [offerer]!"), span_nicegreen("Wow! You're high-tenned [taker]!"), span_hear("You hear a sickening sound of flesh hitting flesh!"), ignored_mobs=taker)
		to_chat(taker, span_nicegreen("You give high-tenning [offerer] your all!"))
		playsound(offerer, 'sound/weapons/slap.ogg', 100, TRUE, 1)
		SEND_SIGNAL(offerer, COMSIG_ADD_MOOD_EVENT, "high_five", /datum/mood_event/high_ten)
		SEND_SIGNAL(taker, COMSIG_ADD_MOOD_EVENT, "high_five", /datum/mood_event/high_ten)
	else
		offerer.visible_message(span_notice("[taker] high-fives [offerer]!"), span_nicegreen("All right! You're high-fived by [taker]!"), span_hear("You hear a sickening sound of flesh hitting flesh!"), ignored_mobs=taker)
		to_chat(taker, span_nicegreen("You high-five [offerer]!"))
		playsound(offerer, 'sound/weapons/slap.ogg', 50, TRUE, -1)
		SEND_SIGNAL(offerer, COMSIG_ADD_MOOD_EVENT, "high_five", /datum/mood_event/high_five)
		SEND_SIGNAL(taker, COMSIG_ADD_MOOD_EVENT, "high_five", /datum/mood_event/high_five)
	qdel(src)


/obj/item/kisser
	// [CELADON-EDIT] - CELADON_COMPONENTS_EMOTE - Эмоции
	// name = "kiss" // CELADON-EDIT - ORIGINAL
	name = "поцелуй"
	// [/CELADON-EDIT]
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
	// [CELADON-EDIT] - CELADON_COMPONENTS_EMOTE - Эмоции
	// user.visible_message("<b>[user]</b> blows \a [blown_kiss] at [target]!", span_notice("You blow \a [blown_kiss] at [target]!")) // CELADON-EDIT - ORIGINAL
	user.visible_message("<b>[user]</b> посылает воздушный поцелуй в сторону [target]!", span_notice("Ты посылаешь воздушный поцелуй в сторону [target]!"))
	// [/CELADON-EDIT]

	//Shooting Code:
	blown_kiss.original = target
	blown_kiss.fired_from = user
	blown_kiss.firer = user // don't hit ourself that would be really annoying
	LAZYSET(blown_kiss.impacted, user, TRUE) // just to make sure we don't hit the wearer
	blown_kiss.preparePixelProjectile(target, user)
	blown_kiss.fire()
	qdel(src)

/obj/item/kisser/on_offered(mob/living/carbon/offerer)
	if(!(locate(/mob/living/carbon) in orange(1, offerer)))
		return TRUE

	cheek_kiss = (offerer.zone_selected != BODY_ZONE_PRECISE_MOUTH)
	offerer.visible_message(span_notice("[offerer] leans in slightly, offering a kiss[cheek_kiss ? " on the cheek" : ""]!"),
		span_notice("You lean in slightly, indicating you'd like to offer a kiss[cheek_kiss ? " on the cheek" : ""]!"), null, 2)
	offerer.apply_status_effect(STATUS_EFFECT_OFFERING, src)
	return TRUE

/obj/item/kisser/on_offer_taken(mob/living/carbon/offerer, mob/living/carbon/taker)
	var/obj/projectile/blown_kiss = new kiss_type(get_turf(offerer))
	offerer.visible_message("<b>[offerer]</b> gives [taker] \a [blown_kiss][cheek_kiss ? " on the cheek" : ""]!!", span_notice("You give [taker] \a [blown_kiss][cheek_kiss ? " on the cheek" : ""]!"), ignored_mobs = taker)
	to_chat(taker, span_nicegreen("[offerer] gives you \a [blown_kiss][cheek_kiss ? " on the cheek" : ""]!"))
	offerer.face_atom(taker)
	taker.face_atom(offerer)
	offerer.do_item_attack_animation(taker, used_item=src)
	//We're still firing a shot here because I don't want to deal with some weird edgecase where direct impacting them with the projectile causes it to freak out because there's no angle or something
	blown_kiss.original = taker
	blown_kiss.fired_from = offerer
	blown_kiss.firer = offerer // don't hit ourself that would be really annoying
	LAZYSET(blown_kiss.impacted, offerer, TRUE) // just to make sure we don't hit the wearer
	blown_kiss.preparePixelProjectile(taker, offerer)
	blown_kiss.suppressed = SUPPRESSED_VERY // this also means it's a direct offer
	blown_kiss.fire()
	qdel(src)
	return TRUE // so the core offering code knows to halt

/obj/item/kisser/death
	name = "kiss of death"
	desc = "If looks could kill, they'd be this."
	color = COLOR_BLACK
	kiss_type = /obj/projectile/kiss/death

/obj/projectile/kiss
	name = "kiss"
	icon = 'icons/mob/animal.dmi'
	icon_state = "heart"
	hitsound = 'sound/effects/kiss.ogg'
	hitsound_non_living = 'sound/effects/kiss.ogg'
	pass_flags = PASSTABLE | PASSGLASS | PASSGRILLE
	speed = 1.6
	damage_type = BRUTE
	damage = 0
	nodamage = TRUE // love can't actually hurt you
	armour_penetration = 100 // but if it could, it would cut through even the thickest plate
	flag = "magic"

/obj/projectile/kiss/fire(angle, atom/direct_target)
	if(firer)
		name = "[name] blown by [firer]"
	return ..()

/obj/projectile/kiss/Impact(atom/A)
	if(!nodamage || !isliving(A)) // if we do damage or we hit a nonliving thing, we don't have to worry about a harmless hit because we can't wrongly do damage anyway
		return ..()
	harmless_on_hit(A)
	qdel(src)
	return FALSE
/**
 * To get around shielded hardsuits & such being set off by kisses when they shouldn't, we take a page from hallucination projectiles
 * and simply fake our on hit effects. This lets kisses remain incorporeal without having to make some new trait for this one niche situation.
 * This fake hit only happens if we can deal damage and if we hit a living thing. Otherwise, we just do normal on hit effects.
 */
/obj/projectile/kiss/proc/harmless_on_hit(mob/living/living_target)
	playsound(get_turf(living_target), hitsound, 50, TRUE, -12, ignore_walls = FALSE)
	if(!suppressed)  // direct
		living_target.visible_message(span_danger("[living_target] is hit by \a [src]."), span_userdanger("You're hit by \a [src]!"), vision_distance=COMBAT_MESSAGE_RANGE)

	SEND_SIGNAL(living_target, COMSIG_ADD_MOOD_EVENT, "kiss", /datum/mood_event/kiss, firer, suppressed)
	try_fluster(living_target)

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
			// [CELADON-EDIT] - CELADON_COMPONENTS_EMOTE - Эмоции
			// other_msg = "stumbles slightly, turning a bright red!" // CELADON-EDIT - ORIGINAL
			// self_msg = "You lose control of your limbs for a moment as your blood rushes to your face, turning it bright red!" // CELADON-EDIT - ORIGINAL
			other_msg = "слегка спотыкается, становясь ярко-красным!"
			self_msg = "Вы на мгновение теряете контроль над своими конечностями, когда кровь приливает к лицу, делая его ярко-красным!"
			// [/CELADON-EDIT]
			living_target.confused += (rand(5, 10))
		if(2)
			// [CELADON-EDIT] - CELADON_COMPONENTS_EMOTE - Эмоции
			// other_msg = "stammers softly for a moment before choking on something!" // CELADON-EDIT - ORIGINAL
			// self_msg = "You feel your tongue disappear down your throat as you fight to remember how to make words!" // CELADON-EDIT - ORIGINAL
			// addtimer(CALLBACK(living_target, TYPE_PROC_REF(/atom/movable, say), pick("Uhhh...", "O-oh, uhm...", "I- uhhhhh??", "You too!!", "What?")), rand(0.5 SECONDS, 1.5 SECONDS)) // CELADON-EDIT - ORIGINAL
			other_msg = "тихо заикается на мгновение, прежде чем что-то сказать!"
			self_msg = "Вы чувствуете, как ваш язык исчезает в горле, пока вы пытаетесь вспомнить, как произносить слова!"
			addtimer(CALLBACK(living_target, TYPE_PROC_REF(/atom/movable, say), pick("Ухх...", "О-ох, хм...", "Я- ухххх..", "Что?")), rand(0.5 SECONDS, 1.5 SECONDS))
			// [/CELADON-EDIT]
			living_target.stuttering += rand(5, 15)
		if(3)
			// [CELADON-EDIT] - CELADON_COMPONENTS_EMOTE - Эмоции
			// other_msg = "locks up with a stunned look on [living_target.p_their()] face, staring at [firer ? firer : "the ceiling"]!" // CELADON-EDIT - ORIGINAL
			// self_msg = "Your brain completely fails to process what just happened, leaving you rooted in place staring at [firer ? "[firer]" : "the ceiling"] for what feels like an eternity!" // CELADON-EDIT - ORIGINAL
			other_msg = "пытается откинуть взгляд, при виде [living_target.p_their()], глядя на [firer ? firer : "потолок"]!"
			self_msg = "Твой мозг совершенно не в состоянии обработать то, что только что произошло. Ты застываешь на месте, глядя на [firer ? "[firer]" : "потолок"] с ощущением что прошла вечность!"
			// [/CELADON-EDIT]
			living_target.face_atom(firer)
			living_target.Stun(rand(3 SECONDS, 8 SECONDS))

	living_target.visible_message("<b>[living_target]</b> [other_msg]", "<span class='userdanger'>Whoa! [self_msg]<span>")

/obj/projectile/kiss/on_hit(atom/target, blocked, pierce_hit)
	def_zone = BODY_ZONE_HEAD // let's keep it PG, people
	. = ..()
	if(isliving(target))
		SEND_SIGNAL(target, COMSIG_ADD_MOOD_EVENT, "kiss", /datum/mood_event/kiss, firer, suppressed)
		try_fluster(target)

/obj/projectile/kiss/death
	name = "kiss of death"
	nodamage = FALSE // okay i kinda lied about love not being able to hurt you
	damage = 35
	color = COLOR_BLACK

/obj/projectile/kiss/death/on_hit(atom/target, blocked, pierce_hit)
	. = ..()
	if(!iscarbon(target))
		return
	var/mob/living/carbon/heartbreakee = target
	var/obj/item/organ/heart/dont_go_breakin_my_heart = heartbreakee.getorganslot(ORGAN_SLOT_HEART)
	dont_go_breakin_my_heart.applyOrganDamage(999)

//
//the Losing Game
//
/obj/item/circlegame
	name = "circled hand"
	desc = "If somebody looks at this while it's below your waist, you get to bop them."
	icon_state = "madeyoulook"
	force = 0
	throwforce = 0
	item_flags = DROPDEL | ABSTRACT
	attack_verb = list("bopped")

/obj/item/circlegame/Initialize()
	. = ..()
	var/mob/living/owner = loc
	if(!istype(owner))
		return
	RegisterSignal(owner, COMSIG_PARENT_EXAMINE, PROC_REF(ownerExamined))

/obj/item/circlegame/Destroy()
	var/mob/owner = loc
	if(!istype(owner))
		return ..()
	UnregisterSignal(owner, COMSIG_PARENT_EXAMINE)
	. = ..()

/// Stage 1: The mistake is made
/obj/item/circlegame/proc/ownerExamined(mob/living/owner, mob/living/sucker)
	SIGNAL_HANDLER

	if(!istype(sucker) || !in_range(owner, sucker))
		return
	addtimer(CALLBACK(src, PROC_REF(waitASecond), owner, sucker), 4)

/// Stage 2: Fear sets in
/obj/item/circlegame/proc/waitASecond(mob/living/owner, mob/living/sucker)
	if(QDELETED(sucker) || QDELETED(src) || QDELETED(owner))
		return

	if(owner == sucker) // big mood
		to_chat(owner, "<span class='danger'>Wait a second... you just looked at your own [src.name]!</span>")
		addtimer(CALLBACK(src, PROC_REF(selfGottem), owner), 10)
	else
		to_chat(sucker, "<span class='danger'>Wait a second... was that a-</span>")
		addtimer(CALLBACK(src, PROC_REF(GOTTEM), owner, sucker), 6)

/// Stage 3A: We face our own failures
/obj/item/circlegame/proc/selfGottem(mob/living/owner)
	if(QDELETED(src) || QDELETED(owner))
		return

	playsound(get_turf(owner), 'sound/effects/hit_punch.ogg', 50, TRUE, -1)
	owner.visible_message("<span class='danger'>[owner] shamefully bops [owner.p_them()]self with [owner.p_their()] [src.name].</span>", "<span class='userdanger'>You shamefully bop yourself with your [src.name].</span>", \
		"<span class='hear'>You hear a dull thud!</span>")
	log_combat(owner, owner, "bopped", src.name, "(self)")
	owner.do_attack_animation(owner)
	owner.apply_damage(100, STAMINA)
	owner.Knockdown(10)
	qdel(src)

/// Stage 3B: We face our reckoning (unless we moved away or they're incapacitated)
/obj/item/circlegame/proc/GOTTEM(mob/living/owner, mob/living/sucker)
	if(QDELETED(sucker))
		return

	if(QDELETED(src) || QDELETED(owner))
		to_chat(sucker, "<span class='warning'>Nevermind... must've been your imagination...</span>")
		return

	if(!in_range(owner, sucker) || !(owner.mobility_flags & MOBILITY_USE))
		to_chat(sucker, "<span class='notice'>Phew... you moved away before [owner] noticed you saw [owner.p_their()] [src.name]...</span>")
		return

	to_chat(owner, "<span class='warning'>[sucker] looks down at your [src.name] before trying to avert [sucker.p_their()] eyes, but it's too late!</span>")
	to_chat(sucker, "<span class='danger'><b>[owner] sees the fear in your eyes as you try to look away from [owner.p_their()] [src.name]!</b></span>")

	owner.face_atom(sucker)
	if(owner.client)
		owner.client.give_award(/datum/award/achievement/misc/gottem, owner) // then everybody clapped

	playsound(get_turf(owner), 'sound/effects/hit_punch.ogg', 50, TRUE, -1)
	owner.do_attack_animation(sucker)

	if(HAS_TRAIT(owner, TRAIT_HULK))
		owner.visible_message("<span class='danger'>[owner] bops [sucker] with [owner.p_their()] [src.name] much harder than intended, sending [sucker.p_them()] flying!</span>", \
			"<span class='danger'>You bop [sucker] with your [src.name] much harder than intended, sending [sucker.p_them()] flying!</span>", "<span class='hear'>You hear a sickening sound of flesh hitting flesh!</span>", ignored_mobs=list(sucker))
		to_chat(sucker, "<span class='userdanger'>[owner] bops you incredibly hard with [owner.p_their()] [src.name], sending you flying!</span>")
		sucker.apply_damage(50, STAMINA)
		sucker.Knockdown(50)
		log_combat(owner, sucker, "bopped", src.name, "(setup- Hulk)")
		var/atom/throw_target = get_edge_target_turf(sucker, owner.dir)
		sucker.throw_at(throw_target, 6, 3, owner)
	else
		owner.visible_message("<span class='danger'>[owner] bops [sucker] with [owner.p_their()] [src.name]!</span>", "<span class='danger'>You bop [sucker] with your [src.name]!</span>", \
			"<span class='hear'>You hear a dull thud!</span>", ignored_mobs=list(sucker))
		sucker.apply_damage(15, STAMINA)
		log_combat(owner, sucker, "bopped", src.name, "(setup)")
		to_chat(sucker, "<span class='userdanger'>[owner] bops you with [owner.p_their()] [src.name]!</span>")
	qdel(src)
