
/obj/item/bodypart/chest
	name = BODY_ZONE_CHEST
	desc = "It's impolite to stare at a person's chest."
	icon_state = "human_chest_m"
	max_damage = 200
	body_zone = BODY_ZONE_CHEST
	body_part = CHEST
	plaintext_zone = "chest"
	px_x = 0
	px_y = 0
	stam_damage_coeff = 1
	max_stamina_damage = 120
	is_dimorphic = TRUE
	var/obj/item/cavity_item
	var/acceptable_bodytype = BODYTYPE_HUMANOID

/obj/item/bodypart/chest/can_dismember()
	if(owner?.stat <= HARD_CRIT)
		return FALSE
	return ..()

/obj/item/bodypart/chest/Destroy()
	QDEL_NULL(cavity_item)
	return ..()

/obj/item/bodypart/chest/drop_organs(mob/user, violent_removal)
	if(cavity_item)
		cavity_item.forceMove(drop_location())
		cavity_item = null
	..()

/obj/item/bodypart/chest/monkey
	icon = 'icons/mob/animal_parts.dmi'
	icon_state = "default_monkey_chest"
	limb_id = SPECIES_MONKEY
	animal_origin = MONKEY_BODYPART

/obj/item/bodypart/chest/alien
	icon = 'icons/mob/animal_parts.dmi'
	icon_state = "alien_chest"
	dismemberable = 0
	max_damage = 500
	animal_origin = ALIEN_BODYPART

/obj/item/bodypart/chest/devil
	dismemberable = 0
	max_damage = 5000
	animal_origin = DEVIL_BODYPART

/obj/item/bodypart/chest/larva
	icon = 'icons/mob/animal_parts.dmi'
	icon_state = "larva_chest"
	dismemberable = 0
	max_damage = 50
	animal_origin = LARVA_BODYPART

/obj/item/bodypart/l_arm
	name = "left arm"
	desc = "Did you know that the word 'sinister' stems originally from the \
		Latin 'sinestra' (left hand), because the left hand was supposed to \
		be possessed by the devil? This arm appears to be possessed by no \
		one though."
	icon_state = "human_l_arm"
	attack_verb = list("slaps", "punches")
	max_damage = 50
	max_stamina_damage = 50
	body_zone = BODY_ZONE_L_ARM
	body_part = ARM_LEFT
	plaintext_zone = "left arm"
	aux_zone = BODY_ZONE_PRECISE_L_HAND
	aux_layer = BODYPARTS_HIGH_LAYER
	body_damage_coeff = 0.75
	held_index = 1
	px_x = -6
	px_y = 0
	can_be_disabled = TRUE


/obj/item/bodypart/l_arm/set_owner(new_owner)
	. = ..()
	if(. == FALSE)
		return
	var/mob/living/carbon/owner = null
	if(owner)
		if(HAS_TRAIT(owner, TRAIT_PARALYSIS_L_ARM))
			ADD_TRAIT(src, TRAIT_PARALYSIS, TRAIT_PARALYSIS_L_ARM)
			RegisterSignal(owner, SIGNAL_REMOVETRAIT(TRAIT_PARALYSIS_L_ARM), PROC_REF(on_owner_paralysis_loss))
		else
			REMOVE_TRAIT(src, TRAIT_PARALYSIS, TRAIT_PARALYSIS_L_ARM)
			RegisterSignal(owner, SIGNAL_ADDTRAIT(TRAIT_PARALYSIS_L_ARM), PROC_REF(on_owner_paralysis_gain))
	if(.)
		var/mob/living/carbon/old_owner = .
		if(HAS_TRAIT(old_owner, TRAIT_PARALYSIS_L_ARM))
			UnregisterSignal(old_owner, SIGNAL_REMOVETRAIT(TRAIT_PARALYSIS_L_ARM))
			if(!owner || !HAS_TRAIT(owner, TRAIT_PARALYSIS_L_ARM))
				REMOVE_TRAIT(src, TRAIT_PARALYSIS, TRAIT_PARALYSIS_L_ARM)
		else
			UnregisterSignal(old_owner, SIGNAL_ADDTRAIT(TRAIT_PARALYSIS_L_ARM))


