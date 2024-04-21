/datum/signal/subspace/vocal/broadcast()
	set waitfor = FALSE

	// Perform final composition steps on the message.
	var/message = copytext_char(data["message"], 1, MAX_BROADCAST_LEN)
	if(!message)
		return
	var/compression = data["compression"]
	if(compression > 0)
		message = Gibberish(message, compression >= 30)

	// Assemble the list of radios
	var/list/radios = list()
	switch (transmission_method)
		if (TRANSMISSION_SUBSPACE)
			// Reaches any radios on the virtual levels
			for(var/obj/item/radio/R in GLOB.all_radios["[frequency]"])
				if(R.can_receive(frequency, map_zones))
					radios += R

		if (TRANSMISSION_RADIO)
			// Only radios not currently in subspace mode
			for(var/obj/item/radio/R in GLOB.all_radios["[frequency]"])
				if(!R.subspace_transmission && R.can_receive(frequency, map_zones))
					radios += R

		if (TRANSMISSION_SUPERSPACE)
			// Only radios which are independent
			for(var/obj/item/radio/R in GLOB.all_radios["[frequency]"])
				if(R.independent && R.can_receive(frequency, map_zones))
					radios += R

	//WS edit begin - Radio chatter #434
	// Next, we'll have each radio play a small sound effect except for the one that broadcasted it.
	for(var/obj/item/radio/radio in radios)
		if(radio.last_chatter_time + 1 SECONDS < world.time && source != radio)
			playsound(radio, "sound/effects/radio_chatter.ogg", 20, FALSE)
			radio.last_chatter_time = world.time
		if(radio.log)
			var/name = data["name"]
			var/list/log_details = list()
			log_details["name"] = "[name]▸"
			log_details["message"] = "\"[html_decode(message)]\""
			log_details["time"] = station_time_timestamp()
			radio.loglist.Insert(1, list(log_details))
			radio.log_trim()

// From the list of radios, find all mobs who can hear those.
	var/list/receive = get_mobs_in_radio_ranges(radios)

	// Cut out mobs with clients who are admins and have radio chatter disabled.
	for(var/mob/R in receive)
		if (R.client && R.client.holder && !(R.client.prefs.chat_toggles & CHAT_RADIO))
			receive -= R

	// Add observers who have ghost radio enabled.
	for(var/mob/dead/observer/M in GLOB.player_list)
		if(M.client.prefs.chat_toggles & CHAT_GHOSTRADIO)
			receive |= M

	// Render the message and have everybody hear it.
	// Always call this on the virtualspeaker to avoid issues.
	var/spans = data["spans"]
	var/list/message_mods = data["mods"]
	var/rendered = virt.compose_message(virt, language, message, frequency, spans)
	for(var/atom/movable/hearer in receive)
		hearer.Hear(rendered, virt, language, message, frequency, spans, message_mods)


	// This following recording is intended for research and feedback in the use of department radio channels
	if(length(receive))
		SSblackbox.LogBroadcast(frequency)

	var/spans_part = ""
	if(length(spans))
		spans_part = "(spans:"
		for(var/S in spans)
			spans_part = "[spans_part] [S]"
		spans_part = "[spans_part] ) "

	var/lang_name = data["language"]
	var/log_text = "\[[get_radio_name(frequency)]\] [spans_part]\"[message]\" (language: [lang_name])"

	var/mob/source_mob = virt.source
	if(istype(source_mob))
		source_mob.log_message(log_text, LOG_TELECOMMS)
	else
		log_telecomms("[virt.source] [log_text] [loc_name(get_turf(virt.source))]")

	QDEL_IN(virt, 50)  // Make extra sure the virtualspeaker gets qdeleted
