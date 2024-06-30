
/proc/random_unique_vulp_name(gender, attempts_to_find_unique_name=10)
	for(var/i in 1 to attempts_to_find_unique_name)
		. = capitalize(vulp_name(gender))

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

/proc/random_skin_tone_vulp()
	return pick(GLOB.skin_tones_vulp)

GLOBAL_LIST_INIT(skin_tones_vulp, sortList(list(
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

/proc/vulp_name(gender)
	if(gender == MALE)
		return "[pick(GLOB.vulp_names_male)]-[pick(GLOB.vulp_names_male)]"
	else
		return "[pick(GLOB.vulp_names_female)]-[pick(GLOB.vulp_names_female)]"
