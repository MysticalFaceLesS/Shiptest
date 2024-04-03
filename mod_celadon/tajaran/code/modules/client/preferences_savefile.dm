//вы как хотите, а я чё-та сейвами рисковать не хочу

/datum/preferences/proc/load_character(slot)
	if(!path)
		return FALSE
	if(!fexists(path))
		return FALSE
	var/savefile/S = new /savefile(path)
	if(!S)
		return FALSE
	S.cd = "/"
	if(!slot)
		slot = default_slot
	slot = sanitize_integer(slot, 1, max_save_slots, initial(default_slot))
	if(slot != default_slot)
		default_slot = slot
		WRITE_FILE(S["default_slot"] , slot)

	S.cd = "/character[slot]"
	var/needs_update = savefile_needs_update(S)
	if(needs_update == -2)		//fatal, can't load any data
		return FALSE

	//Species
	var/species_id
	READ_FILE(S["species"], species_id)
	if(species_id)
		var/newtype = GLOB.species_list[species_id]
		if(newtype)
			pref_species = new newtype

	//Character
	READ_FILE(S["real_name"], real_name)
	READ_FILE(S["gender"], gender)
	READ_FILE(S["age"], age)
	READ_FILE(S["hair_color"], hair_color)
	READ_FILE(S["facial_hair_color"], facial_hair_color)
	READ_FILE(S["eye_color"], eye_color)
	READ_FILE(S["skin_tone"], skin_tone)
	READ_FILE(S["hairstyle_name"], hairstyle)
	READ_FILE(S["facial_style_name"], facial_hairstyle)
	READ_FILE(S["feature_grad_style"], features["grad_style"])
	READ_FILE(S["feature_grad_color"], features["grad_color"])
	READ_FILE(S["underwear"], underwear)
	READ_FILE(S["underwear_color"], underwear_color)
	READ_FILE(S["undershirt"], undershirt)
	READ_FILE(S["undershirt_color"], undershirt_color)
	READ_FILE(S["socks"], socks)
	READ_FILE(S["socks_color"], socks_color)
	READ_FILE(S["backpack"], backpack)
	READ_FILE(S["jumpsuit_style"], jumpsuit_style)
	READ_FILE(S["uplink_loc"], uplink_spawn_loc)
	READ_FILE(S["phobia"], phobia)
	READ_FILE(S["randomise"],  randomise)
	READ_FILE(S["body_size"], features["body_size"])
	READ_FILE(S["prosthetic_limbs"], prosthetic_limbs)
	prosthetic_limbs ||= list(BODY_ZONE_L_ARM = PROSTHETIC_NORMAL, BODY_ZONE_R_ARM = PROSTHETIC_NORMAL, BODY_ZONE_L_LEG = PROSTHETIC_NORMAL, BODY_ZONE_R_LEG = PROSTHETIC_NORMAL)
	READ_FILE(S["feature_mcolor"], features["mcolor"])
	READ_FILE(S["feature_mcolor2"], features["mcolor2"])
	READ_FILE(S["feature_ethcolor"], features["ethcolor"])
	READ_FILE(S["feature_lizard_tail"], features["tail_lizard"])
	READ_FILE(S["feature_lizard_face_markings"], features["face_markings"])
	READ_FILE(S["feature_lizard_horns"], features["horns"])
	READ_FILE(S["feature_lizard_frills"], features["frills"])
	READ_FILE(S["feature_lizard_spines"], features["spines"])
	READ_FILE(S["feature_lizard_body_markings"], features["body_markings"])
	READ_FILE(S["feature_lizard_legs"], features["legs"])
	READ_FILE(S["feature_moth_wings"], features["moth_wings"])
	READ_FILE(S["feature_moth_markings"], features["moth_markings"])

	READ_FILE(S["jumpsuit_style"], jumpsuit_style)
	READ_FILE(S["exowear"], exowear)
	READ_FILE(S["feature_moth_fluff"], features["moth_fluff"])
	READ_FILE(S["feature_spider_legs"], features["spider_legs"])
	READ_FILE(S["feature_spider_spinneret"], features["spider_spinneret"])
	READ_FILE(S["feature_spider_mandibles"], features["spider_mandibles"])
	READ_FILE(S["feature_squid_face"], features["squid_face"])
	READ_FILE(S["feature_ipc_screen"], features["ipc_screen"])
	READ_FILE(S["feature_ipc_antenna"], features["ipc_antenna"])
	READ_FILE(S["feature_ipc_tail"], features["ipc_tail"])
	READ_FILE(S["feature_ipc_chassis"], features["ipc_chassis"])
	READ_FILE(S["feature_ipc_brain"], features["ipc_brain"])
	READ_FILE(S["feature_kepori_feathers"], features["kepori_feathers"])
	READ_FILE(S["feature_kepori_body_feathers"], features["kepori_body_feathers"])
	READ_FILE(S["feature_kepori_tail_feathers"], features["kepori_tail_feathers"])
	READ_FILE(S["feature_vox_head_quills"], features["vox_head_quills"])
	READ_FILE(S["feature_vox_neck_quills"], features["vox_neck_quills"])
	READ_FILE(S["feature_elzu_horns"], features["elzu_horns"])
	READ_FILE(S["feature_tail_elzu"], features["tail_elzu"])

	READ_FILE(S["skin_tone_nose"]					, skin_tone_nose)
	READ_FILE(S["feature_tajaran_ears"]				, features["tajaran_ears"])
	READ_FILE(S["feature_tajaran_hairs"]			, features["tajaran_hairs"])
	READ_FILE(S["feature_tajaran_ears_markings"]	, features["tajaran_ears_markings"])
	READ_FILE(S["feature_tajaran_head_markings"]	, features["tajaran_head_markings"])
	READ_FILE(S["feature_tajaran_noise_markings"]	, features["tajaran_nose_markings"])
	READ_FILE(S["feature_tajaran_facial_hairs"]		, features["tajaran_facial_hairs"])
	READ_FILE(S["feature_tajaran_chest_markings"]	, features["tajaran_chest_markings"])
	READ_FILE(S["feature_tajaran_body_markings"]	, features["tajaran_body_markings"])
	READ_FILE(S["feature_tajaran_tail"]				, features["tajaran_tail"])

	READ_FILE(S["equipped_gear"], equipped_gear)
	if(config) //This should *probably* always be there, but just in case.
		if(length(equipped_gear) > CONFIG_GET(number/max_loadout_items))
			to_chat(parent, "<span class='userdanger'>Loadout maximum items exceeded in loaded slot, Your loadout has been cleared! You had [length(equipped_gear)]/[CONFIG_GET(number/max_loadout_items)] equipped items!</span>")
			equipped_gear = list()
			WRITE_FILE(S["equipped_gear"]				, equipped_gear)

	READ_FILE(S["feature_human_tail"], features["tail_human"])
	READ_FILE(S["feature_human_ears"], features["ears"])

	READ_FILE(S["fbp"], fbp)

	//Custom names
	for(var/custom_name_id in GLOB.preferences_custom_names)
		var/savefile_slot_name = custom_name_id + "_name" //TODO remove this
		READ_FILE(S[savefile_slot_name], custom_names[custom_name_id])

	READ_FILE(S["preferred_ai_core_display"], preferred_ai_core_display)
	READ_FILE(S["prefered_security_department"], prefered_security_department)

	//Preview outfit selection
	READ_FILE(S["selected_outfit"], selected_outfit)

	//Quirks
	READ_FILE(S["all_quirks"], all_quirks)

	//Flavor Text
	S["feature_flavor_text"]		>> features["flavor_text"]

	//try to fix any outdated data if necessary
	//preference updating will handle saving the updated data for us.
	if(needs_update >= 0)
		update_character(needs_update, S)		//needs_update == savefile_version if we need an update (positive integer)

	//Sanitize
	real_name = reject_bad_name(real_name)
	gender = sanitize_gender(gender)
	if(!real_name)
		real_name = random_unique_name(gender)

	for(var/custom_name_id in GLOB.preferences_custom_names)
		custom_names[custom_name_id] = reject_bad_name(custom_names[custom_name_id])
		if(!custom_names[custom_name_id])
			custom_names[custom_name_id] = get_default_name(custom_name_id)

	if(!features["mcolor"] || text2num(features["mcolor"], 16) == 0)
		features["mcolor"] = random_color()

	if(!features["ethcolor"] || text2num(features["ethcolor"], 16) == 0)
		features["ethcolor"] = GLOB.color_list_ethereal[pick(GLOB.color_list_ethereal)]

	randomise = SANITIZE_LIST(randomise)

	if(gender == MALE)
		hairstyle								= sanitize_inlist(hairstyle, GLOB.hairstyles_male_list)
		facial_hairstyle						= sanitize_inlist(facial_hairstyle, GLOB.facial_hairstyles_male_list)
	else if(gender == FEMALE)
		hairstyle								= sanitize_inlist(hairstyle, GLOB.hairstyles_female_list)
		facial_hairstyle						= sanitize_inlist(facial_hairstyle, GLOB.facial_hairstyles_female_list)
	else
		hairstyle								= sanitize_inlist(hairstyle, GLOB.hairstyles_list)
		facial_hairstyle						= sanitize_inlist(facial_hairstyle, GLOB.facial_hairstyles_list)
		underwear								= sanitize_inlist(underwear, GLOB.underwear_list)
		undershirt 								= sanitize_inlist(undershirt, GLOB.undershirt_list)

	socks				= sanitize_inlist(socks, GLOB.socks_list)
	age					= sanitize_integer(age, pref_species.species_age_min, pref_species.species_age_max, initial(age))
	hair_color			= sanitize_hexcolor(hair_color)
	facial_hair_color	= sanitize_hexcolor(facial_hair_color)
	underwear_color		= sanitize_hexcolor(underwear_color)
	eye_color			= sanitize_hexcolor(eye_color)
	skin_tone			= sanitize_inlist(skin_tone, GLOB.skin_tones)
	backpack			= sanitize_inlist(backpack, GLOB.backpacklist, initial(backpack))
	jumpsuit_style		= sanitize_inlist(jumpsuit_style, GLOB.jumpsuitlist, initial(jumpsuit_style))
	exowear				= sanitize_inlist(exowear, GLOB.exowearlist, initial(exowear))
	uplink_spawn_loc	= sanitize_inlist(uplink_spawn_loc, GLOB.uplink_spawn_loc_list, initial(uplink_spawn_loc))
	fbp					= sanitize_integer(fbp, FALSE, TRUE, FALSE)
	features["grad_style"]				= sanitize_inlist(features["grad_style"], GLOB.hair_gradients_list)
	features["grad_color"]				= sanitize_hexcolor(features["grad_color"])
	features["body_size"]				= sanitize_inlist(features["body_size"], GLOB.body_sizes, "Normal")
	features["mcolor"]					= sanitize_hexcolor(features["mcolor"])
	features["mcolor2"]					= sanitize_hexcolor(features["mcolor2"])
	features["ethcolor"]				= copytext_char(features["ethcolor"], 1, 7)
	features["tail_lizard"]				= sanitize_inlist(features["tail_lizard"], GLOB.tails_list_lizard)
	features["tail_human"]				= sanitize_inlist(features["tail_human"], GLOB.tails_list_human, "None")
	features["face_markings"]			= sanitize_inlist(features["face_markings"], GLOB.face_markings_list)
	features["horns"]					= sanitize_inlist(features["horns"], GLOB.horns_list)
	features["ears"]					= sanitize_inlist(features["ears"], GLOB.ears_list, "None")
	features["frills"]					= sanitize_inlist(features["frills"], GLOB.frills_list)
	features["spines"]					= sanitize_inlist(features["spines"], GLOB.spines_list)
	features["body_markings"]			= sanitize_inlist(features["body_markings"], GLOB.body_markings_list)
	features["feature_lizard_legs"]		= sanitize_inlist(features["legs"], GLOB.legs_list, "Normal Legs")
	features["moth_wings"]				= sanitize_inlist(features["moth_wings"], GLOB.moth_wings_list, "Plain")
	features["moth_fluff"]				= sanitize_inlist(features["moth_fluff"], GLOB.moth_fluff_list, "Plain")
	features["spider_legs"] 			= sanitize_inlist(features["spider_legs"], GLOB.spider_legs_list, "Plain")
	features["spider_spinneret"] 		= sanitize_inlist(features["spider_spinneret"], GLOB.spider_spinneret_list, "Plain")
	features["moth_markings"]			= sanitize_inlist(features["moth_markings"], GLOB.moth_markings_list, "None")
	features["squid_face"]				= sanitize_inlist(features["squid_face"], GLOB.squid_face_list, "Squidward")
	features["ipc_screen"]				= sanitize_inlist(features["ipc_screen"], GLOB.ipc_screens_list)
	features["ipc_antenna"]				= sanitize_inlist(features["ipc_antenna"], GLOB.ipc_antennas_list)
	features["ipc_tail"]				= sanitize_inlist(features["ipc_tail"], GLOB.ipc_tail_list)
	features["ipc_chassis"]				= sanitize_inlist(features["ipc_chassis"], GLOB.ipc_chassis_list)
	features["ipc_brain"]				= sanitize_inlist(features["ipc_brain"], GLOB.ipc_brain_list)
	features["kepori_feathers"]			= sanitize_inlist(features["kepori_feathers"], GLOB.kepori_feathers_list, "Plain")
	features["kepori_body_feathers"]	= sanitize_inlist(features["kepori_body_feathers"], GLOB.kepori_body_feathers_list, "Plain")
	features["kepori_tail_feathers"]	= sanitize_inlist(features["kepori_tail_feathers"], GLOB.kepori_tail_feathers_list, "Fan")
	features["vox_head_quills"]			= sanitize_inlist(features["vox_head_quills"], GLOB.vox_head_quills_list, "None")
	features["vox_neck_quills"]			= sanitize_inlist(features["vox_neck_quills"], GLOB.vox_neck_quills_list, "None")
	features["elzu_horns"]				= sanitize_inlist(features["elzu_horns"], GLOB.elzu_horns_list)
	features["tail_elzu"]				= sanitize_inlist(features["tail_elzu"], GLOB.tails_list_elzu)

	skin_tone_nose							= sanitize_inlist(skin_tone_nose, GLOB.skin_tones_nose)
	features["tajaran_ears"]				= sanitize_inlist(features["tajaran_ears"], GLOB.tajaran_ears_list, "plain")
	features["tajaran_hairs"]				= sanitize_inlist(features["tajaran_hairs"], GLOB.tajaran_hairs_list, "plain")
	features["tajaran_ears_markings"]		= sanitize_inlist(features["tajaran_ears_markings"], GLOB.tajaran_ears_markings_list, "None")
	features["tajaran_head_markings"]		= sanitize_inlist(features["tajaran_head_markings"], GLOB.tajaran_head_markings_list, "None")
	features["tajaran_nose_markings"]		= sanitize_inlist(features["tajaran_nose_markings"], GLOB.tajaran_nose_markings_list, "None")
	features["tajaran_facial_hairs"]		= sanitize_inlist(features["tajaran_facial_hairs"], GLOB.tajaran_facial_hairs_list, "None")
	features["tajaran_chest_markings"]		= sanitize_inlist(features["tajaran_chest_markings"], GLOB.tajaran_chest_markings_list, "None")
	features["tajaran_body_markings"]		= sanitize_inlist(features["tajaran_body_markings"], GLOB.tajaran_body_markings_list, "None")
	features["tajaran_tail"]				= sanitize_inlist(features["tajaran_tail"], GLOB.tajaran_tail_list, "Long")

	features["flavor_text"]				= sanitize_text(features["flavor_text"], initial(features["flavor_text"]))

	all_quirks = SANITIZE_LIST(all_quirks)

