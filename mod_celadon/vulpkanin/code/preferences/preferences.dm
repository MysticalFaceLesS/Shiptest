
/datum/preferences
	/// Nose skin color for vulp
	var/skin_tone_nose = "black"

	/// Body skin color for vulp
	var/skin_tone_vulp = "Black"

/datum/preferences/New(client/C)
	features += list(
		"vulp_ears" = "Plain",
		"vulp_hairs" = "Plain",
		"vulp_ears_markings" = "None",
		"vulp_head_markings" = "None",
		"vulp_nose_markings" = "None",
		"vulp_facial_hairs" = "None",
		"vulp_chest_markings" = "None",
		"vulp_body_markings" = "None",
		"vulp_tail" = "Long"
	)

	randomise[RANDOM_SKIN_TONE_NOSE] = TRUE
	randomise[RANDOM_SKIN_TONE_vulp] = TRUE

	return ..()


/datum/preferences/process_link(mob/user, list/href_list)
	switch(href_list["task"])
		if("random")
			switch(href_list["preference"])
				if("s_tone_nose")
					skin_tone_nose = random_skin_tone_nose()
				if("s_tone_vulp")
					skin_tone_vulp = random_skin_tone_vulp()
		if("input")
			switch(href_list["preference"])
				if("vulp_ears")
					var/new_vulp_ears
					new_vulp_ears = input(user, "Choose your character's ears:", "Character Preference") as null|anything in GLOB.vulp_ears_list
					if(new_vulp_ears)
						features["vulp_ears"] = new_vulp_ears

				if("vulp_hairs")
					var/new_vulp_hairs
					new_vulp_hairs = input(user, "Choose your character's hair:", "Character Preference") as null|anything in GLOB.vulp_hairs_list
					if(new_vulp_hairs)
						features["vulp_hairs"] = new_vulp_hairs

				if("vulp_ears_markings")
					var/new_vulp_ears_markings
					new_vulp_ears_markings = input(user, "Choose your character's head markings:", "Character Preference") as null|anything in GLOB.vulp_ears_markings_list
					if(new_vulp_ears_markings)
						features["vulp_ears_markings"] = new_vulp_ears_markings

				if("vulp_head_markings")
					var/new_vulp_head_markings
					new_vulp_head_markings = input(user, "Choose your character's head markings:", "Character Preference") as null|anything in GLOB.vulp_head_markings_list
					if(new_vulp_head_markings)
						features["vulp_head_markings"] = new_vulp_head_markings

				if("vulp_nose_markings")
					var/new_vulp_nose_markings
					new_vulp_nose_markings = input(user, "Choose your character's nose markings:", "Character Preference") as null|anything in GLOB.vulp_nose_markings_list
					if(new_vulp_nose_markings)
						features["vulp_nose_markings"] = new_vulp_nose_markings

				if("vulp_facial_hairs")
					var/new_vulp_facial_hairs
					new_vulp_facial_hairs = input(user, "Choose your character's face markings:", "Character Preference") as null|anything in GLOB.vulp_facial_hairs_list
					if(new_vulp_facial_hairs)
						features["vulp_facial_hairs"] = new_vulp_facial_hairs

				if("vulp_chest_markings")
					var/new_vulp_chest_markings
					new_vulp_chest_markings = input(user, "Choose your character's chest markings:", "Character Preference") as null|anything in GLOB.vulp_chest_markings_list
					if(new_vulp_chest_markings)
						features["vulp_chest_markings"] = new_vulp_chest_markings

				if("vulp_body_markings")
					var/new_vulp_body_markings
					new_vulp_body_markings = input(user, "Choose your character's body markings:", "Character Preference") as null|anything in GLOB.vulp_body_markings_list
					if(new_vulp_body_markings)
						features["vulp_body_markings"] = new_vulp_body_markings

				if("vulp_tail")
					var/new_vulp_tail
					new_vulp_tail = input(user, "Choose your character's tail:", "Character Preference") as null|anything in GLOB.vulp_tail_list
					if(new_vulp_tail)
						features["vulp_tail"] = new_vulp_tail

				if("s_tone_vulp")
					var/new_s_tone_vulp = input(user, "Choose your character's skin-tone body:", "Character Preference")  as null|anything in GLOB.skin_tones_vulp
					if(new_s_tone_vulp)
						skin_tone_vulp = new_s_tone_vulp

				if("s_tone_nose")
					var/new_s_tone_nose = input(user, "Choose your character's skin-tone nose:", "Character Preference")  as null|anything in GLOB.skin_tones_nose
					if(new_s_tone_nose)
						skin_tone_nose = new_s_tone_nose
	return ..()


/datum/preferences/random_character(gender_override, antag_override = FALSE)
	. = ..()
	if(randomise[RANDOM_SKIN_TONE_NOSE])
		skin_tone_nose = random_skin_tone_nose()
