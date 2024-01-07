//Copy-pasted kepori and lizard stuff
/datum/species/tajaran
	name = "\improper Tajaran"
	id = SPECIES_TAJARAN
	loreblurb = "The Tajaran race is a species of feline-like bipeds hailing from the planet of Ahdomai in the \
	S'randarr system. They have been brought up into the space age by the Humans and Skrell, and have been \
	influenced heavily by their long history of Slavemaster rule. They have a structured, clan-influenced way \
	of family and politics. They prefer colder environments, and speak a variety of languages, mostly Siik'Maas, \
	using unique inflections their mouths form."

	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_PRIDE | MIRROR_MAGIC | RACE_SWAP | ERT_SPAWN | SLIME_EXTRACT

	use_skintonetajaran = TRUE

	disliked_food = VEGETABLES | FRUIT | GRAIN | GROSS
	liked_food = MEAT | RAW | DAIRY

	attack_verb = "slash"
	attack_sound = 'sound/weapons/slash.ogg'
	miss_sound = 'sound/weapons/slashmiss.ogg'
	//species_clothing_path = 'icons/mob/clothing/species/kepori.dmi'

	species_traits = list(EYECOLOR, LIPS, HAIR, FACEHAIR, EMOTE_OVERLAY, MUTCOLORS, MUTCOLORS_SECONDARY, SKINNOSECOLORS, SKINTAJARANCOLORS)

	mutant_bodyparts = list(
		"tajaran_ears",
		"tajaran_hairs",
		"tajaran_ears_markings",
		"tajaran_head_markings",
		"tajaran_nose_markings",
		"tajaran_facial_hairs",
		"tajaran_chest_markings",
		"tajaran_body_markings",
		"tajaran_tail"
		)
	default_features = list(
		"mcolor" = "0F0",
		"tajaran_ears" = "plain",
		"tajaran_hairs" = "plain",
		"tajaran_ears_markings" = "none",
		"tajaran_head_markings" = "none",
		"tajaran_nose_markings" = "None",
		"tajaran_facial_hairs" = "None",
		"tajaran_chest_markings" = "None",
		"tajaran_body_markings" = "None",
		"tajaran_tail" = "long",
		"body_size" = "Normal"
		)

	default_color = "424242"

	heatmod = 0.8
	coldmod = 1.2
	bodytemp_normal = HUMAN_BODYTEMP_NORMAL + 30
	bodytemp_heat_damage_limit = (HUMAN_BODYTEMP_NORMAL + 30) + 10
	bodytemp_cold_damage_limit = (HUMAN_BODYTEMP_NORMAL + 30) - 40

	meat = /obj/item/reagent_containers/food/snacks/meat/slab/human/mutant/tajaran 	//нарисовать/спиздить спрайт к нему
	//skinned_type = /obj/item/stack/sheet/animalhide/tajaran						//нужно сделать кожу из таяран и нарисовать/спиздить спрайт к нему

	species_language_holder = /datum/language_holder/tajaran

	ass_image = 'icons/ass/asscat.png'

	mutantears = /obj/item/organ/ears/tajaran		//нужно отделить уши от головы. и можно кинуть их в тот же файл. потом в органе прописать путь к файлу + имя файла
	mutanteyes = /obj/item/organ/eyes/tajaran
	mutanttongue = /obj/item/organ/tongue/tajaran
	mutant_organs = list(
		/obj/item/organ/tail/tajaran)

	bodytype = BODYTYPE_TAJARAN

	species_chest = /obj/item/bodypart/chest/tajaran
	species_head = /obj/item/bodypart/head/tajaran
	species_l_arm = /obj/item/bodypart/l_arm/tajaran
	species_r_arm = /obj/item/bodypart/r_arm/tajaran
	species_l_leg = /obj/item/bodypart/leg/left/tajaran
	species_r_leg = /obj/item/bodypart/leg/right/tajaran

