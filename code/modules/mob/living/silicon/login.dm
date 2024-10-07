/mob/living/silicon/Login()
<<<<<<< HEAD
<<<<<<< HEAD
	// [CELADON-ADD] - CELADON_RETURN_CONTENT
	if(mind && SSticker.mode)
		SSticker.mode.remove_cultist(mind, 0, 0)
	// [/CELADON-ADD]
=======
>>>>>>> 5cc6a00c47 (Removes A Lot Of Cruft (#3447))
=======
>>>>>>> 5cc6a00c47 (Removes A Lot Of Cruft (#3447))
	return ..()


/mob/living/silicon/auto_deadmin_on_login()
	if(!client?.holder)
		return TRUE
	if(CONFIG_GET(flag/auto_deadmin_silicons) || (client.prefs?.toggles & DEADMIN_POSITION_SILICON))
		return client.holder.auto_deadmin()
	return ..()
