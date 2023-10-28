/datum/supply_pack/ammo
	group = "Ammunition"
	crate_type = /obj/structure/closet/crate/secure/gear

/*
		Pistol ammo
*/

/datum/supply_pack/ammo/co9mm_mag
	name = "9mm Commander Magazine Crate"
	desc = "Содержит три магазина калибра 9 мм для стандартного пистолета Commander, каждый из которых содержит по десять патронов."
	contains = list(/obj/item/ammo_box/magazine/co9mm,
					/obj/item/ammo_box/magazine/co9mm,
					/obj/item/ammo_box/magazine/co9mm)
	cost = 1500

/datum/supply_pack/ammo/m45_mag
	name = ".45 ACP M1911 Magazine Crate"
	desc = "Содержит три .45 магазинов ACP для пистолета M1911, каждый из которых содержит по восемь патронов."
	contains = list(/obj/item/ammo_box/magazine/m45,
					/obj/item/ammo_box/magazine/m45,
					/obj/item/ammo_box/magazine/m45)
	cost = 1500

/datum/supply_pack/ammo/c38_mag
	name = ".38 Speedloader Crate"
	desc = "Содержит четыре быстрозарядных устройства для револьверов 38-го калибра, каждое из которых содержит по шесть патронов."
	contains = list(/obj/item/ammo_box/c38,
					/obj/item/ammo_box/c38,
					/obj/item/ammo_box/c38,
					/obj/item/ammo_box/c38)
	cost = 1500

/datum/supply_pack/ammo/m10mm_mag
	name = "10mm Stechkin Magazine Crate"
	desc = "Содержит три магазина калибра 10 мм для пистолета Стечкина, каждый из которых содержит восемь патронов."
	contains = list(/obj/item/ammo_box/magazine/m10mm,
					/obj/item/ammo_box/magazine/m10mm,
					/obj/item/ammo_box/magazine/m10mm)
	cost = 1500

/datum/supply_pack/ammo/a357_mag
	name = ".357 Speedloader Crate"
	desc = "Содержит два быстрозарядных устройства 357 калибра для револьверов, каждый из которых содержит по семь патронов."
	contains = list(/obj/item/ammo_box/a357,
					/obj/item/ammo_box/a357)
	cost = 1500

/datum/supply_pack/ammo/mag_556mm
	name = "5.56 Pistole C Magazine Crate"
	desc = "Содержит два магазина калибра 5,56 мм для пистолета С, каждый из которых содержит двенадцать патронов."
	contains = list(/obj/item/ammo_box/magazine/pistol556mm,
					/obj/item/ammo_box/magazine/pistol556mm)
	cost = 1500

/datum/supply_pack/ammo/fms_mag
	name = "Ferromagnetic Slug Magazine Crate"
	desc = "Содержит два магазина с ферромагнитными патронами для пистолета модели H, каждый из которых содержит по десять патронов."
	contains = list(/obj/item/ammo_box/magazine/modelh,
					/obj/item/ammo_box/magazine/modelh)
	cost = 1500

/*
		Shotgun ammo
*/

/datum/supply_pack/ammo/buckshot
	name = "Buckshot Crate"
	desc = "Содержит две коробки картечи для использования в смертоносном убеждении."
	cost = 2000
	contains = list(/obj/item/storage/box/lethalshot,
					/obj/item/storage/box/lethalshot)

/datum/supply_pack/ammo/slugs
	name = "Shotgun Slug Crate"
	desc = "Содержит две коробки с пулями для использования в смертоносном убеждении."
	cost = 2000
	contains = list(/obj/item/storage/box/slugshot,
					/obj/item/storage/box/slugshot)

/*
		.38 ammo
*/

/datum/supply_pack/ammo/winchester_ammo
	name = "Winchester and Detective Special .38 Ammo Boxes"
	desc = "Содержит две коробки по 30 патронов для перезарядки оружия 38-го калибра."
	cost = 1000
	contains = list(/obj/item/ammo_box/c38_box,
					/obj/item/ammo_box/c38_box)
	crate_name = "ammo crate"

/datum/supply_pack/ammo/match
	name = ".38 Match Grade Speedloader"
	desc = "Содержит одно быстрозарядное устройство 38-го калибра, идеально подходящий для демонстрации трюковых выстрелов."
	cost = 200
	small_item = TRUE
	contains = list(/obj/item/ammo_box/c38/match)
	crate_name = ".38 match crate"