///Proc to react to the owner gaining the TRAIT_PARALYSIS_L_ARM trait.
/obj/item/bodypart/l_arm/proc/on_owner_paralysis_gain(mob/living/carbon/source)
	SIGNAL_HANDLER
	ADD_TRAIT(src, TRAIT_PARALYSIS, TRAIT_PARALYSIS_L_ARM)
	UnregisterSignal(owner, SIGNAL_ADDTRAIT(TRAIT_PARALYSIS_L_ARM))
	RegisterSignal(owner, SIGNAL_REMOVETRAIT(TRAIT_PARALYSIS_L_ARM), PROC_REF(on_owner_paralysis_loss))


///Proc to react to the owner losing the TRAIT_PARALYSIS_L_ARM trait.
/obj/item/bodypart/l_arm/proc/on_owner_paralysis_loss(mob/living/carbon/source)
	SIGNAL_HANDLER
	REMOVE_TRAIT(src, TRAIT_PARALYSIS, TRAIT_PARALYSIS_L_ARM)
	UnregisterSignal(owner, SIGNAL_REMOVETRAIT(TRAIT_PARALYSIS_L_ARM))
	RegisterSignal(owner, SIGNAL_ADDTRAIT(TRAIT_PARALYSIS_L_ARM), PROC_REF(on_owner_paralysis_gain))


/obj/item/bodypart/l_arm/set_disabled(new_disabled)
	. = ..()
	if(isnull(.) || !owner)
		return

	if(!.)
		if(bodypart_disabled)
			owner.set_usable_hands(owner.usable_hands - 1)
			if(owner.stat < UNCONSCIOUS)
				to_chat(owner, "<span class='userdanger'>Your lose control of your [name]!</span>")
			if(held_index)
				owner.dropItemToGround(owner.get_item_for_held_index(held_index))
	else if(!bodypart_disabled)
		owner.set_usable_hands(owner.usable_hands + 1)

	if(owner.hud_used)
		var/atom/movable/screen/inventory/hand/hand_screen_object = owner.hud_used.hand_slots["[held_index]"]
		hand_screen_object?.update_appearance()


/obj/item/bodypart/l_arm/monkey
	icon = 'icons/mob/animal_parts.dmi'
	icon_state = "default_monkey_l_arm"
	limb_id = SPECIES_MONKEY
	animal_origin = MONKEY_BODYPART
	px_x = -5
	px_y = -3

/obj/item/bodypart/l_arm/alien
	icon = 'icons/mob/animal_parts.dmi'
	icon_state = "alien_l_arm"
	px_x = 0
	px_y = 0
	dismemberable = FALSE
	can_be_disabled = FALSE
	max_damage = 100
	animal_origin = ALIEN_BODYPART

/obj/item/bodypart/l_arm/devil
	dismemberable = FALSE
	can_be_disabled = FALSE
	max_damage = 5000
	animal_origin = DEVIL_BODYPART

/obj/item/bodypart/r_arm
	name = "right arm"
	desc = "Over 87% of humans are right handed. That figure is much lower \
		among humans missing their right arm."
	icon_state = "human_r_arm"
	attack_verb = list("slaps", "punches")
	max_damage = 50
	body_zone = BODY_ZONE_R_ARM
	body_part = ARM_RIGHT
	plaintext_zone = "right arm"
	aux_zone = BODY_ZONE_PRECISE_R_HAND
	aux_layer = BODYPARTS_HIGH_LAYER
	body_damage_coeff = 0.75
	held_index = 2
	px_x = 6
	px_y = 0
	max_stamina_damage = 50
	can_be_disabled = TRUE


