/obj/projectile/bullet/a556_39
	name = "5.56x39mm bullet"
	damage = 25
	armour_penetration = 20

/obj/projectile/bullet/flashet
	///How much damage is subtracted per tile?
	var/tile_dropoff = 1 //Standard of 10% per tile
	///How much stamina damage is subtracted per tile?
	var/tile_dropoff_stamina = 1.5 //As above

	icon_state = "pellet"
	armour_penetration = -35
	speed = 0.5

/obj/projectile/bullet/flashet/Range() //10% loss per tile = max range of 10, generally
	..()
	if(damage > 0)
		damage -= tile_dropoff
	if(stamina > 0)
		stamina -= tile_dropoff_stamina
	if(damage < 0 && stamina < 0)
		qdel(src)

// 410 калибр

/obj/projectile/bullet/pellet/a410
	name = "rubbershot pellet"
	damage = 15
	armour_penetration = -35

/obj/projectile/bullet/slug/a410
	name = "12g shotgun slug"
	damage = 70
	armour_penetration = -20

/obj/projectile/bullet/flashet/a410
	name = "flashet"
	damage = 50
	armour_penetration = 25
