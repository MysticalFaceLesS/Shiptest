/mob/living/carbon/human/update_inv_neck()
	remove_overlay(NECK_LAYER)

	if(client && hud_used && hud_used.inv_slots[TOBITSHIFT(ITEM_SLOT_NECK) + 1])
		var/atom/movable/screen/inventory/inv = hud_used.inv_slots[TOBITSHIFT(ITEM_SLOT_NECK) + 1]
		inv.update_appearance()

	if(wear_neck)
		var/obj/item/I = wear_neck
		update_hud_neck(I)
		if(!(ITEM_SLOT_NECK in check_obscured_slots()))
			var/icon_file
			var/handled_by_bodytype = TRUE

			if(!(icon_exists(icon_file, RESOLVE_ICON_STATE(I))))
				handled_by_bodytype = FALSE
				icon_file = DEFAULT_NECK_PATH

			overlays_standing[NECK_LAYER] = wear_neck.build_worn_icon(default_layer = NECK_LAYER, default_icon_file = icon_file, mob_species = CHECK_USE_AUTOGEN)


	apply_overlay(NECK_LAYER)
