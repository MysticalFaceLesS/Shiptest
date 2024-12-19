// Перемещено полностью в independent, кроме этого...
/*
		Rifles  // Origin -> code\modules\cargo\packs\gun.dm
*/

/datum/supply_pack/gun/g36
	cost = 12000

/datum/supply_pack/gun/g36sh
	cost = 12000

/datum/supply_pack/gun/morita1
	cost = 11000

/datum/supply_pack/gun/morita1/forest
	name = "Morita/forest Mk.I Rifle crate"
	desc = "Содержит Morita/forest Mk.I. и дополнительный пустой барабанный магазин."
	cost = 12850
	contains = list(/obj/item/storage/guncase/morita1/forest)
	crate_name = "auto rifle crate"

/datum/supply_pack/gun/morita1/desert
	name = "Morita/desert Mk.I Rifle crate"
	desc = "Содержит Morita/desert Mk.I. и дополнительный пустой барабанный магазин."
	cost = 12850
	contains = list(/obj/item/storage/guncase/morita1/desert)
	crate_name = "auto rifle crate"

/datum/supply_pack/gun/morita1/swamp
	name = "Morita/swamp Mk.I Rifle crate"
	desc = "Содержит Morita/swamp Mk.I. и дополнительный пустой барабанный магазин."
	cost = 12850
	contains = list(/obj/item/storage/guncase/morita1/swamp)
	crate_name = "auto rifle crate"

/datum/supply_pack/gun/glock
	cost = 1300

/datum/supply_pack/gun/usp
	cost = 1350

// ПР от Ганзы. Добавляет дробь для дробовиков
// /datum/supply_pack/gun/riot_shotgun // Вроде есть уже ящик с таким оружием, и ценник там 5000
// 	name = "Riot Shotguns Crate"
// 	desc = "For when the greytide gets out of hand. Contains 2 pump shotguns, each with a 4-round magazine."
// 	cost = 3000
// 	contains = list(/obj/item/gun/ballistic/shotgun/lethal,
// 					/obj/item/gun/ballistic/shotgun/lethal)
// 	crate_name = "shotguns crate"

/datum/supply_pack/gun/ballistic
	cost = 5500

/// Сайга-410
/datum/supply_pack/gun/saiga
	cost = 10850
