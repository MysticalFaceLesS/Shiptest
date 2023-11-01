/obj/item/ammo_box/magazine/m10mm/rifle
	name = "rifle magazine (10mm)"
	desc = "A well-worn, 10-round magazine for the surplus rifle. These rounds do moderate damage, but struggle against armor."
	icon_state = "75-8"
	base_icon_state = "75"
	ammo_type = /obj/item/ammo_casing/c10mm
	caliber = "10mm"
	max_ammo = 10

/obj/item/ammo_box/magazine/m10mm/rifle/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[ammo_count() ? "8" : "0"]"

/obj/item/ammo_box/magazine/m556
	name = "toploader magazine (5.56x45mm)"
	desc = "An advanced, 30-round toploading magazine for the M-90gl Carbine. These rounds do moderate damage with good armor penetration."
	icon_state = "5.56m"
	ammo_type = /obj/item/ammo_casing/a556
	caliber = "5.56x45mm"
	max_ammo = 30
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/ammo_box/magazine/rifle47x33mm
	name = "\improper Solarian LMG magazine (4.73x33mm caseless)"
	desc = "A large, 50-round magazine for the Solar machine gun. These rounds do moderate damage with good armor penetration."
	icon_state = "47x33mm-50"
	base_icon_state = "47x33mm"
	ammo_type = /obj/item/ammo_casing/caseless/c47x33mm
	caliber = "4.73x33mm caseless"
	max_ammo = 100 //brrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/ammo_box/magazine/rifle47x33mm/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[round(ammo_count(),5)]"

/obj/item/ammo_box/magazine/aks74u
	name = "assault rifle magazine (5.45x39mm)"
	desc = "A slightly-curved, 30-round magazine for the AKS-74U. These rounds do moderate damage with good armor penetration."
	icon_state = "ak47_mag"
	ammo_type = /obj/item/ammo_casing/a545_39
	caliber = "5.45x39mm"
	max_ammo = 30

/obj/item/ammo_box/magazine/aks74u/update_icon_state()
	. = ..()
	icon_state = "ak47_mag-[!!ammo_count()]"

/obj/item/ammo_box/magazine/aknt
	name = "subcaliber assault rifle magazine (4.6x30mm)"
	desc = "A cheap, 30-round polymer magazine for the NT-SVG. These rounds do okay damage with average performance against armor."
	icon_state = "ak47_mag"
	ammo_type = /obj/item/ammo_casing/c46x30mm
	caliber = "4.6x30mm"
	max_ammo = 30

/obj/item/ammo_box/magazine/aknt/update_icon_state()
	. = ..()
	icon_state = "ak47_mag-[!!ammo_count()]"

/obj/item/ammo_box/magazine/ak47
	name = "assault rifle magazine (7.62x39mm)"
	desc = "A sharply-curved, 20-round magazine for 7.62x39mm assault rifles. These rounds do good damage with good armor penetration."
	icon_state = "ak47_mag"
	ammo_type = /obj/item/ammo_casing/a762_39
	caliber = "7.62x39mm"
	max_ammo = 30

/obj/item/ammo_box/magazine/ak47/update_icon_state()
	. = ..()
	icon_state = "ak47_mag-[!!ammo_count()]"

/obj/item/ammo_box/magazine/ebr
	name = "battle rifle magazine (.308 Winchester)"
	desc = "A small, 10-round steel magazine for the M514 EBR. These rounds do good damage with significant armor penetration."
	icon_state = "ebr_mag"
	ammo_type = /obj/item/ammo_casing/win308
	caliber = ".308 Winchester"
	max_ammo = 10

/obj/item/ammo_box/magazine/ebr/update_icon_state()
	. = ..()
	icon_state = "ebr_mag-[!!ammo_count()]"

/obj/item/ammo_box/magazine/gal
	name = "\improper GAL Magazine (.308 Winchester)"
	desc = "A standard 10-round magazine for GAL platform DMRs. These rounds do good damage with significant armor penetration."
	icon_state = "ebr_mag"
	ammo_type = /obj/item/ammo_casing/win308
	caliber = ".308 Winchester"
	max_ammo = 10

/obj/item/ammo_box/magazine/gal/update_icon_state()
	. = ..()
	icon_state = "galmag-[!!ammo_count()]"

