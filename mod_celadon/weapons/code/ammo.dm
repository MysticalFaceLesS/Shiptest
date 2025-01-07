
//Коробки патронов

//5.56

/datum/supply_pack/ammo/box556_box
	name = "Коробка патронов 5.56mm"
	desc = "Содержит одну коробку патронов."
	contains = list(/obj/item/storage/box/ammo/a556_box)
	cost = 500

/datum/supply_pack/ammo/box556/a856_box
	name = "Коробка патронов 5.56mm(а856)"
	desc = "Содержит одну коробку патронов."
	contains = list(/obj/item/storage/box/ammo/a556_box/a856)
	cost = 650

/datum/supply_pack/ammo/box556/m903_box
	name = "Коробка патронов 5.56mm(m903)"
	desc = "Содержит одну коробку патронов."
	contains = list(/obj/item/storage/box/ammo/a556_box/m903)
	cost = 1300

//.308

/datum/supply_pack/ammo/a308_box
	name = "Коробка патронов .308"
	desc = "Содержит одну коробку патронов."
	contains = list(/obj/item/storage/box/ammo/a308)
	cost = 650

/datum/supply_pack/ammo/a308_rubber_box
	name = "Коробка патронов .308(Резина)"
	desc = "Содержит одну коробку патронов."
	contains = list(/obj/item/storage/box/ammo/a308/a308_rub)
	cost = 300

/datum/supply_pack/ammo/a308_sp_box
	name = "Коробка патронов .308(Охотничий)"
	desc = "Содержит одну коробку патронов."
	contains = list(/obj/item/storage/box/ammo/a308/a308_sp)
	cost = 800

/datum/supply_pack/ammo/a308_ap_box
	name = "Коробка патронов .308(Бронебойный)"
	desc = "Содержит одну коробку патронов."
	contains = list(/obj/item/storage/box/ammo/a308/a308_ap)
	cost = 1300

/datum/supply_pack/ammo/a858_box
	name = "8x58mm Caseless Ammo box"
	desc = "Contains a 8x58mm Caseless Ammo box for the standard-issue SSG-669C, containing fifty rounds."
	contains = list(/obj/item/storage/box/ammo/a858_ammo_box)
	cost = 750

/datum/supply_pack/ammo/a858_clip
	name = "8x58mm Caseless Clip"
	desc = "A 5-round stripper clip for the SSG-669C rifle. These rounds do good damage with significant armor penetration"
	contains = list(/obj/item/ammo_box/a858)
	cost = 500

// Antifauna bullets
/obj/projectile/bullet/bof
	name = "4.6x30mm BoF"
	damage = 10

/obj/projectile/bullet/bof/on_hit(atom/target, blocked)
	var/mob/living/T = target
	if((isminingfauna(T)) && (blocked != 100))
		T.apply_damage(50, BRUTE, null, FALSE)
	return ..()

/obj/item/ammo_casing/c46x30mm/bof
	name = "4.6x30mm Bane of Fauna"
	desc = "A 4.6x30mm fauna hunting bullets"
	bullet_skin = "ap"
	projectile_type = /obj/projectile/bullet/bof

// SHOTGUN BUCKSHOT
/obj/projectile/bullet/pellet/bof
	name = "bof pellet"
	damage = 8
	var/bof = 17
	armour_penetration = -10
	tile_dropoff = 0.2

/obj/projectile/bullet/pellet/bof/on_hit(atom/target, blocked)
	var/mob/living/T = target
	if((isminingfauna(T)) && (blocked != 100))
		T.apply_damage(bof, BRUTE, null, FALSE)
	return ..()

/obj/projectile/bullet/pellet/bof/Range() //10% loss per tile = max range of 10, generally
	..()
	if(bof > 0)
		bof -= tile_dropoff * 2

/obj/item/ammo_casing/shotgun/bof
	name = "fauna-hunting buckshot shell"
	desc = "An anti-fauna buckshot shell for exotic hunting."
	icon = 'mod_celadon/_storge_icons/icons/obj/bof_bullets.dmi'
	icon_state = "bof"
	pellets = 5
	variance = 20
	custom_materials = list(/datum/material/titanium=4000, /datum/material/plasma=2000, /datum/material/gold=2000)
	projectile_type = /obj/projectile/bullet/pellet/bof

/obj/item/ammo_casing/shotgun/bof/update_icon_state()
	. = ..()
	if(icon_state == "[initial(icon_state)]-empty")
		custom_materials = list(/datum/material/titanium=500)

/obj/item/disk/design_disk/bof_disk/bof_buckshot
	name = "Fauna hunting bullet design disk"
	var/design = /datum/design/bane_of_fauna/bof_buckshot

/obj/item/disk/design_disk/bof_disk/bof_buckshot/Initialize()
	. = ..()
	blueprints[1] = new design

/datum/design/bane_of_fauna/bof_buckshot
	name = "Fauna hunting bullet"
	id = "bof-bullet"
	desc = "A rather odd bullet design that works well against most fauna."
	build_type = AUTOLATHE
	build_path = /obj/item/ammo_casing/shotgun/bof
	materials = list(
		/datum/material/titanium = 4000,
		/datum/material/plasma = 2000,
		/datum/material/gold = 2000,
	)
// 410x76
/datum/supply_pack/ammo/a410_buckshot
	name = "410x76mm Buckshot Box"
	desc = "Содержит коробку с 60 дробными патронами калибра 410х76mm."
	contains = list(/obj/item/storage/box/ammo/a410_ammo_box)
	cost = 1000

/datum/supply_pack/ammo/a410_slug
	name = "410x76mm Slug Box"
	desc = "Содержит коробку с 60 пулевыми патронами калибра 410х76mm."
	contains = list(/obj/item/storage/box/ammo/a410_ammo_box/slug)
	cost = 1500