//Make sure all quirks are compatible
	check_quirk_compatibility()

	return TRUE

/datum/preferences/proc/save_character()
	if(!path)
		return FALSE
	var/savefile/S = new /savefile(path)
	if(!S)
		return FALSE
	S.cd = "/character[default_slot]"

	WRITE_FILE(S["version"]						, SAVEFILE_VERSION_MAX)	//load_character will sanitize any bad data, so assume up-to-date.)

	//Character
	WRITE_FILE(S["real_name"]					, real_name)
	WRITE_FILE(S["gender"]						, gender)
	WRITE_FILE(S["age"]							, age)
	WRITE_FILE(S["hair_color"]					, hair_color)
	WRITE_FILE(S["facial_hair_color"]			, facial_hair_color)
	WRITE_FILE(S["feature_grad_color"]			, features["grad_color"])
	WRITE_FILE(S["eye_color"]					, eye_color)
	WRITE_FILE(S["skin_tone"]					, skin_tone)
	WRITE_FILE(S["hairstyle_name"]				, hairstyle)
	WRITE_FILE(S["facial_style_name"]			, facial_hairstyle)
	WRITE_FILE(S["feature_grad_style"]			, features["grad_style"])
	WRITE_FILE(S["underwear"]					, underwear)
	WRITE_FILE(S["underwear_color"]				, underwear_color)
	WRITE_FILE(S["undershirt"]					, undershirt)
	WRITE_FILE(S["undershirt_color"]			, undershirt_color)
	WRITE_FILE(S["socks"]						, socks)
	WRITE_FILE(S["socks_color"]					, socks_color)
	WRITE_FILE(S["backpack"]					, backpack)
	WRITE_FILE(S["uplink_loc"]					, uplink_spawn_loc)
	WRITE_FILE(S["randomise"]					, randomise)
	WRITE_FILE(S["species"]						, pref_species.id)
	WRITE_FILE(S["phobia"]						, phobia)
	WRITE_FILE(S["body_size"]					, features["body_size"])
	WRITE_FILE(S["prosthetic_limbs"]			, prosthetic_limbs)
	WRITE_FILE(S["feature_mcolor"]				, features["mcolor"])
	WRITE_FILE(S["feature_mcolor2"]				, features["mcolor2"])
	WRITE_FILE(S["feature_ethcolor"]			, features["ethcolor"])
	WRITE_FILE(S["feature_lizard_tail"]			, features["tail_lizard"])
	WRITE_FILE(S["feature_human_tail"]			, features["tail_human"])
	WRITE_FILE(S["feature_lizard_face_markings"], features["face_markings"])
	WRITE_FILE(S["feature_lizard_horns"]		, features["horns"])
	WRITE_FILE(S["feature_human_ears"]			, features["ears"])
	WRITE_FILE(S["feature_lizard_frills"]		, features["frills"])
	WRITE_FILE(S["feature_lizard_spines"]		, features["spines"])
	WRITE_FILE(S["feature_lizard_body_markings"], features["body_markings"])
	WRITE_FILE(S["feature_lizard_legs"]			, features["legs"])
	WRITE_FILE(S["feature_moth_wings"]			, features["moth_wings"])
	WRITE_FILE(S["feature_moth_markings"]		, features["moth_markings"])
	WRITE_FILE(S["jumpsuit_style"]				, jumpsuit_style)
	WRITE_FILE(S["exowear"]						, exowear)
	WRITE_FILE(S["equipped_gear"]				, equipped_gear)
	WRITE_FILE(S["feature_moth_fluff"]			, features["moth_fluff"])
	WRITE_FILE(S["feature_spider_legs"]			, features["spider_legs"])
	WRITE_FILE(S["feature_spider_spinneret"]	, features["spider_spinneret"])
	WRITE_FILE(S["feature_spider_mandibles"]	, features["spider_mandibles"])
	WRITE_FILE(S["feature_squid_face"]			, features["squid_face"])
	WRITE_FILE(S["feature_ipc_screen"]			, features["ipc_screen"])
	WRITE_FILE(S["feature_ipc_antenna"]			, features["ipc_antenna"])
	WRITE_FILE(S["feature_ipc_tail"] 			, features["ipc_tail"])
	WRITE_FILE(S["feature_ipc_chassis"]			, features["ipc_chassis"])
	WRITE_FILE(S["feature_ipc_brain"]			, features["ipc_brain"])
	WRITE_FILE(S["feature_kepori_feathers"]		, features["kepori_feathers"])
	WRITE_FILE(S["feature_kepori_body_feathers"], features["kepori_body_feathers"])
	WRITE_FILE(S["feature_kepori_tail_feathers"], features["kepori_tail_feathers"])
	WRITE_FILE(S["feature_vox_head_quills"]		, features["vox_head_quills"])
	WRITE_FILE(S["feature_vox_neck_quills"]		, features["vox_neck_quills"])
	WRITE_FILE(S["feature_elzu_horns"]			, features["elzu_horns"])
	WRITE_FILE(S["feature_tail_elzu"]			, features["tail_elzu"])
	WRITE_FILE(S["feature_tajaran_ears"]				, features["tajaran_ears"])
	WRITE_FILE(S["feature_tajaran_hairs"]				, features["tajaran_hairs"])
	WRITE_FILE(S["feature_tajaran_ears_markings"]		, features["tajaran_ears_markings"])
	WRITE_FILE(S["feature_tajaran_head_markings"]		, features["tajaran_head_markings"])
	WRITE_FILE(S["feature_tajaran_noise_markings"]		, features["tajaran_nose_markings"])
	WRITE_FILE(S["feature_tajaran_facial_hairs"]		, features["tajaran_facial_hairs"])
	WRITE_FILE(S["feature_tajaran_chest_markings"]		, features["tajaran_chest_markings"])
	WRITE_FILE(S["feature_tajaran_body_markings"]		, features["tajaran_body_markings"])
	WRITE_FILE(S["feature_tajaran_tail"]				, features["tajaran_tail"])
	WRITE_FILE(S["fbp"]							, fbp)

	//Flavor text
	WRITE_FILE(S["feature_flavor_text"]			, features["flavor_text"])
	//Custom names
	for(var/custom_name_id in GLOB.preferences_custom_names)
		var/savefile_slot_name = custom_name_id + "_name" //TODO remove this
		WRITE_FILE(S[savefile_slot_name]		,custom_names[custom_name_id])
	//AI cores
	WRITE_FILE(S["preferred_ai_core_display"]	, preferred_ai_core_display)
	//Deprecated department security stuff
	WRITE_FILE(S["prefered_security_department"], prefered_security_department)
	//Preview outfit selection
	WRITE_FILE(S["selected_outfit"]				, selected_outfit)
	//Quirks
	WRITE_FILE(S["all_quirks"]					, all_quirks)

	return TRUE
