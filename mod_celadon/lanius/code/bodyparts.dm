///состав:
/obj/item/organ/tongue/lanius
	name = "lanius jaw"
	desc = "Jaw of one of this lanius thing.. Better brought it back to him."
	icon = 'mod_celadon/_storge_icons/icons/lanius/lanius_organs.dmi'
	icon_state = "tongue"
	say_mod = "clicks"
	decay_factor = 5
	useable = FALSE
	modifies_speech = TRUE
	var/static/list/languages_possible_lanius = typecacheof(list(
		/datum/language/lanius_rattle
	))
	organ_flags = ORGAN_FROZEN

/obj/item/organ/tongue/lanius/Initialize(mapload)
	. = ..()
	languages_possible = languages_possible_lanius


/obj/item/organ/brain/lanius
	name = "lanius core"
	desc = "This is core of every lanius. Where did you get this?"
	icon = 'mod_celadon/_storge_icons/icons/lanius/lanius_organs.dmi'
	icon_state = "heart"
	zone = BODY_ZONE_CHEST
	decay_factor = 5
	organ_flags = ORGAN_VITAL | ORGAN_FROZEN

/obj/item/organ/liver/lanius
	zone = BODY_ZONE_HEAD
	useable = FALSE
	icon = null
	decay_factor = 0
	healing_factor = 10
	organ_flags = ORGAN_FROZEN

/obj/item/organ/heart/lanius
	zone = BODY_ZONE_HEAD
	useable = FALSE
	icon = null
	decay_factor = 0
	healing_factor = 10
	organ_flags = ORGAN_FROZEN

/obj/item/organ/heart/lanius/get_availability(datum/species/S)
	if(istype(S,/datum/species/lanius))
		return TRUE
	return ..()

/obj/item/organ/eyes/lanius
	useable = FALSE
	decay_factor = 0
	healing_factor = 10
	organ_flags = ORGAN_FROZEN
	flash_protect = FLASH_PROTECTION_WELDER

/obj/item/organ/ears/lanius
	useable = FALSE
	icon = null
	decay_factor = 0
	healing_factor = 10
	organ_flags = ORGAN_FROZEN

/obj/item/organ/stomach/lanius
	zone = BODY_ZONE_HEAD
	useable = FALSE
	icon = null
	decay_factor = 0
	healing_factor = 10
	organ_flags = ORGAN_FROZEN

/obj/item/bodypart/head/lanius
	icon = 'mod_celadon/_storge_icons/icons/lanius/lanius_bodyparts.dmi'
	should_draw_greyscale = TRUE
	uses_mutcolor = TRUE
	limb_id = SPECIES_LANIUS
	bodytype =  BODYTYPE_HUMANOID | BODYTYPE_ORGANIC

/obj/item/bodypart/head/lanius/drop_organs(mob/user, violent_removal)
	return

/obj/item/bodypart/chest/lanius
	icon = 'mod_celadon/_storge_icons/icons/lanius/lanius_bodyparts.dmi'
	should_draw_greyscale = TRUE
	uses_mutcolor = TRUE
	limb_id = SPECIES_LANIUS
	is_dimorphic = FALSE
	acceptable_bodytype =  BODYTYPE_HUMANOID | BODYTYPE_ORGANIC
	bodytype =  BODYTYPE_HUMANOID | BODYTYPE_ORGANIC

/obj/item/bodypart/l_arm/lanius
	icon = 'mod_celadon/_storge_icons/icons/lanius/lanius_bodyparts.dmi'
	should_draw_greyscale = TRUE
	uses_mutcolor = TRUE
	limb_id = SPECIES_LANIUS
	bodytype =  BODYTYPE_HUMANOID | BODYTYPE_ORGANIC

/obj/item/bodypart/r_arm/lanius
	icon = 'mod_celadon/_storge_icons/icons/lanius/lanius_bodyparts.dmi'
	should_draw_greyscale = TRUE
	uses_mutcolor = TRUE
	limb_id = SPECIES_LANIUS
	bodytype =  BODYTYPE_HUMANOID | BODYTYPE_ORGANIC

/obj/item/bodypart/leg/left/lanius
	icon = 'mod_celadon/_storge_icons/icons/lanius/lanius_bodyparts.dmi'
	should_draw_greyscale = TRUE
	uses_mutcolor = TRUE
	limb_id = SPECIES_LANIUS
	bodytype =  BODYTYPE_HUMANOID | BODYTYPE_ORGANIC

/obj/item/bodypart/leg/right/lanius
	icon = 'mod_celadon/_storge_icons/icons/lanius/lanius_bodyparts.dmi'
	should_draw_greyscale = TRUE
	uses_mutcolor = TRUE
	limb_id = SPECIES_LANIUS
	bodytype =  BODYTYPE_HUMANOID | BODYTYPE_ORGANIC

/obj/item/organ/cyberimp/arm/lanius_welder
	name = "разжиженный нестабильный материал"
	desc = "Извлеченная субстанция из руки ланиуса, видимо, служащая им подручной сваркой."
	icon = 'mod_celadon/_storge_icons/icons/lanius/items.dmi'
	icon_state = "weld"
	items_to_create = list(/obj/item/weldingtool/lanius)

/obj/item/organ/cyberimp/arm/lanius_welder/emp_act(severity)
	return

/obj/item/organ/cyberimp/arm/lanius_welder/on_life()
	if(!islanius(owner))
		to_chat(owner, "<span class='userdanger'>Субстанция выжигает вашу руку полностью, не оставляя даже костей!</span>")
		var/obj/item/bodypart/cutmeup = owner.get_bodypart(zone)
		cutmeup.dismember()
		qdel(cutmeup)
		qdel(src)

/obj/item/weldingtool/lanius
	name = "плавящаяся рука"
	desc = "Ого! Моя рука теплый, пора варить еда из стена корабля, пока капитан не видит."
	icon = 'mod_celadon/_storge_icons/icons/lanius/items.dmi'
	icon_state = "weld"
	item_state = "weld"
	lefthand_file = 'mod_celadon/_storge_icons/icons/lanius/inhands_l.dmi'
	righthand_file = 'mod_celadon/_storge_icons/icons/lanius/inhands_r.dmi'
	toolspeed = 0.75
	custom_materials = list()
	change_icons = 0

/obj/item/weldingtool/lanius/process()
	if(get_fuel() <= max_fuel)
		reagents.add_reagent(/datum/reagent/fuel, 1)
	..()
