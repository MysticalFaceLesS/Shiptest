/obj/item/nullrod/tribal_knife
	icon_state = "crysknife"
	item_state = "crysknife"
	lefthand_file = 'icons/mob/inhands/weapons/swords_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/swords_righthand.dmi'
	name = "arrhythmic knife"
	w_class = WEIGHT_CLASS_HUGE
	desc = "They say fear is the true mind killer, but stabbing them in the head works too. Honour compels you to not sheathe it once drawn."
	sharpness = IS_SHARP
	slot_flags = null
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	item_flags = SLOWS_WHILE_IN_HAND

/obj/item/nullrod/tribal_knife/Initialize(mapload)
	. = ..()
	START_PROCESSING(SSobj, src)
	AddComponent(/datum/component/butchering, 50, 100)

/obj/item/nullrod/tribal_knife/Destroy()
	STOP_PROCESSING(SSobj, src)
	. = ..()

/obj/item/nullrod/tribal_knife/process()
	slowdown = rand(-2, 2)

/obj/item/melee/baseball_bat/homerun/central_command
	name = "тактическая бита Флота NanoTrasen"
	desc = "Выдвижная тактическая бита Центрального Командования Nanotrasen. \
	В официальных документах эта бита проходит под элегантным названием \"Высокоскоростная система доставки СРП\". \
	Выдаваясь только самым верным и эффективным офицерам NanoTrasen, это оружие является одновременно символом статуса \
	и инструментом высшего правосудия."
	icon = 'mod_celadon/_storge_icons/icons/items/obj/centcom.dmi'
	lefthand_file = 'mod_celadon/_storge_icons/icons/items/overlay/left_hand/left_centcom.dmi'
	righthand_file = 'mod_celadon/_storge_icons/icons/items/overlay/right_hand/right_centcom.dmi'
	w_class = WEIGHT_CLASS_SMALL

	// can_deflect = FALSE
	// homerun_always_charged = TRUE
	var/on = FALSE
	/// Force when concealed
	force = 5
	/// Force when extended
	var/force_on = 30
	/// Item state when concealed
	item_state = "centcom_bat_0"
	/// Item state when extended
	var/item_state_on = "centcom_bat_1"
	/// Icon state when concealed
	icon_state = "centcom_bat_0"
	/// Icon state when extended
	var/icon_state_on = "centcom_bat_1"
	/// Sound to play when concealing or extending
	var/extend_sound = 'sound/weapons/batonextend.ogg'
	/// Attack verbs when concealed (created on Initialize)
	attack_verb = list("hit", "poked")
	/// Attack verbs when extended (created on Initialize)
	var/list/attack_verb_on = list("smacked", "struck", "cracked", "beaten")
	armour_penetration = 100
	throwforce = 25

/obj/item/melee/baseball_bat/homerun/central_command/srt
	name = "тактическая бита ГСН"
	desc = "Выдвижная тактическая бита Центрального Командования Nanotrasen. Скорее всего, к этому моменту командование станции уже осознало, что их коленные чашечки не переживут эту встречу."
	item_state = "srt_bat_0"
	item_state_on = "srt_bat_1"
	icon_state = "srt_bat_0"
	icon_state_on = "srt_bat_1"

/obj/item/melee/baseball_bat/homerun/central_command/update_icon_state()
	icon_state = on ? icon_state_on : initial(icon_state)
	item_state = on ? item_state_on : initial(item_state)
	return ..()

/obj/item/melee/baseball_bat/homerun/central_command/proc/toggle(mob/living/user)
	on = !on
	slot_flags = on ? NONE : ITEM_SLOT_BELT
	force = on ? force_on : initial(force)
	attack_verb = on ? attack_verb_on : initial(attack_verb)
	w_class = on ? WEIGHT_CLASS_HUGE : WEIGHT_CLASS_SMALL
	homerun_able = on
	homerun_ready = on
	update_icon(UPDATE_ICON_STATE)
	// update_equipped_item()
	playsound(loc, extend_sound, 50, TRUE)
	add_fingerprint(user)
	if(on)
		to_chat(user, span_userdanger("Вы активировали [name] - время для правосудия!"))
	else
		to_chat(user, span_notice("Вы деактивировали [name]."))

/obj/item/melee/baseball_bat/homerun/central_command/pickup(mob/living/user)
	if(!HAS_TRAIT(user, TRAIT_MINDSHIELD))
		// user.Weaken(10 SECONDS)
		user.dropItemToGround(src, force = TRUE)
		to_chat(user, "<span class='cultlarge'>\"Это - оружие истинного правосудия. Тебе не дано обуздать его мощь.\"</span>")
		if(ishuman(user))
			var/mob/living/carbon/human/H = user
			H.apply_damage(rand(force/2, force), BRUTE, pick(BODY_ZONE_L_ARM, BODY_ZONE_R_ARM))
		else
			user.adjustBruteLoss(rand(force/2, force))
		return FALSE
	return ..()

/obj/item/melee/baseball_bat/homerun/central_command/attack_self(mob/user)
	toggle(user)
