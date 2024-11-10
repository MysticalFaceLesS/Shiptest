/obj/item/gun/energy
	unscrewing_time = FALSE
	tac_reloads = TRUE

/obj/item/gun/energy/laser/captain
	internal_cell = TRUE

/obj/item/gun/energy/laser/bluetag
	internal_cell = TRUE

/obj/item/gun/energy/laser/redtag
	internal_cell = TRUE

/obj/item/gun/energy/spur
	internal_cell = TRUE

/obj/item/gun/energy/insert_cell(mob/user, obj/item/stock_parts/cell/gun/C)
	if(mag_size == MAG_SIZE_SMALL && !istype(C, /obj/item/stock_parts/cell/gun/mini))
		to_chat(user, span_warning("\The [C] doesn't seem to fit into \the [src]..."))
		return FALSE
	if(mag_size == MAG_SIZE_LARGE && !istype(C, /obj/item/stock_parts/cell/gun/large))
		to_chat(user, span_warning("\The [C] doesn't seem to fit into \the [src]..."))
		return FALSE
	if(mag_size != MAG_SIZE_LARGE && istype(C, /obj/item/stock_parts/cell/gun/large))
		to_chat(user, span_warning("\The [C] doesn't seem to fit into \the [src]..."))
		return FALSE
	if(user.transferItemToLoc(C, src))
		cell = C
		to_chat(user, span_notice("You load the [C] into \the [src]."))
		playsound(src, load_sound, load_sound_volume, load_sound_vary)
		update_appearance()
		return TRUE
	else
		to_chat(user, span_warning("You cannot seem to get \the [src] out of your hands!"))
		return FALSE
