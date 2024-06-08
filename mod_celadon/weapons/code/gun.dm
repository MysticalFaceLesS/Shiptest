/*
		Rifles  // Origin -> code\modules\cargo\packs\gun.dm
*/
/datum/supply_pack/gun/g36sh
	name = "G36-SH Rifle crate"
	desc = "Содержит G36-SH и запасную обойму. "
	cost = 13000
	contains = list(/obj/item/gun/ballistic/automatic/assault/g36sh,
					/obj/item/ammo_box/magazine/p16/g36,
					/obj/item/ammo_box/a556_box)
	crate_name = "auto rifle crate"

/datum/supply_pack/gun/g36
	name = "G36 Rifle crate"
	desc = "Содержит G36 и запасную обойму. "
	cost = 15000
	contains = list(/obj/item/gun/ballistic/automatic/assault/g36,
					/obj/item/ammo_box/magazine/p16/g36,
					/obj/item/ammo_box/a556_box)
	crate_name = "auto rifle crate"

/datum/supply_pack/gun/morita1
	name = "Morita Mk.I Rifle crate"
	desc = "Содержит Morita Mk.I. и дополнительную обойму. "
	cost = 20000
	contains = list(/obj/item/gun/ballistic/automatic/assault/morita1,
					/obj/item/ammo_box/magazine/morita1)
	crate_name = "auto rifle crate"

/datum/supply_pack/gun/morita1_forest
	name = "Morita/forest Mk.I Rifle crate"
	desc = "Содержит Morita/forest Mk.I. и дополнительный барабанный магазин. "
	cost = 23000
	contains = list(/obj/item/gun/ballistic/automatic/assault/morita1/desert,
					/obj/item/ammo_box/magazine/morita1/drum,
					/obj/item/ammo_box/a308)
	crate_name = "auto rifle crate"

/datum/supply_pack/gun/morita1_desert
	name = "Morita/desert Mk.I Rifle crate"
	desc = "Содержит Morita/desert Mk.I. и дополнительный барабанный магазин. "
	cost = 23000
	contains = list(/obj/item/gun/ballistic/automatic/assault/morita1/forest,
					/obj/item/ammo_box/magazine/morita1/drum,
					/obj/item/ammo_box/a308)
	crate_name = "auto rifle crate"

/datum/supply_pack/gun/morita1_swamp
	name = "Morita/swamp Mk.I Rifle crate"
	desc = "Содержит Morita/swamp Mk.I. и дополнительный барабанный магазин. "
	cost = 23000
	contains = list(/obj/item/gun/ballistic/automatic/assault/morita1/swamp,
					/obj/item/ammo_box/magazine/morita1/drum,
					/obj/item/ammo_box/a308)
	crate_name = "auto rifle crate"
