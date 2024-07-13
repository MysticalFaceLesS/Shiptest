// Проджектайлы дробовиков

/obj/projectile/beam/disabler/weak
	damage = 15
	range = 10

/obj/projectile/beam/laser/weak
	range = 10
// Тип патрона

/obj/item/ammo_casing/energy/laser/ultima
	projectile_type = /obj/projectile/beam/laser/weak
	pellets = 3
	variance = 35
	e_cost = 2000
	select_name = "kill"

/obj/item/ammo_casing/energy/disabler/scatter/ultima
	projectile_type = /obj/projectile/beam/disabler/weak
	pellets = 4
	variance = 35
	e_cost = 2000
