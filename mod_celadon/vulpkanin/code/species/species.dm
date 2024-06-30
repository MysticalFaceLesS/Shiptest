/mob/living/carbon/human
	var/skin_tone_vulp = "Black"  //Skin tone vulp

/mob/living/carbon/human/species/vulp
	race = /datum/species/vulp

/datum/species
	/// Does the species use skintones or not?
	var/use_skintonevulp = FALSE

/datum/species/vulp
	name = "\improper Vulpkanin"
	id = SPECIES_VULP
	loreblurb = "Vulpkanin are a species of sharp-witted canine-pideds residing on the planet Altam just barely within the \
	dual-star Vazzend system. Their politically de-centralized society and independent natures have led them to become a species and \
	culture both feared and respected for their scientific breakthroughs. Discovery, loyalty, and utilitarianism dominates their lifestyles \
	to the degree it can cause conflict with more rigorous and strict authorities. They speak a guttural language known as 'Canilunzt' \
    which has a heavy emphasis on utilizing tail positioning and ear twitches to communicate intent."

	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_PRIDE | MIRROR_MAGIC | RACE_SWAP | ERT_SPAWN | SLIME_EXTRACT

	use_skintonevulp = TRUE

	disliked_food = VEGETABLES | FRUIT | GRAIN | GROSS
	liked_food = MEAT | RAW | DAIRY

	attack_verb = "slash"
	attack_sound = 'sound/weapons/slash.ogg'
	miss_sound = 'sound/weapons/slashmiss.ogg'
	//species_clothing_path = 'icons/mob/clothing/species/kepori.dmi'

	species_traits = list(EYECOLOR, LIPS, HAIR, FACEHAIR, EMOTE_OVERLAY, MUTCOLORS, MUTCOLORS_SECONDARY, SKINNOSECOLORS, SKINVULPCOLORS)

	mutant_bodyparts = list(
		"vulp_ears",
		"vulp_hairs",
		"vulp_ears_markings",
		"vulp_head_markings",
		"vulp_nose_markings",
		"vulp_facial_hairs",
		"vulp_chest_markings",
		"vulp_body_markings",
		"vulp_tail"
		)
	default_features = list(
		"mcolor" = "0F0",
		"vulp_ears" = "Plain",
		"vulp_hairs" = "Plain",
		"vulp_ears_markings" = "None",
		"vulp_head_markings" = "None",
		"vulp_nose_markings" = "None",
		"vulp_facial_hairs" = "None",
		"vulp_chest_markings" = "None",
		"vulp_body_markings" = "None",
		"vulp_tail" = "long",
		"body_size" = "Normal"
		)

	default_color = "424242"

	heatmod = 0.8
	coldmod = 1.2
	bodytemp_normal = HUMAN_BODYTEMP_NORMAL + 30
	bodytemp_heat_damage_limit = (HUMAN_BODYTEMP_NORMAL + 30) + 10
	bodytemp_cold_damage_limit = (HUMAN_BODYTEMP_NORMAL + 30) - 40

	meat = /obj/item/reagent_containers/food/snacks/meat/slab/human/mutant/vulp 	//нарисовать/спиздить спрайт к нему
	//skinned_type = /obj/item/stack/sheet/animalhide/vulp						//нужно сделать кожу из таяран и нарисовать/спиздить спрайт к нему

	species_language_holder = /datum/language_holder/vulp

	ass_image = 'icons/ass/asscat.png'

	mutantears = /obj/item/organ/ears/vulp		//нужно отделить уши от головы. и можно кинуть их в тот же файл. потом в органе прописать путь к файлу + имя файла
	mutanteyes = /obj/item/organ/eyes/vulp
	mutanttongue = /obj/item/organ/tongue/vulp
	mutant_organs = list(/obj/item/organ/tail/vulp)

	bodytype = BODYTYPE_VULP | BODYTYPE_ORGANIC

	species_chest = /obj/item/bodypart/chest/vulp
	species_head = /obj/item/bodypart/head/vulp
	species_l_arm = /obj/item/bodypart/l_arm/vulp
	species_r_arm = /obj/item/bodypart/r_arm/vulp
	species_l_leg = /obj/item/bodypart/leg/left/vulp
	species_r_leg = /obj/item/bodypart/leg/right/vulp

	species_robotic_chest = /obj/item/bodypart/chest/robot
	species_robotic_head = /obj/item/bodypart/head/robot
	species_robotic_l_arm = /obj/item/bodypart/l_arm/robot/surplus
	species_robotic_r_arm = /obj/item/bodypart/r_arm/robot/surplus
	species_robotic_l_leg = /obj/item/bodypart/leg/left/robot/surplus
	species_robotic_r_leg = /obj/item/bodypart/leg/right/robot/surplus

/datum/species/vulp/random_name(gender,unique,lastname)
	//code by @valtor0
	/*
	var/static/list/vulp_female_ru_endings_list = list("и","а","о","е","й","ь") // Customise this with ru_name_syllables changes.
	var/list/ru_name_syllables = list("кан","тай","кир","раи","кии","мир","кра","тэк","нал","вар","хар","марр","ран","дарр", \
	"мирк","ири","дин","манг","рик","зар","раз","кель","шера","тар","кей","ар","но","маи","зир","кер","нир","ра",\
	"ми","рир","сей","эка","гир","ари","нэй","нре","ак","таир","эрай","жин","мра","зур","рин","сар","кин","рид","эра","ри","эна")
	*/
	var/static/list/vulp_female_en_endings_list = list("i","a","o","e","y","u") // Customise this with en_name_syllables changes.
	var/list/en_name_syllables = list("kan","taj","kir","rai","kii","mir","kra","tak","nal","var","har","marr","ran","darr", \
	"mirk","iri","din","mang","rik","zar","raz","kel","shera","tar","kai","ar","no","mai","air","ker","nir","ra",\
	"mi","rir","sei","eka","gir","ari","nai","nre","ak","tajr","arai","jin","mra","aur","rin","sar","kin","rid","era","ri","ena")
	var/apostrophe = "’"
	var/new_name = ""
	var/full_name = ""

	for(var/i = 0; i<2; i++)
		for(var/x = rand(1,2); x>0; x--)
			new_name += pick_n_take(en_name_syllables)
		new_name += apostrophe
		apostrophe = ""
	full_name = "[capitalize(lowertext(new_name))]"
	if(gender == FEMALE)
		var/ending = copytext(full_name, -2)
		if(!(ending in vulp_female_en_endings_list))
			full_name += "а"
	if(prob(75))
		full_name += " [pick(list("Hadii","Kaitam","Jan-Hazan","Nyrir’Ahan"))]" //"Хадии","Кайтам","Жан-Хазан","Нъярир’Ахан"
	else if(prob(80))
		full_name += " [pick(list("Anai-Sanday","Navarr-Sanday","Roky-Sanday","Shenuar-Sanday"))]" //"Энай-Сэндай","Наварр-Сэндай","Року-Сэндай","Шенуар-Сэндай"
	return full_name


/datum/species/start_wagging_tail(mob/living/carbon/human/H)
	if("vulp_tail" in mutant_bodyparts)
		mutant_bodyparts -= "vulp_tail"
		mutant_bodyparts |= "waggingvulp_tail"

	return ..()

/datum/species/stop_wagging_tail(mob/living/carbon/human/H)
	if("waggingvulp_tail" in mutant_bodyparts)
		mutant_bodyparts -= "waggingvulp_tail"
		mutant_bodyparts |= "vulp_tail"

	return ..()
