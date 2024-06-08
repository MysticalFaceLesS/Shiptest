// Miscelanious

/obj/structure/curtain/cloth/elysim
	icon = 'mod_celadon/elysium_stuff/icons/obj/Elysim_patriots.dmi'
	icon_type = "elysim_fancy"
	icon_state = "elysim_fancy-open"

/obj/item/banner/elysim
	name = "Elysim banner"
	desc = "The banner of Elysim, Strengthens the faith of those who deserve."
	icon = 'mod_celadon/elysium_stuff/icons/obj/Elysim_patriots.dmi'
	icon_state = "banner_elysim"
	item_state = "banner_elysim"
	lefthand_file = 'mod_celadon/elysium_stuff/icons/mob/elysim_banner_left.dmi'
	righthand_file = 'mod_celadon/elysium_stuff/icons/mob/elysim_banner_right.dmi'
	warcry = "Glory to the nation!"

/obj/item/storage/book/bible/koran
	name = "Koran"
	icon_state = "koran"
	item_state = "koran"
	deity_name = "Allah"

// Posters

/obj/item/poster/random_elysim
	name = "random elysim poster"
	poster_type = /obj/structure/sign/poster/elysim/random
	icon_state = "rolled_elysim"

/obj/structure/sign/poster/elysim/random
	name = "random elysim poster"
	icon = 'mod_celadon/elysium_stuff/icons/obj/Elysim_patriots.dmi'
	icon_state = "random_elysim"
	never_random = TRUE
	random_basetype = /obj/structure/sign/poster/elysim
	random_type = POSTER_SUBTYPES

/obj/structure/sign/poster/elysim/logo // \"Breathable, if it weren't so darn cold.\"
	name = "Elysim"
	desc = "Poster of Elysim Republic. The most common logo. Nothing noteworthy"
	icon = 'mod_celadon/elysium_stuff/icons/obj/Elysim_patriots.dmi'
	icon_state = "poster-elysim"

/obj/structure/sign/poster/elysim/protest
	name = "DownSolFed"
	desc = "Poster of Elysim Republic. \"This poster with its entire appearance screams No deals with traitors! \""
	icon = 'mod_celadon/elysium_stuff/icons/obj/Elysim_patriots.dmi'
	icon_state = "poster-nosf"

/obj/structure/sign/poster/elysim/sonofelysim
	name = "Elysim Son"
	desc = "Poster of the Elisima Republic depicting a stately man.The inscription reads \"God will direct his punishing hand! For the glory of Elysium!\""
	icon = 'mod_celadon/elysium_stuff/icons/obj/Elysim_patriots.dmi'
	icon_state = "poster-son_elysim"

/obj/structure/sign/poster/elysim/ak47
	name = "No SolFed"
	desc = "Poster of the Elysim Republic depicting iconic weapons from a previous era. \"Even a child is ready to protect his home!\""
	icon = 'mod_celadon/elysium_stuff/icons/obj/Elysim_patriots.dmi'
	icon_state = "poster-ak47"

/obj/structure/sign/elysim
	name = "\improper Elysim logo sign"
	sign_change_name = "Rebel Logo - Elysim"
	desc = "A sign with the Elysim logo on it. Glory to Human race!"
	icon = 'mod_celadon/elysium_stuff/icons/obj/Elysim_patriots.dmi'
	icon_state = "elysim"
	is_editable = TRUE
