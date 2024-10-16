/obj/item/ammo_box/magazine/saiga
	name = "\improper saiga 6 bullet magazine (410x76mm buckshot)"
	desc = "A simple saiga magazine designed to chamber 410x76mm."
	icon = 'mod_celadon/_storge_icons/icons/weapons/obj/saiga.dmi'
	icon_state = "6_bullet-1"
	base_icon_state = "6_bullet"
	caliber = "410x76mm"
	ammo_type = /obj/item/ammo_casing/a410
	max_ammo = 6
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/ammo_box/magazine/saiga/update_icon_state()
	. = ..()
	icon_state = "6_bullet-[!!ammo_count()]"

/obj/item/ammo_box/magazine/saiga/empty
	start_empty = TRUE

/obj/item/ammo_box/magazine/saiga/slug
	name = "shotgun magazine (12g slugs)"
	ammo_type = /obj/item/ammo_casing/a410/a410_slug

/obj/item/ammo_box/magazine/saiga/flashet
	name = "shotgun magazine (12g flashet)"
	ammo_type = /obj/item/ammo_casing/a410/a410_flashet

/obj/item/ammo_box/magazine/saiga/medium
	name = "\improper saiga 9 bullet magazine (410x76mm buckshot)"
	desc = "A simple saiga magazine designed to chamber 410x76mm."
	icon = 'mod_celadon/_storge_icons/icons/weapons/obj/saiga.dmi'
	icon_state = "9_bullet-1"
	base_icon_state = "9_bullet"
	ammo_type = /obj/item/ammo_casing/a410
	max_ammo = 9
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/ammo_box/magazine/saiga/medium/update_icon_state()
	. = ..()
	icon_state = "9_bullet-[!!ammo_count()]"

/obj/item/ammo_box/magazine/saiga/medium/slug
	name = "shotgun medium magazine (12g slugs)"
	ammo_type = /obj/item/ammo_casing/a410/a410_slug

/obj/item/ammo_box/magazine/saiga/medium/flashet
	name = "shotgun medium magazine (12g flashet)"
	ammo_type = /obj/item/ammo_casing/a410/a410_flashet

/obj/item/ammo_box/magazine/saiga/drum
	name = "\improper saiga 14 bullet magazine (410x76mm buckshot)"
	desc = "A simple saiga magazine designed to chamber 410x76mm."
	icon = 'mod_celadon/_storge_icons/icons/weapons/obj/saiga.dmi'
	icon_state = "drum-1"
	base_icon_state = "drum"
	ammo_type = /obj/item/ammo_casing/a410
	max_ammo = 14
	w_class = WEIGHT_CLASS_NORMAL
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/ammo_box/magazine/saiga/drum/update_icon_state()
	. = ..()
	icon_state = "drum-[!!ammo_count()]"

/obj/item/ammo_box/magazine/saiga/drum/empty
	start_empty = TRUE

/obj/item/ammo_box/magazine/saiga/drum/slug
	name = "shotgun drum magazine (12g slugs)"
	ammo_type = /obj/item/ammo_casing/a410/a410_slug

/obj/item/ammo_box/magazine/saiga/drum/flashet
	name = "shotgun drum magazine (12g flashet)"
	ammo_type = /obj/item/ammo_casing/a410/a410_flashet

EMPTY_GUN_HELPER(shotgun/saiga)
