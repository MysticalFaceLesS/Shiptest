/proc/random_features()
	if(!GLOB.tails_list_human.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/tails/human, GLOB.tails_list_human)
	if(!GLOB.tails_list_lizard.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/tails/lizard, GLOB.tails_list_lizard)
	if(!GLOB.face_markings_list.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/face_markings, GLOB.face_markings_list)
	if(!GLOB.horns_list.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/horns, GLOB.horns_list)
	if(!GLOB.ears_list.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/ears, GLOB.horns_list)
	if(!GLOB.frills_list.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/frills, GLOB.frills_list)
	if(!GLOB.spines_list.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/spines, GLOB.spines_list)
	if(!GLOB.legs_list.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/legs, GLOB.legs_list)
	if(!GLOB.body_markings_list.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/body_markings, GLOB.body_markings_list)
	if(!GLOB.wings_list.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/wings, GLOB.wings_list)
	if(!GLOB.moth_wings_list.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/moth_wings, GLOB.moth_wings_list)
	if(!GLOB.moth_fluff_list.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/moth_fluff, GLOB.moth_fluff_list)
	if(!GLOB.moth_markings_list.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/moth_markings, GLOB.moth_markings_list)
	if(!GLOB.squid_face_list.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/squid_face, GLOB.squid_face_list)
	if(!GLOB.ipc_screens_list.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/ipc_screens, GLOB.ipc_screens_list)
	if(!GLOB.ipc_antennas_list.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/ipc_antennas, GLOB.ipc_antennas_list)
	if(!GLOB.ipc_tail_list.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/ipc_antennas, GLOB.ipc_tail_list)
	if(!GLOB.ipc_chassis_list.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/ipc_chassis, GLOB.ipc_chassis_list)
	if(!GLOB.spider_legs_list.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/spider_legs, GLOB.spider_legs_list)
	if(!GLOB.spider_spinneret_list.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/spider_spinneret, GLOB.spider_spinneret_list)
	if(!GLOB.kepori_feathers_list.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/kepori_feathers, GLOB.kepori_feathers_list)
	if(!GLOB.kepori_tail_feathers_list.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/kepori_feathers, GLOB.kepori_tail_feathers_list)
	if(!GLOB.vox_head_quills_list.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/vox_head_quills, GLOB.vox_head_quills_list)
	if(!GLOB.vox_neck_quills_list.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/vox_neck_quills, GLOB.vox_neck_quills_list)
	if(!GLOB.elzu_horns_list.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/elzu_horns, GLOB.elzu_horns_list)
	if(!GLOB.tails_list_elzu.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/tails/elzu, GLOB.tails_list_elzu)
	if(!GLOB.tajaran_chest_markings_list.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/tajaran_chest_markings, GLOB.tajaran_chest_markings_list)
	if(!GLOB.tajaran_body_markings_list.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/tajaran_body_markings, GLOB.tajaran_body_markings_list)
	if(!GLOB.tajaran_facial_hairs_list.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/tajaran_facial_hairs, GLOB.tajaran_facial_hairs_list)
	if(!GLOB.tajaran_nose_markings_list.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/tajaran_nose_markings, GLOB.tajaran_nose_markings_list)
	if(!GLOB.tajaran_ears_markings_list.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/tajaran_ears_markings, GLOB.tajaran_ears_markings_list)
	if(!GLOB.tajaran_head_markings_list.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/tajaran_head_markings, GLOB.tajaran_head_markings_list)
	if(!GLOB.tajaran_tail_list.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/tails/tajaran, GLOB.tajaran_tail_list)
	if(!GLOB.tajaran_animated_tail_list.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/tajaran_tail_animated, GLOB.tajaran_animated_tail_list)
	if(!GLOB.tajaran_hairs_list.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/tajaran_hairs, GLOB.tajaran_hairs_list)
	if(!GLOB.tajaran_ears_list.len)
		init_sprite_accessory_subtypes(/datum/sprite_accessory/tajaran_ears, GLOB.tajaran_ears_list)


	//For now we will always return none for tail_human and ears.
	//if you don't keep this alphabetised I'm going to personally steal your shins and sell them online
	return list(
		"body_markings" = pick(GLOB.body_markings_list),
		"body_size" = pick(GLOB.body_sizes),
		"ears" = "None",
		"elzu_horns" = pick(GLOB.elzu_horns_list),
		"ethcolor" = GLOB.color_list_ethereal[pick(GLOB.color_list_ethereal)],
		"flavor_text" = "",
		"frills" = pick(GLOB.frills_list),
		"horns" = pick(GLOB.horns_list),
		"ipc_antenna" = pick(GLOB.ipc_antennas_list),
		"ipc_brain" = pick(GLOB.ipc_brain_list),
		"ipc_chassis" = pick(GLOB.ipc_chassis_list),
		"ipc_screen" = pick(GLOB.ipc_screens_list),
		"kepori_body_feathers" = pick(GLOB.kepori_body_feathers_list),
		"kepori_feathers" = pick(GLOB.kepori_feathers_list),
		"kepori_tail_feathers" = pick(GLOB.kepori_tail_feathers_list),
		"legs" = "Normal Legs",
		"mcolor" = pick("FFFFFF","7F7F7F", "7FFF7F", "7F7FFF", "FF7F7F", "7FFFFF", "FF7FFF", "FFFF7F"),
		"mcolor2" = pick("FFFFFF","7F7F7F", "7FFF7F", "7F7FFF", "FF7F7F", "7FFFFF", "FF7FFF", "FFFF7F"),
		"moth_fluff" = pick(GLOB.moth_fluff_list),
		"moth_markings" = pick(GLOB.moth_markings_list),
		"moth_wings" = pick(GLOB.moth_wings_list),
		"face_markings" = pick(GLOB.face_markings_list),
		"spider_legs" = pick(GLOB.spider_legs_list),
		"spider_spinneret" = pick(GLOB.spider_spinneret_list),
		"spines" = pick(GLOB.spines_list),
		"squid_face" = pick(GLOB.squid_face_list),
		"tail_human" = "None",
		"tail_lizard" = pick(GLOB.tails_list_lizard),
		"tail_elzu" = pick(GLOB.tails_list_elzu),
		"vox_head_quills" = pick(GLOB.vox_head_quills_list),
		"vox_neck_quills" = pick(GLOB.vox_neck_quills_list),
		"wings" = "None",
		"tajaran_ears" = pick(GLOB.tajaran_ears_list),
		"tajaran_hairs" = pick(GLOB.tajaran_hairs_list),
		"tajaran_ears_markings" = pick(GLOB.tajaran_ears_markings_list),
		"tajaran_head_markings" = pick(GLOB.tajaran_head_markings_list),
		"tajaran_facial_hairs" = pick(GLOB.tajaran_facial_hairs_list),
		"tajaran_nose_markings" = pick(GLOB.tajaran_nose_markings_list),
		"tajaran_chest_markings" = pick(GLOB.tajaran_chest_markings_list),
		"tajaran_body_markings" = pick(GLOB.tajaran_body_markings_list),
		"tajaran_tail" = pick(GLOB.tajaran_tail_list)
	)


/proc/random_unique_tajaran_name(gender, attempts_to_find_unique_name=10)
	for(var/i in 1 to attempts_to_find_unique_name)
		. = capitalize(tajaran_name(gender))

		if(!findname(.))
			break



/proc/random_skin_tone_nose()
	return pick(GLOB.skin_tones_nose)

GLOBAL_LIST_INIT(skin_tones_nose, sortList(list(
	"beige",
	"pink",
	"grey",
	"black"
	)))

/proc/random_skin_tone_tajaran()
	return pick(GLOB.skin_tones_tajaran)

GLOBAL_LIST_INIT(skin_tones_tajaran, sortList(list(
		"Beaver Brown",
		"Kochiba",
		"Taupe",
		"Blue-Grey",
		"Dark Gray",
		"Chocolate",
		"Black",
		"Orange",
		"Cinnamon",
		"Ruddy",
		"Cream",
		"White",
		"Ivory",
		"Wheat",
		"Silver"
	)))

