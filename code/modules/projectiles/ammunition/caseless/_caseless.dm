/obj/item/ammo_casing/caseless
	desc = "A caseless bullet casing."
	firing_effect_type = null
	heavy_metal = FALSE

/obj/item/ammo_casing/caseless/on_eject()
	// [CELADON-EDIT] - CELADON_FIXES
	// qdel(src) // CELADON-EDIT - ORIGINAL
	if(BB)  // Проверяем, что гильза не пустая
		forceMove(drop_location()) // Если гильза не spent, выбрасываем ее на землю.
		bounce_away(TRUE)
	else
		qdel(src) // Если гильза spent, удаляем ее.
		// [/CELADON-EDIT]

// Overridden; caseless ammo does not distinguish between "live" and "empty"/"spent" icon states (because it has no casing).
/obj/item/ammo_casing/caseless/update_icon_state()
	. = ..()
	icon_state = "[initial(icon_state)]"