/obj/item/bodypart/r_arm/set_owner(new_owner)
	. = ..()
	if(. == FALSE)
		return
	var/mob/living/carbon/owner = null
	if(owner)
		if(HAS_TRAIT(owner, TRAIT_PARALYSIS_R_ARM))
			ADD_TRAIT(src, TRAIT_PARALYSIS, TRAIT_PARALYSIS_R_ARM)
			RegisterSignal(owner, SIGNAL_REMOVETRAIT(TRAIT_PARALYSIS_R_ARM), PROC_REF(on_owner_paralysis_loss))
		else
			REMOVE_TRAIT(src, TRAIT_PARALYSIS, TRAIT_PARALYSIS_R_ARM)
			RegisterSignal(owner, SIGNAL_ADDTRAIT(TRAIT_PARALYSIS_R_ARM), PROC_REF(on_owner_paralysis_gain))
	if(.)
		var/mob/living/carbon/old_owner = .
		if(HAS_TRAIT(old_owner, TRAIT_PARALYSIS_R_ARM))
			UnregisterSignal(old_owner, SIGNAL_REMOVETRAIT(TRAIT_PARALYSIS_R_ARM))
			if(!owner || !HAS_TRAIT(owner, TRAIT_PARALYSIS_R_ARM))
				REMOVE_TRAIT(src, TRAIT_PARALYSIS, TRAIT_PARALYSIS_R_ARM)
		else
			UnregisterSignal(old_owner, SIGNAL_ADDTRAIT(TRAIT_PARALYSIS_R_ARM))


///Proc to react to the owner gaining the TRAIT_PARALYSIS_R_ARM trait.
/obj/item/bodypart/r_arm/proc/on_owner_paralysis_gain(mob/living/carbon/source)
	SIGNAL_HANDLER
	ADD_TRAIT(src, TRAIT_PARALYSIS, TRAIT_PARALYSIS_R_ARM)
	UnregisterSignal(owner, SIGNAL_ADDTRAIT(TRAIT_PARALYSIS_R_ARM))
	RegisterSignal(owner, SIGNAL_REMOVETRAIT(TRAIT_PARALYSIS_R_ARM), PROC_REF(on_owner_paralysis_loss))


///Proc to react to the owner losing the TRAIT_PARALYSIS_R_ARM trait.
/obj/item/bodypart/r_arm/proc/on_owner_paralysis_loss(mob/living/carbon/source)
	SIGNAL_HANDLER
	REMOVE_TRAIT(src, TRAIT_PARALYSIS, TRAIT_PARALYSIS_R_ARM)
	UnregisterSignal(owner, SIGNAL_REMOVETRAIT(TRAIT_PARALYSIS_R_ARM))
	RegisterSignal(owner, SIGNAL_ADDTRAIT(TRAIT_PARALYSIS_R_ARM), PROC_REF(on_owner_paralysis_gain))


/obj/item/bodypart/r_arm/set_disabled(new_disabled)
	. = ..()
	if(isnull(.) || !owner)
		return

	if(!.)
		if(bodypart_disabled)
			owner.set_usable_hands(owner.usable_hands - 1)
			if(owner.stat < UNCONSCIOUS)
				to_chat(owner, "<span class='userdanger'>Your lose control of your [name]!</span>")
			if(held_index)
				owner.dropItemToGround(owner.get_item_for_held_index(held_index))
	else if(!bodypart_disabled)
		owner.set_usable_hands(owner.usable_hands + 1)

	if(owner.hud_used)
		var/atom/movable/screen/inventory/hand/hand_screen_object = owner.hud_used.hand_slots["[held_index]"]
		hand_screen_object?.update_appearance()


/obj/item/bodypart/r_arm/monkey
	icon = 'icons/mob/animal_parts.dmi'
	icon_state = "default_monkey_r_arm"
	limb_id = SPECIES_MONKEY
	animal_origin = MONKEY_BODYPART
	px_x = 5
	px_y = -3

/obj/item/bodypart/r_arm/alien
	icon = 'icons/mob/animal_parts.dmi'
	icon_state = "alien_r_arm"
	px_x = 0
	px_y = 0
	dismemberable = FALSE
	can_be_disabled = FALSE
	max_damage = 100
	animal_origin = ALIEN_BODYPART

/obj/item/bodypart/r_arm/devil
	dismemberable = FALSE
	can_be_disabled = FALSE
	max_damage = 5000
	animal_origin = DEVIL_BODYPART

/obj/item/bodypart/leg/left
	name = "left leg"
	desc = "Some athletes prefer to tie their left shoelaces first for good \
		luck. In this instance, it probably would not have helped."
	icon_state = "human_l_leg"
	attack_verb = list("kicks", "stomps")
	max_damage = 50
	body_zone = BODY_ZONE_L_LEG
	body_part = LEG_LEFT
	plaintext_zone = "left leg"
	body_damage_coeff = 0.75
	px_x = -2
	px_y = 12
	max_stamina_damage = 50
	can_be_disabled = TRUE


