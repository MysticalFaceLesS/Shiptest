// /mob/living/send_speech(message, message_range = 6, obj/source = src, bubble_type = bubble_icon, list/spans, datum/language/message_language=null, list/message_mods = list())		// Origin -> code\modules\mob\living\living_say.dm
// 	var/eavesdrop_range = 0
// 	if(message_mods[WHISPER_MODE]) //If we're whispering
// 		eavesdrop_range = EAVESDROP_EXTRA_RANGE
// 	var/list/listening = get_hearers_in_view(message_range+eavesdrop_range, source)
// 	var/list/the_dead = list()
// 	if(client) //client is so that ghosts don't have to listen to mice
// 		for(var/mob/player_mob as anything in GLOB.player_list)
// 			if(QDELETED(player_mob)) //Some times nulls and deleteds stay in this list. This is a workaround to prevent ic chat breaking for everyone when they do.
// 				continue //Remove if underlying cause (likely byond issue) is fixed. See TG PR #49004.
// 			if(player_mob.stat != DEAD) //not dead, not important
// 				continue
// 			if(get_dist(player_mob, src) > 7 || player_mob.z != z) //they're out of range of normal hearing
// 				if(eavesdrop_range)
// 					if(!(player_mob.client?.prefs.chat_toggles & CHAT_GHOSTWHISPER)) //they're whispering and we have hearing whispers at any range off
// 						continue
// 				else if(!(player_mob.client?.prefs.chat_toggles & CHAT_GHOSTEARS)) //they're talking normally and we have hearing at any range off
// 					continue
// 			listening |= player_mob
// 			the_dead[player_mob] = TRUE

// 	var/eavesdropping
// 	var/eavesrendered
// 	if(eavesdrop_range)
// 		eavesdropping = stars(message)
// 		eavesrendered = compose_message(src, message_language, eavesdropping, , spans, message_mods)

// 	var/rendered = compose_message(src, message_language, message, , spans, message_mods)
// 	for(var/atom/movable/listening_movable as anything in listening)
// 		if(eavesdrop_range && get_dist(source, listening_movable) > message_range && !(the_dead[listening_movable]))
// 			listening_movable.Hear(eavesrendered, src, message_language, eavesdropping, , spans, message_mods)
// 		else
// 			listening_movable.Hear(rendered, src, message_language, message, , spans, message_mods)
// 	SEND_GLOBAL_SIGNAL(COMSIG_GLOB_LIVING_SAY_SPECIAL, src, message)

// 	//speech bubble
// 	var/list/speech_bubble_recipients = list()
// 	for(var/mob/M in listening)
// 		if(M.client && (M.client.prefs.chat_on_map || (SSlag_switch.measures[DISABLE_RUNECHAT] && !HAS_TRAIT(src, TRAIT_BYPASS_MEASURES))))
// 	var/image/I = image('mod_celadon/icons/talk.dmi', src, "[bubble_type][say_test(message)]", FLY_LAYER)
// 	I.appearance_flags = APPEARANCE_UI_IGNORE_ALPHA
// 	INVOKE_ASYNC(GLOBAL_PROC, GLOBAL_PROC_REF(flick_overlay), I, speech_bubble_recipients, 30)

// /mob/living/carbon/human/species/android
// 	bubble_icon = "machine"

// /mob/living/carbon/human/species/ipc
// 	bubble_icon = "machine"

// /mob/living/carbon/human/species/jelly
// 	bubble_icon = "slime"

// ///Celadon-change - new param in set_typing_indicator, which helps with say/me bubble
// /mob/living/key_down(_key, client/user)		// Origin -> code\modules\mob\living\living.dm
// 	if(!typing_indicator && stat == CONSCIOUS)
// 		for(var/kb_name in user.prefs.key_bindings[_key])
// 			switch(kb_name)
// 				if("Say")
// 					set_typing_indicator(TRUE, isSay = TRUE)
// 					break
// 				if("Me")
// 					set_typing_indicator(TRUE, isMe = TRUE)
// 					break
// 	return ..()


// /mob/living/set_typing_indicator(state, isMe = null, isSay = null)		// Origin -> code\modules\mob\living\living.dm
// 	typing_indicator = state
// 	var/state_of_bubble
// 	if(isMe)
// 		state_of_bubble = "emotetyping"
// 	if(isSay)
// 		state_of_bubble = bubble_icon? "[bubble_icon]0" : "default0"
// 	if(!state_of_bubble)
// 		state_of_bubble = last_state_of_bubble
// 	else
// 		last_state_of_bubble = state_of_bubble
// 	var/mutable_appearance/bubble_overlay = mutable_appearance('mod_celadon/icons/mob/talk.dmi', state_of_bubble, plane = RUNECHAT_PLANE)
// 	bubble_overlay.appearance_flags = RESET_COLOR | RESET_TRANSFORM | TILE_BOUND | PIXEL_SCALE
// 	if(typing_indicator)
// 		add_overlay(bubble_overlay)
// 	else
// 		cut_overlay(bubble_overlay)

// /mob/living		// Origin -> code\modules\mob\living\living_defines.dm
// 	//helps with shitcode say/me bubble
// 	var/last_state_of_bubble
