// Дефайн отвечающий за создание датума с балистическим оружием без магазина
EMPTY_GUN_HELPER(automatic/powered/gauss/gar)
EMPTY_GUN_HELPER(automatic/powered/gauss/gar/suns)
EMPTY_GUN_HELPER(automatic/smg/skm_carbine/inteq)
EMPTY_GUN_HELPER(automatic/pistol/deagle)

// Создаём кучу ганкейсов, чтобы заполнить ими карго
/obj/item/storage/guncase/gauss
/obj/item/storage/guncase/gauss/PopulateContents()
	new /obj/item/gun/ballistic/automatic/powered/gauss/gar/no_mag(src)
	new /obj/item/ammo_box/magazine/gar/empty(src)
	new /obj/item/ammo_box/magazine/gar/empty(src)

/obj/item/ammo_box/magazine/gar/empty
	start_empty = TRUE

/obj/item/storage/guncase/gauss/suns
/obj/item/storage/guncase/gauss/suns/PopulateContents()
	new /obj/item/gun/ballistic/automatic/powered/gauss/gar/suns/no_mag(src)
	new /obj/item/ammo_box/magazine/gar/empty(src)
	new /obj/item/ammo_box/magazine/gar/empty(src)

/obj/item/storage/guncase/bulldog
/obj/item/storage/guncase/bulldog/PopulateContents()
	new /obj/item/gun/ballistic/shotgun/automatic/bulldog/no_mag(src)
	new /obj/item/ammo_box/magazine/m12g_bulldog/empty(src)
	new /obj/item/ammo_box/magazine/m12g_bulldog/empty(src)

/obj/item/ammo_box/magazine/m12g_bulldog/empty
	start_empty = TRUE

/obj/item/storage/guncase/bulldog/inteq
/obj/item/storage/guncase/bulldog/inteq/PopulateContents()
	new /obj/item/gun/ballistic/shotgun/automatic/bulldog/inteq/no_mag(src)
	new /obj/item/ammo_box/magazine/m12g_bulldog/empty(src)
	new /obj/item/ammo_box/magazine/m12g_bulldog/empty(src)

/obj/item/storage/guncase/skm_carabine
/obj/item/storage/guncase/skm_carabine/PopulateContents()
	new /obj/item/gun/ballistic/automatic/smg/skm_carbine/inteq/no_mag(src)
	new /obj/item/ammo_box/magazine/smgm10mm/empty(src)
	new /obj/item/ammo_box/magazine/smgm10mm/empty(src)

/obj/item/ammo_box/magazine/smgm10mm/empty
	start_empty = TRUE

/obj/item/storage/pistolcase/commander/inteq
/obj/item/storage/pistolcase/commander/inteq/PopulateContents()
	new /obj/item/gun/ballistic/automatic/pistol/commander/inteq/no_mag(src)
	new /obj/item/ammo_box/magazine/co9mm/empty(src)
	new /obj/item/ammo_box/magazine/co9mm/empty(src)

/obj/item/storage/pistolcase/deagle
/obj/item/storage/pistolcase/deagle/PopulateContents()
	new /obj/item/gun/ballistic/automatic/pistol/deagle/no_mag(src)
	new /obj/item/ammo_box/magazine/m50/empty(src)
	new /obj/item/ammo_box/magazine/m50/empty(src)

/obj/item/ammo_box/magazine/m50/empty
	start_empty = TRUE

/obj/item/storage/guncase/hydra
/obj/item/storage/guncase/hydra/PopulateContents()
	new /obj/item/gun/ballistic/automatic/assault/hydra/no_mag(src)
	new /obj/item/ammo_box/magazine/m556_42_hydra/empty(src)
	new /obj/item/ammo_box/magazine/m556_42_hydra/empty(src)

/obj/item/ammo_box/magazine/m556_42_hydra/empty
	start_empty = TRUE