/obj/item/bodypart/leg/left/set_owner(new_owner)
	. = ..()
	if(. == FALSE)
		return
	if(owner)
		if(HAS_TRAIT(owner, TRAIT_PARALYSIS_L_LEG))
			ADD_TRAIT(src, TRAIT_PARALYSIS, TRAIT_PARALYSIS_L_LEG)
			RegisterSignal(owner, SIGNAL_REMOVETRAIT(TRAIT_PARALYSIS_L_LEG), PROC_REF(on_owner_paralysis_loss))
		else
			REMOVE_TRAIT(src, TRAIT_PARALYSIS, TRAIT_PARALYSIS_L_LEG)
			RegisterSignal(owner, SIGNAL_ADDTRAIT(TRAIT_PARALYSIS_L_LEG), PROC_REF(on_owner_paralysis_gain))
	if(.)
		var/mob/living/carbon/old_owner = .
		if(HAS_TRAIT(old_owner, TRAIT_PARALYSIS_L_LEG))
			UnregisterSignal(old_owner, SIGNAL_REMOVETRAIT(TRAIT_PARALYSIS_L_LEG))
			if(!owner || !HAS_TRAIT(owner, TRAIT_PARALYSIS_L_LEG))
				REMOVE_TRAIT(src, TRAIT_PARALYSIS, TRAIT_PARALYSIS_L_LEG)
		else
			UnregisterSignal(old_owner, SIGNAL_ADDTRAIT(TRAIT_PARALYSIS_L_LEG))


///Proc to react to the owner gaining the TRAIT_PARALYSIS_L_LEG trait.
/obj/item/bodypart/leg/left/proc/on_owner_paralysis_gain(mob/living/carbon/source)
	SIGNAL_HANDLER
	ADD_TRAIT(src, TRAIT_PARALYSIS, TRAIT_PARALYSIS_L_LEG)
	UnregisterSignal(owner, SIGNAL_ADDTRAIT(TRAIT_PARALYSIS_L_LEG))
	RegisterSignal(owner, SIGNAL_REMOVETRAIT(TRAIT_PARALYSIS_L_LEG), PROC_REF(on_owner_paralysis_loss))


///Proc to react to the owner losing the TRAIT_PARALYSIS_L_LEG trait.
/obj/item/bodypart/leg/left/proc/on_owner_paralysis_loss(mob/living/carbon/source)
	SIGNAL_HANDLER
	REMOVE_TRAIT(src, TRAIT_PARALYSIS, TRAIT_PARALYSIS_L_LEG)
	UnregisterSignal(owner, SIGNAL_REMOVETRAIT(TRAIT_PARALYSIS_L_LEG))
	RegisterSignal(owner, SIGNAL_ADDTRAIT(TRAIT_PARALYSIS_L_LEG), PROC_REF(on_owner_paralysis_gain))


/obj/item/bodypart/leg/left/set_disabled(new_disabled)
	. = ..()
	if(isnull(.) || !owner)
		return

	if(!.)
		if(bodypart_disabled)
			owner.set_usable_legs(owner.usable_legs - 1)
			if(owner.stat < UNCONSCIOUS)
				to_chat(owner, "<span class='userdanger'>Your lose control of your [name]!</span>")
	else if(!bodypart_disabled)
		owner.set_usable_legs(owner.usable_legs + 1)


/obj/item/bodypart/leg/left/monkey
	icon = 'icons/mob/animal_parts.dmi'
	icon_state = "default_monkey_l_leg"
	limb_id = SPECIES_MONKEY
	animal_origin = MONKEY_BODYPART
	px_y = 4

/obj/item/bodypart/leg/left/alien
	icon = 'icons/mob/animal_parts.dmi'
	icon_state = "alien_l_leg"
	px_x = 0
	px_y = 0
	dismemberable = FALSE
	can_be_disabled = FALSE
	max_damage = 100
	animal_origin = ALIEN_BODYPART

/obj/item/bodypart/leg/left/devil
	dismemberable = FALSE
	can_be_disabled = FALSE
	max_damage = 5000
	animal_origin = DEVIL_BODYPART