//	var/obj/item/bodypart/tail/species_tail = /obj/item/bodypart/tail/tajaran
//	var/obj/item/bodypart/external_ears/species_external_ears = /obj/item/bodypart/external_ears/tajaran


	species_robotic_chest = /obj/item/bodypart/chest/robot
	species_robotic_head = /obj/item/bodypart/head/robot
	species_robotic_l_arm = /obj/item/bodypart/l_arm/robot/surplus
	species_robotic_r_arm = /obj/item/bodypart/r_arm/robot/surplus
	species_robotic_l_leg = /obj/item/bodypart/leg/left/robot/surplus
	species_robotic_r_leg = /obj/item/bodypart/leg/right/robot/surplus

//	var/obj/item/bodypart/tail/species_robotic_tail = /obj/item/bodypart/tail/tajaran/
//	var/obj/item/bodypart/external_ears/species_robotic_external_ears = /obj/item/bodypart/external_ears/tajaran

///datum/species/tajaran/replace_body(mob/living/carbon/C, datum/species/new_species, robotic = FALSE)
//	return ..()		//ради мемов

/datum/species/tajaran/get_GLOB_hair(index, gender)
	if(index)
		return GLOB.tajaran_hairs_list[index]
	return GLOB.tajaran_hairs_list

/datum/species/tajaran/get_GLOB_facial_hair(index, gender)
	if(index)
		return GLOB.tajaran_facial_hairs_list[index]
	return GLOB.tajaran_facial_hairs_list

/datum/species/tajaran/random_hairstyle(gender)
	return pick(GLOB.tajaran_hairs_list)

/datum/species/tajaran/random_facial_hairstyle(gender)
	return pick(GLOB.tajaran_facial_hairs_list)
//some MORE shitcoding
/datum/species/tajaran/handle_hair(mob/living/carbon/human/H, forced_colour, custom_hairs_extensions = 'icons/mob/species/tajaran/tajaran_hairs.dmi', custom_facial_hair_extensions = 'icons/mob/species/tajaran/tajaran_facial_hairs.dmi')
	return ..()

/datum/species/tajaran/random_name(gender,unique,lastname)
	//code by @valtor0
	/*
	var/static/list/tajaran_female_ru_endings_list = list("и","а","о","е","й","ь") // Customise this with ru_name_syllables changes.
	var/list/ru_name_syllables = list("кан","тай","кир","раи","кии","мир","кра","тэк","нал","вар","хар","марр","ран","дарр", \
	"мирк","ири","дин","манг","рик","зар","раз","кель","шера","тар","кей","ар","но","маи","зир","кер","нир","ра",\
	"ми","рир","сей","эка","гир","ари","нэй","нре","ак","таир","эрай","жин","мра","зур","рин","сар","кин","рид","эра","ри","эна")
	*/
	var/static/list/tajaran_female_en_endings_list = list("i","a","o","e","y","u") // Customise this with en_name_syllables changes.
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
		if(!(ending in tajaran_female_en_endings_list))
			full_name += "а"
	if(prob(75))
		full_name += " [pick(list("Hadii","Kaitam","Jan-Hazan","Nyrir’Ahan"))]" //"Хадии","Кайтам","Жан-Хазан","Нъярир’Ахан"
	else if(prob(80))
		full_name += " [pick(list("Anai-Sanday","Navarr-Sanday","Roky-Sanday","Shenuar-Sanday"))]" //"Энай-Сэндай","Наварр-Сэндай","Року-Сэндай","Шенуар-Сэндай"
	return full_name

/* эта шляпа нужна, если мы будем давать какие-то кнопки таяранам, которые слева сверху, по типу "вкл/выкл фонарик ПДА"

/datum/species/tajaran/on_species_gain(mob/living/carbon/C, datum/species/old_species, pref_load)
	..()
	if(ishuman(C))
*/

/* антипод функции выше - убираем кнопки\плюшки таяранам

/datum/species/kepori/on_species_loss(mob/living/carbon/human/C, datum/species/new_species, pref_load)
	if(keptackle)
		keptackle.Remove(C)
	qdel(C.GetComponent(/datum/component/tackler))
	..()
*/
