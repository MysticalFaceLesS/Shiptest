// Bartender

/obj/item/card/id/elysium_Bartender
	name = "\improper Elysium bar access card"
	desc = "An access card sourced from Elysium Bartender."
	icon = 'mod_celadon/_storge_icons/icons/obj/elysium_card.dmi'
	icon_state = "elysium"
	uses_overlays = FALSE

/obj/item/card/id/elysium_Bartender/Initialize()
	access = get_service_accesses_outpost()
	. = ..()

// Cook

/obj/item/card/id/elysium_cook
	name = "\improper Elysium kitchen access card"
	desc = "An access card sourced from Elysium kitchen."
	icon = 'mod_celadon/_storge_icons/icons/obj/elysium_card.dmi'
	icon_state = "elysium"
	uses_overlays = FALSE

/obj/item/card/id/elysium_cook/Initialize()
	access = get_service_accesses_outpost()
	. = ..()
