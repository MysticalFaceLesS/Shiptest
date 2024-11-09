/mob/living/carbon/human
	var/skin_tone_riol = "Black"  //Skin tone riol

/mob/living/carbon/human/species/riol
	race = /datum/species/riol

/datum/species
	/// Does the species use skintones or not?
	var/use_skintoneriol = FALSE
	var/obj/item/bodypart/riol_digi_l_leg = /obj/item/bodypart/leg/left/riol/digitigrade
	var/obj/item/bodypart/riol_digi_r_leg = /obj/item/bodypart/leg/right/riol/digitigrade

/datum/species/riol
	name = "\improper Riol"
	id = SPECIES_RIOL
	loreblurb = "Риолы - это вид гуманоидных лисиц. Риолы родом из -ДАННЫЕ УДАЛЕНЫ-, ныне проживают на частной торговой станции Мирмунвильнир, хотя их первоначальной родиной была -ДАННЫЕ УДАЛЕНЫ-, на текущий момент утеряно местонахождение."

	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_PRIDE | MIRROR_MAGIC | RACE_SWAP | ERT_SPAWN | SLIME_EXTRACT

	disliked_food = VEGETABLES | FRUIT | GRAIN | GROSS
	liked_food = MEAT | RAW | DAIRY
	digitigrade_customization = DIGITIGRADE_OPTIONAL

	attack_verb = "slash"
	attack_sound = 'sound/weapons/slash.ogg'
	miss_sound = 'sound/weapons/slashmiss.ogg'

	species_traits = list(EYECOLOR, LIPS, HAIR, FACEHAIR, EMOTE_OVERLAY, MUTCOLORS, MUTCOLORS_SECONDARY, SKINNOSECOLORS, SKINRIOLCOLORS, EARSRIOLCOLORS, HEADRIOLCOLORS, NOSERIOLCOLORS, CHESTRIOLCOLORS, BODYRIOLCOLORS )
	mutant_bodyparts = list(
		"riol_ears",
		"riol_hairs",
		"riol_ears_markings",
		"riol_head_markings",
		"riol_nose_markings",
		"riol_facial_hairs",
		"riol_chest_markings",
		"riol_body_markings",
		"riol_tail_markings",
		"riol_tail",
		"riol_legs"
		)
	default_features = list(
		"mcolor" = "0F0",
		"riol_ears" = "Plain",
		"riol_hairs" = "Plain",
		"riol_ears_markings" = "None",
		"riol_head_markings" = "None",
		"riol_nose_markings" = "None",
		"riol_facial_hairs" = "None",
		"riol_chest_markings" = "None",
		"riol_body_markings" = "None",
		"riol_tail_markings" = "None",
		"riol_tail" = "long",
		"riol_legs" = "Normal Legs",
		"body_size" = "Normal"
		)

	default_color = "424242"

	heatmod = 0.8
	coldmod = 1.2
	bodytemp_normal = HUMAN_BODYTEMP_NORMAL + 30
	bodytemp_heat_damage_limit = (HUMAN_BODYTEMP_NORMAL + 30) + 10
	bodytemp_cold_damage_limit = (HUMAN_BODYTEMP_NORMAL + 30) - 40

	meat = /obj/item/reagent_containers/food/snacks/meat/slab/human/mutant/riol 	//нарисовать/спиздить спрайт к нему
	//skinned_type = /obj/item/stack/sheet/animalhide/riol						//нужно сделать кожу из таяран и нарисовать/спиздить спрайт к нему

	species_language_holder = /datum/language_holder/riol

	ass_image = 'mod_celadon/_storge_icons/icons/ass/assfox.png'

	mutantears = /obj/item/organ/ears/riol		//нужно отделить уши от головы. и можно кинуть их в тот же файл. потом в органе прописать путь к файлу + имя файла
	mutanteyes = /obj/item/organ/eyes/riol
	mutanttongue = /obj/item/organ/tongue/riol
	mutant_organs = list(/obj/item/organ/tail/riol)

	bodytype = BODYTYPE_RIOL | BODYTYPE_ORGANIC

	species_chest = /obj/item/bodypart/chest/riol
	species_head = /obj/item/bodypart/head/riol
	species_l_arm = /obj/item/bodypart/l_arm/riol
	species_r_arm = /obj/item/bodypart/r_arm/riol
	species_l_leg = /obj/item/bodypart/leg/left/riol
	species_r_leg = /obj/item/bodypart/leg/right/riol
	riol_digi_l_leg = /obj/item/bodypart/leg/left/riol/digitigrade
	riol_digi_r_leg = /obj/item/bodypart/leg/right/riol/digitigrade

	species_robotic_chest = /obj/item/bodypart/chest/robot
	species_robotic_head = /obj/item/bodypart/head/robot
	species_robotic_l_arm = /obj/item/bodypart/l_arm/robot/surplus
	species_robotic_r_arm = /obj/item/bodypart/r_arm/robot/surplus
	species_robotic_l_leg = /obj/item/bodypart/leg/left/robot/surplus
	species_robotic_r_leg = /obj/item/bodypart/leg/right/robot/surplus

/datum/species/riol/random_name(gender = NEUTER, unique, lastname)
	if(gender != MALE)
		gender = pick(MALE, FEMALE)

	if(gender == MALE)
		return "[pick(GLOB.riol_names_male)]-[pick(GLOB.riol_last_names)]"

	return "[pick(GLOB.riol_names_female)]-[pick(GLOB.riol_last_names)]"

/datum/species/start_wagging_tail(mob/living/carbon/human/H)
	if("riol_tail" in mutant_bodyparts)
		mutant_bodyparts -= "riol_tail"
		mutant_bodyparts -= "riol_tail_markings"
		mutant_bodyparts |= "waggingriol_tail"
		mutant_bodyparts |= "wagging_riol_tail_markings"

	return ..()

/datum/species/stop_wagging_tail(mob/living/carbon/human/H)
	if("waggingriol_tail" in mutant_bodyparts)
		mutant_bodyparts -= "waggingriol_tail"
		mutant_bodyparts -= "wagging_riol_tail_markings"
		mutant_bodyparts |= "riol_tail"
		mutant_bodyparts |= "riol_tail_markings"

	return ..()

/datum/species/riol/on_species_gain(mob/living/carbon/C, datum/species/old_species, pref_load)
	. = ..() //call everything from species/on_species_gain()
	C.dna.add_mutation(OLFACTION)