/obj/item/bodypart/leg/right
	name = "right leg"
	desc = "You put your right leg in, your right leg out. In, out, in, out, \
		shake it all about. And apparently then it detaches.\n\
		The hokey pokey has certainly changed a lot since space colonisation."
	// alternative spellings of 'pokey' are available
	icon_state = "human_r_leg"
	attack_verb = list("kicks", "stomps")
	max_damage = 50
	body_zone = BODY_ZONE_R_LEG
	body_part = LEG_RIGHT
	plaintext_zone = "right leg"
	body_damage_coeff = 0.75
	px_x = 2
	px_y = 12
	max_stamina_damage = 50
	can_be_disabled = TRUE


/obj/item/bodypart/leg/right/set_owner(new_owner)
	. = ..()
	if(. == FALSE)
		return
	if(owner)
		if(HAS_TRAIT(owner, TRAIT_PARALYSIS_R_LEG))
			ADD_TRAIT(src, TRAIT_PARALYSIS, TRAIT_PARALYSIS_R_LEG)
			RegisterSignal(owner, SIGNAL_REMOVETRAIT(TRAIT_PARALYSIS_R_LEG), PROC_REF(on_owner_paralysis_loss))
		else
			REMOVE_TRAIT(src, TRAIT_PARALYSIS, TRAIT_PARALYSIS_R_LEG)
			RegisterSignal(owner, SIGNAL_ADDTRAIT(TRAIT_PARALYSIS_R_LEG), PROC_REF(on_owner_paralysis_gain))
	if(.)
		var/mob/living/carbon/old_owner = .
		if(HAS_TRAIT(old_owner, TRAIT_PARALYSIS_R_LEG))
			UnregisterSignal(old_owner, SIGNAL_REMOVETRAIT(TRAIT_PARALYSIS_R_LEG))
			if(!owner || !HAS_TRAIT(owner, TRAIT_PARALYSIS_R_LEG))
				REMOVE_TRAIT(src, TRAIT_PARALYSIS, TRAIT_PARALYSIS_R_LEG)
		else
			UnregisterSignal(old_owner, SIGNAL_ADDTRAIT(TRAIT_PARALYSIS_R_LEG))


///Proc to react to the owner gaining the TRAIT_PARALYSIS_R_LEG trait.
/obj/item/bodypart/leg/right/proc/on_owner_paralysis_gain(mob/living/carbon/source)
	SIGNAL_HANDLER
	ADD_TRAIT(src, TRAIT_PARALYSIS, TRAIT_PARALYSIS_R_LEG)
	UnregisterSignal(owner, SIGNAL_ADDTRAIT(TRAIT_PARALYSIS_R_LEG))
	RegisterSignal(owner, SIGNAL_REMOVETRAIT(TRAIT_PARALYSIS_R_LEG), PROC_REF(on_owner_paralysis_loss))


///Proc to react to the owner losing the TRAIT_PARALYSIS_R_LEG trait.
/obj/item/bodypart/leg/right/proc/on_owner_paralysis_loss(mob/living/carbon/source)
	SIGNAL_HANDLER
	REMOVE_TRAIT(src, TRAIT_PARALYSIS, TRAIT_PARALYSIS_R_LEG)
	UnregisterSignal(owner, SIGNAL_REMOVETRAIT(TRAIT_PARALYSIS_R_LEG))
	RegisterSignal(owner, SIGNAL_ADDTRAIT(TRAIT_PARALYSIS_R_LEG), PROC_REF(on_owner_paralysis_gain))


/obj/item/bodypart/leg/right/set_disabled(new_disabled)
	. = ..()
	if(isnull(.) || !owner)
		return

	if(!.)
		if(bodypart_disabled)
			owner.set_usable_legs(owner.usable_legs - 1)
			if(owner.stat < UNCONSCIOUS)
				to_chat(owner, "<span class='userdanger'>Your lose control of your [name]!</span>")
	else if(!bodypart_disabled)
		owner.set_usable_legs(owner.usable_legs + 1)


/obj/item/bodypart/leg/right/monkey
	icon = 'icons/mob/animal_parts.dmi'
	icon_state = "default_monkey_r_leg"
	limb_id = SPECIES_MONKEY
	animal_origin = MONKEY_BODYPART
	px_y = 4

