/datum/preferences
	var/skin_tone_nose = "black"		//Skin color nose for tajaran
	var/skin_tone_tajaran = "Black"		//Skin color body for tajaran
	var/list/features = list(
							"mcolor" = "FFF",
							"mcolor2" = "FFF",
							"grad_style" = "None",
							"grad_color" = "FFF",
							"ethcolor" = "9c3030",
							"tail_lizard" = "Smooth",
							"tail_human" = "None",
							"face_markings" = "None",
							"horns" = "None",
							"ears" = "None",
							"wings" = "None",
							"frills" = "None",
							"spines" = "None",
							"body_markings" = "None",
							"legs" = "Normal Legs",
							"moth_wings" = "Plain",
							"moth_fluff" = "Plain",
							"moth_markings" = "None",
							"spider_legs" = "Plain",
							"spider_spinneret" = "Plain",
							"spider_mandibles" = "Plain",
							"squid_face" = "Squidward",
							"ipc_screen" = "Blue",
							"ipc_antenna" = "None",
							"ipc_tail" = "None",
							"ipc_chassis" = "Morpheus Cyberkinetics (Custom)",
							"ipc_brain" = "Posibrain",
							"kepori_feathers" = "Plain",
							"kepori_body_feathers" = "Plain",
							"kepori_tail_feathers" = "Fan",
							"vox_head_quills" = "Plain",
							"vox_neck_quills" = "Plain",
							"elzu_horns" = "None",
							"elzu_tail" = "None",
							"tajaran_ears" = "plain",
							"tajaran_hairs" = "plain",
							"tajaran_ears_markings" = "None",
							"tajaran_head_markings" = "None",
							"tajaran_nose_markings" = "None",
							"tajaran_facial_hairs" = "None",
							"tajaran_chest_markings" = "None",
							"tajaran_body_markings" = "None",
							"tajaran_tail" = "Long",
							"flavor_text" = "",
							"body_size" = "Normal"
						)
	var/list/randomise = list(
							RANDOM_UNDERWEAR = TRUE,
							RANDOM_UNDERWEAR_COLOR = TRUE,
							RANDOM_UNDERSHIRT = TRUE,
							RANDOM_UNDERSHIRT_COLOR = TRUE,
							RANDOM_SOCKS = TRUE,
							RANDOM_SOCKS_COLOR = TRUE,
							RANDOM_BACKPACK = TRUE,
							RANDOM_JUMPSUIT_STYLE = TRUE,
							RANDOM_EXOWEAR_STYLE = TRUE,
							RANDOM_HAIRSTYLE = TRUE,
							RANDOM_HAIR_COLOR = TRUE,
							RANDOM_FACIAL_HAIRSTYLE = TRUE,
							RANDOM_FACIAL_HAIR_COLOR = TRUE,
							RANDOM_SKIN_TONE = TRUE,
							RANDOM_EYE_COLOR = TRUE,
							RANDOM_SKIN_TONE_NOSE = TRUE,
							RANDOM_SKIN_TONE_TAJARAN = TRUE,
						)

