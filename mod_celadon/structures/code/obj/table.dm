/obj/structure/table/scrap
	name = "scrap table"
	desc = "It's a scrap, junk..."
	icon = 'mod_celadon/_storge_icons/icons/structures/tables/table_scrap.dmi'
	icon_state = "table-0"
	base_icon_state = "table"
	frame = /obj/structure/table_frame
	framestack = /obj/item/stack/ore/salvage/scrapmetal
	buildstack = /obj/item/stack/ore/salvage/scrapmetal
	resistance_flags = FLAMMABLE
	max_integrity = 60
	buildstackamount = 10
	smoothing_groups = list(SMOOTH_GROUP_SCRAP_TABLES) //Don't smooth with SMOOTH_GROUP_TABLES
	canSmoothWith = list(SMOOTH_GROUP_SCRAP_TABLES)
	flipped_table_type = /obj/structure/flippedtable/scraptable

	hitsound_type = PROJECTILE_HITSOUND_WOOD

/obj/structure/table/scrap/narsie_act(total_override = TRUE)
	switch(rand(1, 2))
		if(1)
			icon_state = "scrap_table"
		if(2)
			icon_state = "scrap_table_2"

	if(!total_override)
		..()

/obj/structure/flippedtable/scraptable
	icon = 'mod_celadon/_storge_icons/icons/structures/tables/flipped_tables.dmi'
	icon_state = "scrap_table"

/obj/structure/flippedtable/scraptable2
	icon = 'mod_celadon/_storge_icons/icons/structures/tables/flipped_tables.dmi'
	icon_state = "scrap_table_2"

/obj/structure/table/wood/reinforced/bar
	name = "reinforced wooden bar table"
	desc = "A reinforced version of the four-legged wooden bar table. Likely as easy to burn as a normal one."
	icon = 'mod_celadon/_storge_icons/icons/structures/tables/table_bar.dmi'
	icon_state = "table-0"
	base_icon_state = "table"