/obj/item/bodypart/leg/right/alien
	icon = 'icons/mob/animal_parts.dmi'
	icon_state = "alien_r_leg"
	px_x = 0
	px_y = 0
	dismemberable = FALSE
	can_be_disabled = FALSE
	max_damage = 100
	animal_origin = ALIEN_BODYPART

/obj/item/bodypart/leg/right/devil
	dismemberable = FALSE
	can_be_disabled = FALSE
	max_damage = 5000
	animal_origin = DEVIL_BODYPART


/* до лучших времён
/obj/item/bodypart/tail
	name = "tail"
	desc = "tail"
	//icon =
	//husk_icon	??
	//husk_type	??
	//static_icon =
	//icon_state =
	max_damage = 30
	body_zone = BODY_ZONE_TAIL
	body_part = TAIL
	max_stamina_damage = 20		//а скока нада ???
	can_be_disabled = TRUE
	plaintext_zone = "tail"
	bone_break_threshold = 25

/obj/item/bodypart/tail/examine(mob/user)
	. = ..()
	if(brute_dam > DAMAGE_PRECISION)
		. += "<span class='warning'>This tail has [brute_dam > 15 ? "severe" : "minor"] bruising.</span>"
	if(burn_dam > DAMAGE_PRECISION)
		. += "<span class='warning'>This tail has [burn_dam > 15 ? "severe" : "minor"] burns.</span>"

/obj/item/bodypart/tail/tajaran
	name = "tajaran tail"
	desc = "tajaran tail"
	limb_id = SPECIES_TAJARAN
var/timer_for_bone_in_the_tail = null

/obj/item/bodypart/tail/tajaran/set_disabled(new_disabled) //если отрубили/оторвали/украли хвост
	. = ..()					//////////////////////////////////////////////////////////////////////////////
	if(isnull(.) || !owner)		//																			//
		return					//   ЧЁРНАЯ МАГИЯ, КОТОРАЯ СМОТРИТ НА КОД РОДИТЕЛЯ И ГОВОРИТ "всё гуд, сэр"	//
	if(!.)						//																			//
		if(bodypart_disabled)	//////////////////////////////////////////////////////////////////////////////
			owner.add_movespeed_modifier(/datum/movespeed_modifier/disabled_tail)							//насылаем на таяранскую жопу дебафы: толстую жопу и замедление на 30%
			Loop_Dizzy_and_etc(50)																			//штормизм/шатунизм/страшное похмелье, которое будет продолжаться очень много лет
			SEND_SIGNAL(owner, COMSIG_ADD_MOOD_EVENT, "dismembed_tail", /datum/mood_event/dismembed_tail)	//проклятье настроения в виде "ПЕЙН, У МЕНЯ НЕТ ХВОСТА!!"
			if(owner.stat < UNCONSCIOUS)
				to_chat(owner, "<span class='userdanger'>YOUR TAIL!!!! ITS GONE!!!!p</span>")
	else if(!bodypart_disabled)														//если хвост решил вернуться
		owner.remove_movespeed_modifier(/datum/movespeed_modifier/disabled_tail)	//убираем дебаф толстой и неуклюжей жопы
		SEND_SIGNAL(owner, COMSIG_CLEAR_MOOD_EVENT, "dismembed_tail")				//убираем проклятье настроения

/obj/item/bodypart/tail/tajaran/break_bone()	//если сломался хвост
	. = ..()				//////////////////////////////
	if(isnull(.) || !owner)	//	всё таже чёрная магия	//
		return				//////////////////////////////

	if(bone_status == BONE_FLAG_BROKEN)		//если хвост сломан
		var/duration = pick(200,300,350,400,450,500,550,600,700) //выбираем время ("200" = 20 SECONDS)
		timer_for_bone_in_the_tail = addtimer(CALLBACK(owner, PROC_REF(shake_and_pain)), duration, TIMER_STOPPABLE | TIMER_LOOP)//и насылаем проклятье плаксы
		Loop_Dizzy_and_etc(10)				//а также похмелье на 10 иттераций по 5-15 секунд
	else
		deltimer(timer_for_bone_in_the_tail)

/obj/item/bodypart/tail/tajaran/proc/shake_and_pain()
	owner.emote(pick("scream", "cry")) //плачем/орём, от того что хвост сломан
	owner.Knockdown(10) //падаем от дизбаланса (вроде как, число в скобках не влияет ни на что, а если и влияет, то это легко обходится. должна быть 1 секунда)
	owner.adjustStaminaLoss(pick(5,10,15)) //хз скока нада

/obj/item/bodypart/tail/tajaran/proc/Loop_Dizzy_and_etc(iteration = 0, current_iteration = 0)	//страшное похмелье
	owner.Dizzy(pick(1,2,3,4,5,7,10))		//с какой силой нас будет качать, от 1 до 10
	owner.Knockdown(pick(0,0,0,1))			//ой, упали! или не упали... шанс падения равен 25%
	if(current_iteration == iteration)		//проверка иттераций
		return								//если текущая иттерация равна общей сумме, то всо, иттераций больше не будет
	else									//а если не равна
		iteration++							//увеличиваем число иттераций на 1
		var/duration = pick(50,100,150)		//выбираем время, через какое время вернётся похмелье
		addtimer(CALLBACK(owner, PROC_REF(Loop_Dizzy_and_etc),iteration, current_iteration), duration) //засекаем время и повторяем


/obj/item/bodypart/tail/tajaran/proc/switch_dismembed_tail_mood()									//АХТУНГ! ГОВНОКОД! переключает настроение
	SEND_SIGNAL(owner, COMSIG_CLEAR_MOOD_EVENT, "dismembed_tail")									//удаляет старое
	SEND_SIGNAL(owner, COMSIG_ADD_MOOD_EVENT, "dismembed_tail", /datum/mood_event/dismembed_tail2)	//и добавляет новое

/datum/movespeed_modifier/disabled_tail		//проклятье толстой жопы и безхвостатости
	multiplicative_slowdown = 0.3			//замедляет, ОЧЕНЬ УЖ НАДЕЮСЬ, на 30% процентов


//настроение и ко

/datum/mood_event/dismembed_tail
	description = "<span class='boldwarning'>AHH! IT WAS MY TAIL!</span>\n"
	mood_change = -10
	timeout = 30 MINUTES
	var/timer_for_change_mood_event

/datum/mood_event/dismembed_tail/add_effects()	//добавляет таймер, после которого сменится настроение на "бездебафное"
	timer_for_change_mood_event = addtimer(CALLBACK(owner, TYPE_PROC_REF(/obj/item/bodypart/tail/tajaran, switch_dismembed_tail_mood)), timeout)

/datum/mood_event/dismembed_tail/remove_effects()	//если вдруг, хвост вернули, то убираем таймер
	deltimer(timer_for_change_mood_event)

/datum/mood_event/dismembed_tail2					//настроение без дебафов
	description = "my tail...\n"
	timeout = 30 MINUTES

/datum/mood_event/broken_tail
	description = "<span class='boldwarning'>OUCH!! My tail is REALLY HURT!!</span>\n"
	mood_change = -5

/obj/item/bodypart/external_ears
	name = "External ears"
	desc = "WTF? Where a u taked it from?"
	//icon =
	//husk_icon	??
	//husk_type	??
	//static_icon =
	//icon_state =
	icon = 'icons/mob/species/tajaran/tajaran_bodyparts.dmi'
	icon_state = "ears"

	max_damage = 30
	body_zone = BODY_ZONE_EXTERNAL_EARS
	body_part = EXTERNAL_EARS
	max_stamina_damage = 20		//а скока нада ???
	can_be_disabled = TRUE
	plaintext_zone = "external_ears"
	bone_break_threshold = 25

/obj/item/bodypart/external_ears/set_disabled(new_disabled)
	. = ..()
	if(isnull(.) || !owner)
		return

	if(!.)
		if(bodypart_disabled)
			if(owner.stat < UNCONSCIOUS)
				to_chat(owner, "<span class='userdanger'>you feel like your ears is dislimed!!!!</span>")
	else if(!bodypart_disabled)
		return

/obj/item/bodypart/external_ears/tajaran
	name = "tajaran ears"
	desc = "tajaran ears"
	limb_id = SPECIES_TAJARAN
	icon = 'icons/mob/species/tajaran/tajaran_bodyparts.dmi'
	icon_state = "tajaran_ears"

*/