/datum/supply_pack/ammo/a410_flechette
	name = "410x76mm Flechette Box"
	desc = "Содержит коробку с 60 флешеттами калибра 410х76mm."
	contains = list(/obj/item/storage/box/ammo/a410_ammo_box/flechette)
	cost = 1500

//Магазины оффов для ИСВ карго

/datum/supply_pack/magazine/c38_mag
	faction = null

/datum/supply_pack/magazine/c38match
	faction = null

/datum/supply_pack/magazine/c38dumdum
	faction = null

/datum/supply_pack/magazine/m45_mag
	faction = null

/datum/supply_pack/magazine/a44roum_speedloader
	faction = null 
//Магазины оружия(смещаем вниз в другой раздел)
/datum/supply_pack/magazine/skm762_40_extended
	name = "SKM Extended Magazine Crate"
	desc = "Contains a 7.62x40mm magazine for the SKM rifles, containing fourty rounds."
	contains = list(/obj/item/ammo_box/magazine/skm_762_40/extended)
	cost = 2800

/datum/supply_pack/magazine/skm762_40_drum
	name = "SKM Drum Magazine Crate"
	desc = "Contains a 7.62x40mm magazine for the SKM rifles, containing seventy-five rounds."
	contains = list(/obj/item/ammo_box/magazine/skm_762_40/drum)
	cost = 5000


///datum/supply_pack/magazine/p16_ammo
	//name = "Набор магазинов для P-16 5.56mm"
	//desc = "Содержит два магазина калибра 5,56 мм для винтовки P-16, каждый из которых содержит по 30 патронов."
	//contains = list(/obj/item/ammo_box/magazine/p16,
					///obj/item/ammo_box/magazine/p16)
	//cost = 1950
	//Удаляем до возврата П16 в игру
/datum/supply_pack/magazine/a357_mag_independent
	name = ".357 Speedloader Crate"
	desc = "Contains a .357 speedloader for revolvers, containing seven rounds."
	contains = list(/obj/item/ammo_box/a357)
	cost = 1000

/datum/supply_pack/magazine/usp_magazine
	name = "USP Pistol Magazine Crate"
	desc = "Contains .45 caliber magazine for the USP pistol, containing twelve rounds."
	contains = list(/obj/item/ammo_box/magazine/usp45_standart)
	cost = 650

/datum/supply_pack/magazine/glock_magazine
	name = "Glock Pistol Magazine Crate"
	desc = "Contains 9mm magazine for the Glock pistol family, containing seventeen rounds."
	contains = list(/obj/item/ammo_box/magazine/glock_standart)
	cost = 500

/datum/supply_pack/magazine/g36_sh
	name = "G36 Short Magazine Double Pack Crate"
	desc = "Contains two 5.56x45mm magazines for the G36 family rifles, containing twenty rounds each."
	contains = list(/obj/item/ammo_box/magazine/g36/sh,
					/obj/item/ammo_box/magazine/g36/sh)
	cost = 1400

/datum/supply_pack/magazine/g36
	name = "G36 Standard Magazine Double Pack Crate"
	desc = "Contains two 5.56x45mm magazines for the G36 family rifles, containing thirty rounds each."
	contains = list(/obj/item/ammo_box/magazine/g36,
					/obj/item/ammo_box/magazine/g36)
	cost = 1950

/datum/supply_pack/magazine/g36_drum
	name = "G36 Drum Magazine Crate"
	desc = "Contains 5.56x45mm drum magazine for the G36 family rifles, containing seventy-five rounds."
	contains = list(/obj/item/ammo_box/magazine/g36/drum)
	cost = 5000

/datum/supply_pack/magazine/morita_ammo_small
	name = "Morita MK1 Short Magazine Double Pack Crate"
	desc = "Contains two .310 caliber magazines for the Morita family rifles, containing ten rounds each."
	contains = list(/obj/item/ammo_box/magazine/morita1/small,
					/obj/item/ammo_box/magazine/morita1/small)
	cost = 2000

/datum/supply_pack/magazine/morita_ammo
	name = "Morita MK1 Standard Magazine Double Pack Crate"
	desc = "Contains two .310 caliber magazines for the Morita family rifles, containing twenty-five rounds each."
	contains = list(/obj/item/ammo_box/magazine/morita1,
					/obj/item/ammo_box/magazine/morita1)
	cost = 4000

/datum/supply_pack/magazine/morita_ammo_drum
	name = "Morita MK1 Drum Magazine Crate"
	desc = "Contains .310 caliber drum magazine for the Morita family rifles, containing fifty rounds."
	contains = list(/obj/item/ammo_box/magazine/morita1/drum)
	cost = 5000

//Магазины для оружия

/datum/supply_pack/magazine/a410_saiga
	name = "Saiga-410 Short Magazine Double Pack Crate"
	desc = "Contains two .410 caliber short magazines for the Saiga-410 shotgun, containing six rounds each."
	contains = list(/obj/item/ammo_box/magazine/saiga,
					/obj/item/ammo_box/magazine/saiga)
	cost = 1800

/datum/supply_pack/magazine/a410_saiga_medium
    name = "Saiga-410 Standard Magazine Crate"
    desc = "Contains .410 caliber magazine for the Saiga-410 shotgun, containing nine rounds."
    contains = list(/obj/item/ammo_box/magazine/saiga/medium)
    cost = 2800

/datum/supply_pack/magazine/a410_saiga_drum
    name = "Saiga-410 Drum Magazine Crate"
    desc = "Contains .410 caliber drum magazine for the Saiga-410 shotgun, containing fourteen rounds."
    contains = list (/obj/item/ammo_box/magazine/saiga/drum)
    cost = 5000