/datum/supply_pack/ammo/dumdum
	name = ".38 DumDum Speedloader"
	desc = "Содержит один зарядный патрон 38-го калибра 'ДумДум', пригодный для попадания в мягкие мишени."
	cost = 200
	small_item = TRUE
	contains = list(/obj/item/ammo_box/c38/dumdum)
	crate_name = ".38 match crate"

/*
		WT-550 ammo
*/

/datum/supply_pack/ammo/wt550_ammo
	name = "WT-550 Auto Rifle Ammo Crate"
	desc = "Содержит три магазина на 20 патронов для автоматической винтовки WT-550. Каждый магазин предназначен для быстрой тактической перезарядки."
	cost = 2250
	contains = list(/obj/item/ammo_box/magazine/wt550m9,
					/obj/item/ammo_box/magazine/wt550m9,
					/obj/item/ammo_box/magazine/wt550m9)

/datum/supply_pack/ammo/cool_wt550_ammo
	name = "WT-550 Auto Rifle Exotic Ammo Crate"
	desc = "Содержит один магазин бронебойных и один магазин зажигательных боеприпасов для автоматической винтовки WT550. К сожалению, наш производитель снял с производства пули с урановым наконечником."
	cost = 2500
	contains = list(/obj/item/ammo_box/magazine/wt550m9/ap,
					/obj/item/ammo_box/magazine/wt550m9/inc)

/*
		Rifle ammo
*/

/datum/supply_pack/ammo/gal308_ammo
	name = "CM-GAL .308 Magazine Crate"
	desc = "Содержит два 308 CM-GAL магазина для винтовки CM-GAL, каждый из которых содержит по десять патронов."
	contains = list(/obj/item/ammo_box/magazine/gal,
					/obj/item/ammo_box/magazine/gal)
	cost = 2000

/datum/supply_pack/ammo/gar_ammo
	name = "GAR Ferromagnetic Lance Magazine Crate"
	desc = "Содержит два магазина с ферромагнитными наконечниками для винтовки GAR, каждый из которых содержит тридцать два патрона."
	contains = list(/obj/item/ammo_box/magazine/gar,
					/obj/item/ammo_box/magazine/gar)
	cost = 2000

/datum/supply_pack/ammo/claris_ammo
	name = "Claris Ferromagnetic Pellet Speedloader Crate"
	desc = "Содержит два ускоренных заряжателя ферромагнитных гранул для винтовки Claris, каждый из которых содержит двадцать два патрона."
	contains = list(/obj/item/ammo_box/amagpellet_claris,
					/obj/item/ammo_box/amagpellet_claris)
	cost = 2000

/datum/supply_pack/ammo/ebr_ammo
	name = "M514 EBR .308 Magazine Crate"
	desc = "Содержит два магазина 308 калибра для винтовки M514 EBR, каждый из которых содержит по десять патронов."
	contains = list(/obj/item/ammo_box/magazine/ebr,
					/obj/item/ammo_box/magazine/ebr)
	cost = 2000

/datum/supply_pack/ammo/ak47_ammo
	name = "AKM 7.62x39mm FMJ Magazine Crate"
	desc = "Содержит два магазина FMJ калибра 7,62х39 мм для винтовки АКМ, каждый из которых содержит по двадцать патронов."
	contains = list(/obj/item/ammo_box/magazine/ak47,
					/obj/item/ammo_box/magazine/ak47)
	cost = 2000

/datum/supply_pack/ammo/p16_ammo
	name = "P-16 5.56mm Magazine Crate"
	desc = "Содержит два магазина калибра 5,56 мм для винтовки P-16, каждый из которых содержит по тридцать патронов."
	contains = list(/obj/item/ammo_box/magazine/p16,
					/obj/item/ammo_box/magazine/p16)
	cost = 2000

/datum/supply_pack/ammo/a762_ammo
	name = "7.62x54mm Stripper Clip Crate"
	desc = "Содержит четыре съемные обоймы размером 7,62х54 мм для винтовок типа винтовки Иллестрена, каждая из которых содержит по пять патронов."
	contains = list(/obj/item/ammo_box/a762,
					/obj/item/ammo_box/a762,
					/obj/item/ammo_box/a762,
					/obj/item/ammo_box/a762)
	cost = 1000