/obj/item/ammo_box/magazine/p16
	name = "assault rifle magazine (5.56x45mm)"
	desc = "A simple, 30-round magazine for 5.56x45mm assault rifles. These rounds do moderate damage with good armor penetration."
	icon_state = "p16_mag"
	ammo_type = /obj/item/ammo_casing/a556
	caliber = "5.56x45mm"
	max_ammo = 30

/obj/item/ammo_box/magazine/p16/update_icon_state()
	. = ..()
	icon_state = "p16_mag-[!!ammo_count()]"

/obj/item/ammo_box/magazine/p16/g36sh
	name = "\improper G36-SH magazine"
	desc = " Polymer 20-round assault rifle magazine 5.56x45mm."
	icon = 'icons/obj/ammo.dmi'
	icon_state = "g36sh_mag"
	ammo_type = /obj/item/ammo_casing/a556
	max_ammo = 20

/obj/item/ammo_box/magazine/p16/g36sh/update_icon_state()
	. = ..()
	icon_state = "g36sh_mag-[!!ammo_count()]"

/obj/item/ammo_box/magazine/p16/g36
	name = "\improper G36 magazine"
	desc = "Polymer standart assault rifle magazine 5.56x45mm."
	icon = 'icons/obj/ammo.dmi'
	icon_state = "g36_mag"
	ammo_type = /obj/item/ammo_casing/a556
	max_ammo = 30

/obj/item/ammo_box/magazine/p16/g36/update_icon_state()
	. = ..()
	icon_state = "g36_mag-[!!ammo_count()]"

/obj/item/ammo_box/magazine/p16/g36drum
	name = "\improper G36 drum magazine"
	desc = "Polymer high-capacyti assault rifle drum 5.56x45mm."
	icon = 'icons/obj/ammo.dmi'
	item_state = "g36drum_mag"
	icon_state = "g36drum_mag"
	ammo_type = /obj/item/ammo_casing/a556
	max_ammo = 75

/obj/item/ammo_box/magazine/p16/g36drum/update_icon_state()
	. = ..()
	icon_state = "g36drum_mag-[!!ammo_count()]"

/obj/item/ammo_box/magazine/swiss
	name = "\improper Swiss Cheese Magazine (5.56x45mm)"
	desc = "A deft, 30-round magazine for the Swiss Cheese assault rifle. These rounds do moderate damage with good armor penetration."
	icon_state = "swissmag"
	ammo_type = /obj/item/ammo_casing/a556
	caliber = "5.56x45mm"
	max_ammo = 30

/obj/item/ammo_box/magazine/swiss/update_icon_state()
	. = ..()
	icon_state = "swissmag-[!!ammo_count()]"

/obj/item/ammo_box/aac_300blk_stripper
	name = "stripper clip (.300 BLK)"
	desc = "A stripper clip fitted for .300 Blackout."
	icon_state = "762"
	ammo_type = /obj/item/ammo_casing/aac_300blk
	caliber = ".300 BLK"
	max_ammo = 5
	multiple_sprites = AMMO_BOX_PER_BULLET
	w_class = WEIGHT_CLASS_TINY
	instant_load = TRUE

/obj/item/ammo_box/magazine/morita1
	name = "\improper assault rifle magazine (7.62x51mm)"
	desc = "A simple assault rifle magazine designed to chamber 7.62x51mm."
	icon_state = "morita1_mag"
	caliber = ".308 Winchester"
	ammo_type = /obj/item/ammo_casing/win308
	max_ammo = 25

/obj/item/ammo_box/magazine/morita1/update_icon_state()
	. = ..()
	icon_state = "morita1_mag-[!!ammo_count()]"

/obj/item/ammo_box/magazine/morita1/small
	name = "\improper small assault rifle magazine (7.62x51mm)"
	desc = "A simple assault rifle magazine designed to chamber 7.62x51mm."
	icon_state = "morita1_small_mag"
	ammo_type = /obj/item/ammo_casing/win308
	max_ammo = 10

/obj/item/ammo_box/magazine/morita1/small/update_icon_state()
	. = ..()
	icon_state = "morita1_small_mag-[!!ammo_count()]"

/obj/item/ammo_box/magazine/morita1/drum
	name = "\improper drum assault rifle magazine (7.62x51mm)"
	desc = "A simple assault rifle magazine designed to chamber 7.62x51mm."
	icon_state = "morita1_drum_mag"
	ammo_type = /obj/item/ammo_casing/win308
	max_ammo = 50

/obj/item/ammo_box/magazine/morita1/drum/update_icon_state()
	. = ..()
	icon_state = "morita1_drum_mag-[!!ammo_count()]"
