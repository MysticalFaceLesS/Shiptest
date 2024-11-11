/obj/item/toy/talking/codex_gigas
	name = "Toy Codex Gigas"
	desc = "A tool to help you write fictional devils!"
	icon = 'icons/obj/library.dmi'
	icon_state = "demonomicon"
	lefthand_file = 'icons/mob/inhands/misc/books_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/misc/books_righthand.dmi'
	w_class = WEIGHT_CLASS_SMALL
	recharge_time = 60

/obj/item/toy/talking/codex_gigas/activation_message(mob/user)
	user.visible_message(
		"<span class='notice'>[user] presses the button on \the [src].</span>",
		"<span class='notice'>You press the button on \the [src].</span>",
		"<span class='notice'>You hear a soft click.</span>")

/obj/item/toy/talking/codex_gigas/generate_messages()
	var/datum/fakeDevil/devil = new
	var/list/messages = list()
	messages += "Some fun facts about: [devil.truename]"
	messages += "[GLOB.lawlorify[LORE][devil.obligation]]"
	messages += "[GLOB.lawlorify[LORE][devil.ban]]"
	messages += "[GLOB.lawlorify[LORE][devil.banish]]"
	return messages
