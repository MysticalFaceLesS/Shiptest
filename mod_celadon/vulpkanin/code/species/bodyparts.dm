/obj/item/bodypart
	var/skin_tone_nose = ""
	var/skin_tone_vulp = ""


/obj/item/bodypart/head/vulp
	icon = 'mod_celadon/vulp/icons/vulp_bodyparts.dmi'
	should_draw_greyscale = TRUE
	uses_mutcolor = TRUE
	limb_id = SPECIES_VULP
	bodytype = BODYTYPE_VULP | BODYTYPE_ORGANIC | BODYTYPE_HUMANOID

/obj/item/bodypart/chest/vulp
	icon = 'mod_celadon/vulp/icons/vulp_bodyparts.dmi'
	should_draw_greyscale = TRUE
	uses_mutcolor = TRUE
	limb_id = SPECIES_VULP
	is_dimorphic = FALSE
	acceptable_bodytype = BODYTYPE_VULP | BODYTYPE_HUMANOID
	bodytype = BODYTYPE_VULP | BODYTYPE_ORGANIC | BODYTYPE_HUMANOID

/obj/item/bodypart/l_arm/vulp
	icon = 'mod_celadon/vulp/icons/vulp_bodyparts.dmi'
	should_draw_greyscale = TRUE
	uses_mutcolor = TRUE
	limb_id = SPECIES_VULP
	bodytype = BODYTYPE_VULP | BODYTYPE_ORGANIC | BODYTYPE_HUMANOID

/obj/item/bodypart/r_arm/vulp
	icon = 'mod_celadon/vulp/icons/vulp_bodyparts.dmi'
	should_draw_greyscale = TRUE
	uses_mutcolor = TRUE
	limb_id = SPECIES_VULP
	bodytype = BODYTYPE_VULP | BODYTYPE_ORGANIC | BODYTYPE_HUMANOID

/obj/item/bodypart/leg/left/vulp
	icon = 'mod_celadon/vulp/icons/vulp_bodyparts.dmi'
	should_draw_greyscale = TRUE
	uses_mutcolor = TRUE
	limb_id = SPECIES_VULP
	bodytype = BODYTYPE_VULP | BODYTYPE_ORGANIC | BODYTYPE_HUMANOID

/obj/item/bodypart/leg/right/vulp
	icon = 'mod_celadon/vulp/icons/vulp_bodyparts.dmi'
	should_draw_greyscale = TRUE
	uses_mutcolor = TRUE
	limb_id = SPECIES_VULP
	bodytype = BODYTYPE_VULP | BODYTYPE_ORGANIC | BODYTYPE_HUMANOID


// vulp Robotic (Synths)
/obj/item/bodypart/chest/robot/vulp
	name = "prosthetic vulp chest"
	is_dimorphic = TRUE
	icon = 'icons/mob/augmentation/augments_lizard.dmi' // FIXME: TODO: ПОЧЕМУ ЛИЗАРД?!
	should_draw_greyscale = TRUE
	overlay_icon_state = TRUE
	bodytype = BODYTYPE_VULP | BODYTYPE_ROBOTIC
	acceptable_bodytype = BODYTYPE_VULP

/obj/item/bodypart/head/robot/vulp
	name = "prosthetic vulp head"
	icon = 'icons/mob/augmentation/augments_lizard.dmi'
	should_draw_greyscale = TRUE
	overlay_icon_state = TRUE
	bodytype = BODYTYPE_VULP | BODYTYPE_ROBOTIC

/obj/item/bodypart/l_arm/robot/vulp
	name = "prosthetic vulp left arm"
	icon = 'icons/mob/augmentation/augments_lizard.dmi'
	should_draw_greyscale = TRUE
	overlay_icon_state = TRUE
	bodytype = BODYTYPE_VULP | BODYTYPE_ROBOTIC

/obj/item/bodypart/r_arm/robot/vulp
	name = "prosthetic vulp right arm"
	icon = 'icons/mob/augmentation/augments_lizard.dmi'
	should_draw_greyscale = TRUE
	overlay_icon_state = TRUE
	bodytype = BODYTYPE_VULP | BODYTYPE_ROBOTIC

/obj/item/bodypart/leg/left/robot/vulp
	name = "prosthetic vulp left leg"
	icon = 'icons/mob/augmentation/augments_lizard.dmi'
	should_draw_greyscale = TRUE
	overlay_icon_state = TRUE
	bodytype = BODYTYPE_VULP | BODYTYPE_ROBOTIC

/obj/item/bodypart/leg/left/robot/vulp
	name = "prosthetic vulp right leg"
	icon = 'icons/mob/augmentation/augments_lizard.dmi'
	should_draw_greyscale = TRUE
	overlay_icon_state = TRUE
	bodytype = BODYTYPE_VULP | BODYTYPE_ROBOTIC

// Surplus vulp Robotic
/obj/item/bodypart/l_arm/robot/surplus/vulp
	name = "surplus prosthetic vulp left arm"
	icon = 'icons/mob/augmentation/augments_lizard.dmi'
	should_draw_greyscale = TRUE
	overlay_icon_state = TRUE
	bodytype = BODYTYPE_VULP | BODYTYPE_ROBOTIC

/obj/item/bodypart/r_arm/robot/surplus/vulp
	name = "surplus prosthetic vulp right arm"
	icon = 'icons/mob/augmentation/augments_lizard.dmi'
	should_draw_greyscale = TRUE
	overlay_icon_state = TRUE
	bodytype = BODYTYPE_VULP | BODYTYPE_ROBOTIC

/obj/item/bodypart/leg/left/robot/surplus/vulp
	name = "surplus prosthetic vulp left leg"
	icon = 'icons/mob/augmentation/augments_lizard.dmi'
	should_draw_greyscale = TRUE
	overlay_icon_state = TRUE
	bodytype = BODYTYPE_VULP | BODYTYPE_ROBOTIC

/obj/item/bodypart/leg/right/robot/surplus/vulp
	name = "surplus prosthetic vulp right leg"
	icon = 'icons/mob/augmentation/augments_lizard.dmi'
	should_draw_greyscale = TRUE
	overlay_icon_state = TRUE
	bodytype = BODYTYPE_VULP | BODYTYPE_ROBOTIC

/obj/item/bodypart/leg/left/robot/surplus/vulp/digitigrade
	name = "surplus prosthetic digitigrade vulp left leg"
	bodytype = BODYTYPE_VULP | BODYTYPE_ROBOTIC | BODYTYPE_DIGITIGRADE

/obj/item/bodypart/leg/right/robot/surplus/vulp/digitigrade
	name = "surplus prosthetic digitigrade vulp right leg"
	bodytype = BODYTYPE_VULP | BODYTYPE_ROBOTIC | BODYTYPE_DIGITIGRADE
