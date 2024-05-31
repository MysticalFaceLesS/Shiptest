/datum/supply_pack/ammo/g36_ammo
	name = "G-36 5.56mm Magazine Crate"
	desc = "Содержит два магазина калибра 5,56 мм для винтовки p16, каждый из которых содержит по 30 патронов. Также в комплект входят коробки стандартных патронов."
	contains = list(/obj/item/ammo_box/magazine/p16,
					/obj/item/ammo_box/magazine/p16,
					/obj/item/ammo_box/a556_box,
					/obj/item/ammo_box/a556_box)
	cost = 3000

/datum/supply_pack/ammo/morita_ammo
	name = "Morita Mk.I .308 Magazine Crate"
	desc = "Содержит два магазина калибра .308 мм для винтовки Morita Mk.I, каждый из которых содержит по 10 патронов. Также в комплект входят коробки стандартных патронов."
	contains = list(/obj/item/ammo_box/magazine/morita1/small,
					/obj/item/ammo_box/magazine/morita1/small,
					/obj/item/ammo_box/a308,
					/obj/item/ammo_box/a308)
	cost = 3000

/datum/supply_pack/ammo/box556
	name = "5.56mm ammo Crate"
	desc = "Содержит коробку патронов калибра 5,56 мм для автоматических винтовок."
	contains = list(/obj/item/ammo_box/a556_box)
	cost = 400

/datum/supply_pack/ammo/box556/a856
	name = "5.56mm(а856) ammo Crate"
	desc = "Содержит коробку патронов калибра 5,56 мм для автоматических винтовок."
	contains = list(/obj/item/ammo_box/a556_box/a856)
	cost = 600

/datum/supply_pack/ammo/box556/m903
	name = "5.56mm(m903) ammo Crate"
	desc = "Содержит коробку патронов калибра 5,56 мм для автоматических винтовок."
	contains = list(/obj/item/ammo_box/a556_box/m903)
	cost = 1200
