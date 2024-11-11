/mob/living/silicon/Login()
	// [CELADON-ADD] - CELADON_RETURN_CONTENT
	if(mind && SSticker.mode)
		SSticker.mode.remove_cultist(mind, 0, 0)
	// [/CELADON-ADD]
	return ..()


/mob/living/silicon/auto_deadmin_on_login()
	if(!client?.holder)
		return TRUE
	if(CONFIG_GET(flag/auto_deadmin_silicons) || (client.prefs?.toggles & DEADMIN_POSITION_SILICON))
		return client.holder.auto_deadmin()
	return ..()
