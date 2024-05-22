/obj/item/gun/ballistic/automatic/pistol/usp45
	name = "\improper USP .45"
	desc = "USP .45."
	icon = 'mod_celadon/weapons/icons/guns/usp.dmi'
	icon_state = "usp"
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/usp45_standart
	can_suppress = FALSE
	fire_sound = 'mod_celadon/weapons/sound/gun/shot_usp45.wav'
	rack_sound = 'sound/weapons/gun/pistol/candor_cocked.ogg' //На будущее заменить
	lock_back_sound = 'sound/weapons/gun/pistol/slide_lock.ogg' //На будущее заменить
	bolt_drop_sound = 'sound/weapons/gun/pistol/slide_drop.ogg' //На будущее заменить
	load_sound = 'sound/weapons/gun/pistol/candor_reload.ogg' //На будущее заменить
	load_empty_sound = 'sound/weapons/gun/pistol/candor_reload.ogg' //На будущее заменить
	eject_sound = 'sound/weapons/gun/pistol/candor_unload.ogg' //На будущее заменить
	eject_empty_sound = 'sound/weapons/gun/pistol/candor_unload.ogg' //На будущее заменить
	recoil = -2
	can_flashlight = TRUE
	gunlight_state = "mini-light"
	flight_x_offset = 21
	flight_y_offset = 10

/obj/item/gun/ballistic/automatic/pistol/usp45/Initialize()
	set_gun_light(new /obj/item/flashlight/seclite(src))
	return ..()

/obj/item/gun/ballistic/automatic/pistol/glock
	name = "\improper Glock 17"
	desc = "Glock 17"
	icon = 'mod_celadon/weapons/icons/guns/glock.dmi'
	icon_state = "glock"
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/glock_standart
	can_suppress = FALSE
	fire_sound = 'mod_celadon/weapons/sound/gun/shot_glock.wav'
	load_sound = 'sound/weapons/gun/pistol/mag_insert.ogg'//На будущее заменить
	load_empty_sound = 'sound/weapons/gun/pistol/mag_insert.ogg'//На будущее заменить
	eject_sound = 'sound/weapons/gun/pistol/mag_release.ogg'//На будущее заменить
	eject_empty_sound = 'sound/weapons/gun/pistol/mag_release.ogg'//На будущее заменить
	can_flashlight = TRUE
	flight_x_offset = 18
	flight_y_offset = 12