/datum/preferences/ShowChoices(mob/user)
	switch(current_tab)
		if(1)
			if(pref_species.use_skintonetajaran)

				dat += "<h3>Skin Tone Body</h3>"

				dat += "<a href='?_src_=prefs;preference=s_tone_tajaran;task=input'>[skin_tone_tajaran]</a>"
				dat += "<a href='?_src_=prefs;preference=toggle_random;random_type=[RANDOM_SKIN_TONE_TAJARAN]'>[(randomise[RANDOM_SKIN_TONE_TAJARAN]) ? "Lock" : "Unlock"]</A>"
				dat += "<br>"




			if("tajaran_ears" in pref_species.default_features)
				if(!mutant_category)
					dat += APPEARANCE_CATEGORY_COLUMN

				dat += "<h3>Ears</h3>"

				dat += "<a href='?_src_=prefs;preference=tajaran_ears;task=input'>[features["tajaran_ears"]]</a><BR>"

				mutant_category++
				if(mutant_category >= MAX_MUTANT_ROWS)
					dat += "</td>"
					mutant_category = 0

			if("tajaran_ears_markings" in pref_species.default_features)
				if(!mutant_category)
					dat += APPEARANCE_CATEGORY_COLUMN

				dat += "<h3>Ears markings</h3>"

				dat += "<a href='?_src_=prefs;preference=tajaran_ears_markings;task=input'>[features["tajaran_ears_markings"]]</a><BR>"

				mutant_category++
				if(mutant_category >= MAX_MUTANT_ROWS)
					dat += "</td>"
					mutant_category = 0

			if("tajaran_head_markings" in pref_species.default_features)
				if(!mutant_category)
					dat += APPEARANCE_CATEGORY_COLUMN

				dat += "<h3>Head markings</h3>"

				dat += "<a href='?_src_=prefs;preference=tajaran_head_markings;task=input'>[features["tajaran_head_markings"]]</a><BR>"

				mutant_category++
				if(mutant_category >= MAX_MUTANT_ROWS)
					dat += "</td>"
					mutant_category = 0

			if("tajaran_nose_markings" in pref_species.default_features)
				if(!mutant_category)
					dat += APPEARANCE_CATEGORY_COLUMN

				dat += "<h3>Nose markings</h3>"

				dat += "<a href='?_src_=prefs;preference=tajaran_nose_markings;task=input'>[features["tajaran_nose_markings"]]</a><BR>"
				dat += "<h3>Skin Tone nose</h3>"
				dat += "<a href='?_src_=prefs;preference=s_tone_nose;task=input'>[skin_tone_nose]</a>"
				dat += "<a href='?_src_=prefs;preference=toggle_random;random_type=[RANDOM_SKIN_TONE_NOSE]'>[(randomise[RANDOM_SKIN_TONE_NOSE]) ? "Lock" : "Unlock"]</A>"

				mutant_category++
				if(mutant_category >= MAX_MUTANT_ROWS)
					dat += "</td>"
					mutant_category = 0
/*
			if("tajaran_facial_hairs" in pref_species.default_features)
				if(!mutant_category)
					dat += APPEARANCE_CATEGORY_COLUMN
				dat += "<h3>Face hairs</h3>"
				dat += "<a href='?_src_=prefs;preference=tajaran_facial_hairs;task=input'>[features["tajaran_facial_hairs"]]</a><BR>"
				mutant_category++
				if(mutant_category >= MAX_MUTANT_ROWS)
					dat += "</td>"
					mutant_category = 0
*/
			if("tajaran_chest_markings" in pref_species.default_features)
				if(!mutant_category)
					dat += APPEARANCE_CATEGORY_COLUMN

				dat += "<h3>Chest markings</h3>"

				dat += "<a href='?_src_=prefs;preference=tajaran_chest_markings;task=input'>[features["tajaran_chest_markings"]]</a><BR>"

				mutant_category++
				if(mutant_category >= MAX_MUTANT_ROWS)
					dat += "</td>"
					mutant_category = 0

			if("tajaran_body_markings" in pref_species.default_features)
				if(!mutant_category)
					dat += APPEARANCE_CATEGORY_COLUMN

				dat += "<h3>Body markings</h3>"

				dat += "<a href='?_src_=prefs;preference=tajaran_body_markings;task=input'>[features["tajaran_body_markings"]]</a><BR>"

				mutant_category++
				if(mutant_category >= MAX_MUTANT_ROWS)
					dat += "</td>"
					mutant_category = 0

			if("tajaran_tail" in pref_species.default_features)
				if(!mutant_category)
					dat += APPEARANCE_CATEGORY_COLUMN

				dat += "<h3>Tail</h3>"

				dat += "<a href='?_src_=prefs;preference=tajaran_tail;task=input'>[features["tajaran_tail"]]</a><BR>"

				mutant_category++
				if(mutant_category >= MAX_MUTANT_ROWS)
					dat += "</td>"
					mutant_category = 0
	. = ..()


