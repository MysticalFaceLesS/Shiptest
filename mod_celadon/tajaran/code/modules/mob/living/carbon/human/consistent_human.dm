//похуй, там что-то поменяно, но не здесь, да и автовики у нас не будет в ближайшее время
/mob/living/carbon/human/dummy/consistent/seeded_randomization(seed = 0, species_list = null)
	skin_tone_nose = GLOB.skin_tones_nose[seed % length(GLOB.skin_tones_nose) + 1]

	dna.features["tajaran_ears"] = GLOB.tajaran_ears_list[seed % length(GLOB.tajaran_ears_list) + 1]
	dna.features["tajaran_hairs"] = GLOB.tajaran_hairs_list[seed % length(GLOB.tajaran_hairs_list) + 1]
	dna.features["tajaran_ears_markings"] = GLOB.tajaran_ears_markings_list[seed % length(GLOB.tajaran_ears_markings_list) + 1]
	dna.features["tajaran_head_markings"] = GLOB.tajaran_head_markings_list[seed % length(GLOB.tajaran_head_markings_list) + 1]
	dna.features["tajaran_nose_markings"] = GLOB.tajaran_nose_markings_list[seed % length(GLOB.tajaran_nose_markings_list) + 1]
	dna.features["tajaran_facial_hairs"] = GLOB.tajaran_facial_hairs_list[seed % length(GLOB.tajaran_facial_hairs_list) + 1]
	dna.features["tajaran_chest_markings"] = GLOB.tajaran_chest_markings_list[seed % length(GLOB.tajaran_chest_markings_list) + 1]
	dna.features["tajaran_body_markings"] = GLOB.tajaran_body_markings_list[seed % length(GLOB.tajaran_body_markings_list) + 1]
	dna.features["tajaran_tail"] = GLOB.tajaran_tail_list[seed % length(GLOB.tajaran_tail_list) + 1]
