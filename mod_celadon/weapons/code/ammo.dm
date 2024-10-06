//Магазины для оружия

/datum/supply_pack/ammo/p16_ammo
	name = "Набор магазинов для P-16 5.56mm"
	desc = "Содержит два магазина калибра 5,56 мм для винтовки P-16, каждый из которых содержит по 30 патронов."
	contains = list(/obj/item/ammo_box/magazine/p16,
					/obj/item/ammo_box/magazine/p16)
	cost = 1950

/datum/supply_pack/ammo/g36_sh
	name = "Набор магазинов для G36-SH 5.56mm"
	desc = "Содержит два магазина калибра 5,56 мм для винтовки G36-SH, каждый из которых содержит по 20 патронов."
	contains = list(/obj/item/ammo_box/magazine/g36/sh,
					/obj/item/ammo_box/magazine/g36/sh)
	cost = 1400

/datum/supply_pack/ammo/g36
	name = "Набор магазинов для G36 5.56mm"
	desc = "Содержит два магазина калибра 5,56 мм для винтовки G36, каждый из которых содержит по 30 патронов."
	contains = list(/obj/item/ammo_box/magazine/g36,
					/obj/item/ammo_box/magazine/g36)
	cost = 1950

/datum/supply_pack/ammo/g36_drum
	name = "Барабанный магазин для G36 5.56mm"
	desc = "Барабанный магазин калибра 5,56 мм для винтовки G36, вмещает до 75 патронов."
	contains = list(/obj/item/ammo_box/magazine/g36/drum)
	cost = 5000

/datum/supply_pack/ammo/morita_ammo_small
	name = "Набор укороченых магазинов для Morita Mk.I"
	desc = "Содержит два магазина калибра .308 мм для винтовки Morita Mk.I, каждый из которых содержит по 10 патронов."
	contains = list(/obj/item/ammo_box/magazine/morita1/small,
					/obj/item/ammo_box/magazine/morita1/small)
	cost = 2000

/datum/supply_pack/ammo/morita_ammo
	name = "Набор стандартных магазинов для Morita Mk.I"
	desc = "Содержит два магазина калибра .308 мм для винтовки Morita Mk.I, каждый из которых содержит по 25 патронов."
	contains = list(/obj/item/ammo_box/magazine/morita1,
					/obj/item/ammo_box/magazine/morita1)
	cost = 4000

/datum/supply_pack/ammo/morita_ammo_drum
	name = "Барабанный магазин для Morita Mk.I .308"
	desc = "Барабанный магазин калибра .308 мм для винтовки Morita Mk.I, барабан вмещает до 50 патронов."
	contains = list(/obj/item/ammo_box/magazine/morita1/drum)
	cost = 5000

/datum/supply_pack/ammo/usp_magazine
	name = "Магазин для пистолета USP"
	desc = "Магазин калибра .45 для пистолета USP, вмещает до 12 патронов."
	contains = list(/obj/item/ammo_box/magazine/usp45_standart)
	cost = 650

/datum/supply_pack/ammo/glock_magazine
	name = "Магазин для пистолета Glock"
	desc = "Магазин калибра 9 мм для пистолета Glock, вмещает до 17 патронов."
	contains = list(/obj/item/ammo_box/magazine/glock_standart)
	cost = 500

/datum/supply_pack/ammo/skm762_40_drum
	name = "Барабанный магазин для СКМ 7.52x40"
	desc = "Барабанный магазин калибра 7.62x40мм для винтовки СКМ-44, вмещает до 75 патронов."
	contains = list(/obj/item/ammo_box/magazine/skm_762_40/drum)
	cost = 5000

/datum/supply_pack/ammo/skm762_40_extended
	name = "Увеличенный магазин для СКМ 7.52x40"
	desc = "Увеличенный рожковый магазин калибра 7.62x40мм для винтовки СКМ-44, вмещает до 40 патронов."
	contains = list(/obj/item/ammo_box/magazine/skm_762_40/extended)
	cost = 2800

//Коробки патронов

//5.56

/datum/supply_pack/ammo/box556_box
	name = "Коробка патронов 5.56mm"
	desc = "Содержит одну коробку патронов."
	contains = list(/obj/item/ammo_box/a556_box)
	cost = 500

/datum/supply_pack/ammo/box556/a856_box
	name = "Коробка патронов 5.56mm(а856)"
	desc = "Содержит одну коробку патронов."
	contains = list(/obj/item/ammo_box/a556_box/a856)
	cost = 650

/datum/supply_pack/ammo/box556/m903_box
	name = "Коробка патронов 5.56mm(m903)"
	desc = "Содержит одну коробку патронов."
	contains = list(/obj/item/ammo_box/a556_box/m903)
	cost = 1300

//.308

/datum/supply_pack/ammo/a308_box
	name = "Коробка патронов .308"
	desc = "Содержит одну коробку патронов."
	contains = list(/obj/item/ammo_box/a308)
	cost = 650

/datum/supply_pack/ammo/a308_rubber_box
	name = "Коробка патронов .308(Резина)"
	desc = "Содержит одну коробку патронов."
	contains = list(/obj/item/ammo_box/a308/a308_rubber)
	cost = 300

/datum/supply_pack/ammo/a308_sp_box
	name = "Коробка патронов .308(Охотничий)"
	desc = "Содержит одну коробку патронов."
	contains = list(/obj/item/ammo_box/a308/a308_sp)
	cost = 800

/datum/supply_pack/ammo/a308_ap_box
	name = "Коробка патронов .308(Бронебойный)"
	desc = "Содержит одну коробку патронов."
	contains = list(/obj/item/ammo_box/a308/a308_ap)
	cost = 1300

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
