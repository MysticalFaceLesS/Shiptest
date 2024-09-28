// Also made a small change in "mod_celadon\_components\code\emotes\emotes_living.dm".
// `/datum/emote/living/custom/run_emote()` now requires "." to do custom emotes instead of null


// Part from "code\modules\mob\mob_say.dm"

// Overrides verbs to use input() instead of verb arguments
///The me emote verb
/mob/verb/me_verb_2()
	set name = "Me"
	set category = "IC"
	var/message = input(usr, "", "me \"text\"", "") as text|null
	if(typing_indicator || isnull(message))
		set_typing_indicator(FALSE)
	if(GLOB.say_disabled)	//This is here to try to identify lag problems
		to_chat(usr, "<span class='danger'>Speech is currently admin-disabled.</span>")
		return

	message = trim(copytext_char(sanitize(message), 1, MAX_MESSAGE_LEN))

	QUEUE_OR_CALL_VERB_FOR(VERB_CALLBACK(src, TYPE_PROC_REF(/mob, emote), "me", 1, message, TRUE), SSspeech_controller)

///Say verb
/mob/verb/say_verb_2()
	set name = "Say"
	set category = "IC"
	set instant = TRUE
	var/message = input(usr, "", "say \"text\"", "") as text|null
	if(typing_indicator || isnull(message))
		set_typing_indicator(FALSE)
	if(GLOB.say_disabled)	//This is here to try to identify lag problems
		to_chat(usr, "<span class='danger'>Speech is currently admin-disabled.</span>")
		return
	//queue this message because verbs are scheduled to process after SendMaps in the tick and speech is pretty expensive when it happens.
	//by queuing this for next tick the mc can compensate for its cost instead of having speech delay the start of the next tick
	if(message)
		QUEUE_OR_CALL_VERB_FOR(VERB_CALLBACK(src, TYPE_PROC_REF(/atom/movable, say), message), SSspeech_controller)
