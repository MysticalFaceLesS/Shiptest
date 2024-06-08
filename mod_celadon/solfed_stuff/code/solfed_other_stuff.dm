/obj/item/banner/solfed
	name = "Solar Federation baner"
	desc = "This is the Solar Federation banner, it looks quite democratic"
	icon = 'mod_celadon/solfed_stuff/icon/sol_fed_patriots.dmi'
	icon_state = "solfed_baner"
	item_state = "solfed_baner"
	lefthand_file = 'mod_celadon/solfed_stuff/icon/mob/sol_fed_banner_lefthand.dmi'
	righthand_file = 'mod_celadon/solfed_stuff/icon/mob/sol_fed_banner_righthand.dmi'
	warcry = "Glory to Solar Federation!"

/obj/structure/sign/solfed
	name = "\improper Solar Federation Logo"
	sign_change_name = "Solar Federation Logo"
	desc = "It's the logo of the Solar Federation. Most likely, this structure belongs to the armed forces of the Solar Federation."
	icon = 'mod_celadon/solfed_stuff/icon/sol_fed_patriots.dmi'
	icon_state = "sol_fed_wall_logo"
	is_editable = TRUE

/obj/item/poster/random_solfed
	name = "random solfed poster"
	poster_type = /obj/structure/sign/poster/solfed/random
	icon_state = "rolled_solgov"

/obj/structure/sign/poster/solfed/random
	name = "random solfed poster"
	icon_state = "random_solfed"
	icon = 'mod_celadon/solfed_stuff/icon/sol_fed_patriots.dmi'
	never_random = TRUE
	random_basetype = /obj/structure/sign/poster/solfed
	random_type = POSTER_SUBTYPES


/obj/structure/sign/poster/solfed/solfed
	name = "Poster - Solar Federation"
	desc = "The flag of the Solar Federation. As the galactic hegemony, they still haven't decided to plant their flag everywhere. Or have they?"
	icon_state = "sol_fed_poster"

/obj/structure/sign/poster/solfed/mars
	name = "Poster - Mars"
	desc = "This poster shows Mars, the 4th planet in SF-2345."
	icon_state = "mars_poster"

/obj/structure/sign/poster/solfed/protect
	name = "Poster - Protect"
	desc = "This Solar Federation poster has “Protect” written all over it. The m11 helmet is common among their armed forces."
	icon_state = "protect_poster"

/obj/structure/sign/poster/solfed/help
	name = "Poster - We're help!"
	desc = "This Solar Federation poster shows the logo of the Republic of Elysium and the inscription “We're help” underneath. Probably by help they mean the presence of armed forces on the territory of the Republic."
	icon_state = "were_help_poster"

/obj/item/bedsheet/solfed
	name = "\improper Solar Federation bedsheet"
	desc = "IIt's a quilt made in the style of the Solar Federation flag. Cover yourself with it and feel the warm embrace of your big brother."
	icon = 'mod_celadon/solfed_stuff/icon/sol_fed_patriots.dmi'
	mob_overlay_icon = 'mod_celadon/solfed_stuff/icon/mob/neck.dmi'
	icon_state = "solfed_bedsheet"
	item_state = "solfed_bedsheet"

/obj/item/clothing/under/solfed
	name = "Solar Federation marine form"
	desc = "This is the standard uniform of the Solar Federation Marines. It's colored dark blue."
	icon = 'mod_celadon/solfed_stuff/icon/sol_fed_patriots.dmi'
	mob_overlay_icon = 'mod_celadon/solfed_stuff/icon/mob/under.dmi'
	icon_state = "solfed_camo"
	item_state = "solfed_camo"
	armor = list("melee" = 10, "bullet" = 10, "laser" = 10,"energy" = 10, "bomb" = 20, "bio" = 40, "rad" = 40, "fire" = 30, "acid" = 30)


/obj/item/storage/belt/military/solfed
	name = "Solar Federation chest rig"
	desc = "These are the military webbing of the Solar Federation. It has the Solar Federation logo on the back."
	icon = 'mod_celadon/solfed_stuff/icon/sol_fed_patriots.dmi'
	mob_overlay_icon = 'mod_celadon/solfed_stuff/icon/mob/belt.dmi'
	icon_state = "solfed_webbing"
	item_state = "solfed_webbing"
	resistance_flags = FIRE_PROOF

/obj/item/clothing/head/helmet/solfedm11
	name = "Solar Federation m11 helmet"
	desc = "It's an m11 helmet in Solar Federation coloring. On its left side you can see the flag of the Solar Federation. It is usually worn by Solar Federation soldiers."
	icon = 'mod_celadon/solfed_stuff/icon/sol_fed_patriots.dmi'
	mob_overlay_icon = 'mod_celadon/solfed_stuff/icon/mob/head.dmi'
	icon_state = "solfed_m11"
	item_state = "solfed_m11"
