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
	contains = list(/obj/item/ammo_box/magazine/p16/g36sh,
					/obj/item/ammo_box/magazine/p16/g36sh)
	cost = 1400

/datum/supply_pack/ammo/g36
	name = "Набор магазинов для G36 5.56mm"
	desc = "Содержит два магазина калибра 5,56 мм для винтовки G36, каждый из которых содержит по 30 патронов."
	contains = list(/obj/item/ammo_box/magazine/p16/g36,
					/obj/item/ammo_box/magazine/p16/g36)
	cost = 1950

/datum/supply_pack/ammo/g36_drum
	name = "Барабанный магазин для G36 5.56mm"
	desc = "Барабанный магазин калибра 5,56 мм для винтовки G36, вмещает до 75 патронов."
	contains = list(/obj/item/ammo_box/magazine/p16/g36drum)
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


//Коробки патронов

//5.56

/datum/supply_pack/ammo/box556_box
	name = "Коробка патронов 5.56mm"
	desc = "Содержит одну коробку патронов"
	contains = list(/obj/item/ammo_box/a556_box)
	cost = 500

/datum/supply_pack/ammo/box556/a856_box
	name = "Коробка патронов 5.56mm(а856)"
	desc = "Содержит одну коробку патронов"
	contains = list(/obj/item/ammo_box/a556_box/a856)
	cost = 650

/datum/supply_pack/ammo/box556/m903_box
	name = "Коробка патронов 5.56mm(m903)"
	desc = "Содержит одну коробку патронов"
	contains = list(/obj/item/ammo_box/a556_box/m903)
	cost = 1300

//.308

/datum/supply_pack/ammo/a308_box
	name = "Коробка патронов .308"
	desc = "Содержит одну коробку патронов"
	contains = list(/obj/item/ammo_box/a308)
	cost = 650

/datum/supply_pack/ammo/a308_rubber_box
	name = "Коробка патронов .308(Резина)"
	desc = "Содержит одну коробку патронов"
	contains = list(/obj/item/ammo_box/a308/a308_rubber)
	cost = 300

/datum/supply_pack/ammo/a308_sp_box
	name = "Коробка патронов .308(Охотничий)"
	desc = "Содержит одну коробку патронов"
	contains = list(/obj/item/ammo_box/a308/a308_sp)
	cost = 800

/datum/supply_pack/ammo/a308_ap_box
	name = "Коробка патронов .308(Бронебойный)"
	desc = "Содержит одну коробку патронов"
	contains = list(/obj/item/ammo_box/a308/a308_ap)
	cost = 1300
