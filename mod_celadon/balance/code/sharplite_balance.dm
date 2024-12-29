////////////
//IOT egun
////////////

//Iot Projectiles

/obj/projectile/beam/disabler/iot
	icon_state = "blue_laser"
	damage = 15
	range = 15

/obj/projectile/beam/laser/iot
	icon_state = "red_laser"
	damage = 15
	armour_penetration = -10
	range = 15

//Ammo Casings

/obj/item/ammo_casing/energy/laser/ultima
	projectile_type = /obj/projectile/beam/laser/iot
	fire_sound = 'sound/weapons/laser4.ogg'
	pellets = 6 //now actually working like an eshotgun, and not a shitty bursting egun
	variance = 35
	e_cost = 1428
	select_name = "kill"

/obj/item/ammo_casing/energy/disabler/scatter/ultima
	projectile_type = /obj/projectile/beam/disabler/iot
	pellets = 6
	variance = 35
	e_cost = 1428

/obj/item/gun/energy/e_gun/iot
	desc = "An advanced semi-automatic dual-mode energy shotgun. This weapon is a big improvement since the last model. It provides excellent fire support for any Nanotrasen security force." //убираем упоминание несуществующего компутера, переписываем

////////////
//etar SMG egun
////////////

//etar-smg projectiles

/obj/projectile/beam/disabler/weak/smg
	speed = 0.5
	armour_penetration = -15
	range = 40

/obj/projectile/beam/laser/light/smg //makes the gun not too op like it was, but at the same time quite useful
	speed = 0.5 //actual smg speed
	armour_penetration = -15

//Ammo casings

/obj/item/ammo_casing/energy/disabler/smg
	projectile_type = /obj/projectile/beam/disabler/weak/smg
	e_cost = 300

/obj/item/ammo_casing/energy/laser/smg
	projectile_type = /obj/projectile/beam/laser/light/smg
	e_cost = 400 //cheaper to fire but worse projectiles as stated above

////////////
//NT-SL HADES egun
////////////

//HADES projectiles

/obj/projectile/beam/disabler/assault
	icon = 'mod_celadon/_storge_icons/icons/ammo/projectiles.dmi'
	icon_state = "heavylaser_blue"
	speed = 0.7
	damage = 25
	armour_penetration = 20

/obj/projectile/beam/laser/assault
	speed = 0.7 //makes the ASSAULT lasers go faster to make them not shit
	armour_penetration = 20

//Ammo casings

/obj/item/ammo_casing/energy/disabler/assault
	projectile_type = /obj/projectile/beam/disabler/assault
	fire_sound = 'sound/weapons/pulse2.ogg'
	delay = 2
	e_cost = 500

/obj/item/ammo_casing/energy/laser/assault
	e_cost = 500 //gives hades 5 more shots to balance out the standart power cell

/obj/item/gun/energy/e_gun/hades
	desc = "Nanotrasen-Sharplite's premium assault energy rifle. This elite energy weapon is focused on heavy fire support. A powerful, but expensive and rare assault rifle." //новое описание без лора оффов
	ammo_type = list(/obj/item/ammo_casing/energy/disabler/assault, /obj/item/ammo_casing/energy/laser/assault)
	default_ammo_type = /obj/item/stock_parts/cell/gun //nerfs the power cell to a standart one
	wield_slowdown = 0.5 //from 0.6 to 0.5 because 0.6 is horrible

//Commander relore - no more Vigilitas Interstellar
/obj/item/gun/ballistic/automatic/pistol/commander
	name = "Nanotrasen Commander"
	desc = "A service pistol produced as Nanotrasen security forces standard sidearm. Has a reputation for being easy to use, due to its light recoil and high magazine capacity. Chambered in 9mm."
	manufacturer = MANUFACTURER_NANOTRASEN

//Honorable mentions

/obj/projectile/beam/disabler/heavylaser
	icon = 'mod_celadon/_storge_icons/icons/ammo/projectiles.dmi'
	icon_state = "heavylaser_blue"
	damage = 40

/obj/projectile/beam/disabler/heavylaser/sharplite //NT-SL turrets
	speed = 0.4
