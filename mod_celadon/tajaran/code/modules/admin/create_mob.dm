/proc/randomize_human(mob/living/carbon/human/H)
	H.skin_tone_nose = random_skin_tone_nose()

	H.dna.features["tajaran_ears"] = pick(GLOB.tajaran_ears_list)
	H.dna.features["tajaran_hairs"] = pick(GLOB.tajaran_hairs_list)
	H.dna.features["tajaran_ears_markings"] = pick(GLOB.tajaran_ears_markings_list)
	H.dna.features["tajaran_head_markings"] = pick(GLOB.tajaran_head_markings_list)
	H.dna.features["tajaran_nose_markings"] = pick(GLOB.tajaran_nose_markings_list)
	H.dna.features["tajaran_facial_hairs"] = pick(GLOB.tajaran_facial_hairs_list)
	H.dna.features["tajaran_chest_markings"] = pick(GLOB.tajaran_chest_markings_list)
	H.dna.features["tajaran_body_markings"] = pick(GLOB.tajaran_body_markings_list)
	H.dna.features["tajaran_tail"] = pick(GLOB.tajaran_tail_list)

	. = ..()