/datum/preferences/process_link(mob/user, list/href_list)
	switch(href_list["task"])
		if("random")
			switch(href_list["preference"])
				if("s_tone_nose")
					skin_tone_nose = random_skin_tone_nose()
				if("s_tone_tajaran")
					skin_tone_tajaran = random_skin_tone_tajaran()

		if("input")
			switch(href_list["preference"])
				if("tajaran_ears")
					var/new_tajaran_ears
					new_tajaran_ears = input(user, "Choose your character's ears:", "Character Preference") as null|anything in GLOB.tajaran_ears_list
					if(new_tajaran_ears)
						features["tajaran_ears"] = new_tajaran_ears

				if("tajaran_hairs")
					var/new_tajaran_hairs
					new_tajaran_hairs = input(user, "Choose your character's hair:", "Character Preference") as null|anything in GLOB.tajaran_hairs_list
					if(new_tajaran_hairs)
						features["tajaran_hairs"] = new_tajaran_hairs

				if("tajaran_ears_markings")
					var/new_tajaran_ears_markings
					new_tajaran_ears_markings = input(user, "Choose your character's head markings:", "Character Preference") as null|anything in GLOB.tajaran_ears_markings_list
					if(new_tajaran_ears_markings)
						features["tajaran_ears_markings"] = new_tajaran_ears_markings

				if("tajaran_head_markings")
					var/new_tajaran_head_markings
					new_tajaran_head_markings = input(user, "Choose your character's head markings:", "Character Preference") as null|anything in GLOB.tajaran_head_markings_list
					if(new_tajaran_head_markings)
						features["tajaran_head_markings"] = new_tajaran_head_markings

				if("tajaran_nose_markings")
					var/new_tajaran_nose_markings
					new_tajaran_nose_markings = input(user, "Choose your character's nose markings:", "Character Preference") as null|anything in GLOB.tajaran_nose_markings_list
					if(new_tajaran_nose_markings)
						features["tajaran_nose_markings"] = new_tajaran_nose_markings

				if("tajaran_facial_hairs")
					var/new_tajaran_facial_hairs
					new_tajaran_facial_hairs = input(user, "Choose your character's face markings:", "Character Preference") as null|anything in GLOB.tajaran_facial_hairs_list
					if(new_tajaran_facial_hairs)
						features["tajaran_facial_hairs"] = new_tajaran_facial_hairs

				if("tajaran_chest_markings")
					var/new_tajaran_chest_markings
					new_tajaran_chest_markings = input(user, "Choose your character's chest markings:", "Character Preference") as null|anything in GLOB.tajaran_chest_markings_list
					if(new_tajaran_chest_markings)
						features["tajaran_chest_markings"] = new_tajaran_chest_markings

				if("tajaran_body_markings")
					var/new_tajaran_body_markings
					new_tajaran_body_markings = input(user, "Choose your character's body markings:", "Character Preference") as null|anything in GLOB.tajaran_body_markings_list
					if(new_tajaran_body_markings)
						features["tajaran_body_markings"] = new_tajaran_body_markings

				if("tajaran_tail")
					var/new_tajaran_tail
					new_tajaran_tail = input(user, "Choose your character's tail:", "Character Preference") as null|anything in GLOB.tajaran_tail_list
					if(new_tajaran_tail)
						features["tajaran_tail"] = new_tajaran_tail

				if("s_tone_tajaran")
					var/new_s_tone_tajaran = input(user, "Choose your character's skin-tone body:", "Character Preference")  as null|anything in GLOB.skin_tones_tajaran
					if(new_s_tone_tajaran)
						skin_tone_tajaran = new_s_tone_tajaran

				if("s_tone_nose")
					var/new_s_tone_nose = input(user, "Choose your character's skin-tone nose:", "Character Preference")  as null|anything in GLOB.skin_tones_nose
					if(new_s_tone_nose)
						skin_tone_nose = new_s_tone_nose
	. = ..()


/datum/preferences/copy_to(mob/living/carbon/human/character, icon_updates, roundstart_checks, character_setup, antagonist, loadout)
	character.skin_tone_nose = skin_tone_nose
	character.skin_tone_tajaran = skin_tone_tajaran

	if("tajaran_tail" in pref_species.default_features)
		character.dna.species.mutant_bodyparts |= "tajaran_tail"
	if("tajaran_ears" in pref_species.default_features)
		character.dna.species.mutant_bodyparts |= "tajaran_ears"
	. = ..()
