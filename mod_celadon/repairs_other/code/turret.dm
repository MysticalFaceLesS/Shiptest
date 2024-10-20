// Офы написали турели говна и сидят радуются поэтому мы их переписываем

/obj/machinery/porta_turret/ship/faction
	turret_flags = TURRET_FLAG_SHOOT_HEADS | TURRET_FLAG_SHOOT_CRIMINALS | TURRET_FLAG_SHOOT_ANOMALOUS

// SOLGOV
/obj/machinery/porta_turret/ship/faction/solgov
	faction = list(FACTION_PLAYER_SOLGOV, "turret")

/obj/machinery/porta_turret/ship/faction/solgov/ballistic
	stun_projectile = /obj/projectile/bullet/turret/rubber
	lethal_projectile = /obj/projectile/bullet/turret
	lethal_projectile_sound = 'sound/weapons/gun/smg/shot.ogg'
	stun_projectile_sound = 'sound/weapons/gun/smg/shot.ogg'
	desc = "A ballistic machine gun auto-turret."

/obj/machinery/porta_turret/ship/faction/solgov/laser
	icon_state = "standard_stun"
	base_icon_state = "standard"

/obj/machinery/porta_turret/ship/faction/solgov/laser/cover
	installation = /obj/item/gun/energy/e_gun/turret
	has_cover = 1
	always_up = 0
	icon_state = "turretCover"
	base_icon_state = "standard"

// SYNDICATE
/obj/machinery/porta_turret/ship/faction/syndicate
	faction = list(FACTION_PLAYER_SYNDICATE, "turret")

/obj/machinery/porta_turret/ship/faction/syndicate/ballistic
	stun_projectile = /obj/projectile/bullet/turret/rubber
	lethal_projectile = /obj/projectile/bullet/turret
	lethal_projectile_sound = 'sound/weapons/gun/smg/shot.ogg'
	stun_projectile_sound = 'sound/weapons/gun/smg/shot.ogg'
	desc = "A ballistic machine gun auto-turret."

/obj/machinery/porta_turret/ship/faction/syndicate/laser
	icon_state = "standard_stun"
	base_icon_state = "standard"

/obj/machinery/porta_turret/ship/faction/syndicate/laser/cover
	installation = /obj/item/gun/energy/e_gun/turret
	has_cover = 1
	always_up = 0
	cover = /obj/item/gun/energy/e_gun/turret
	icon_state = "turretCover"
	base_icon_state = "standard"

// JOHN TRASEN
/obj/machinery/porta_turret/ship/faction/nanotrasen
	faction = list(FACTION_PLAYER_NANOTRASEN, "turret")

/obj/machinery/porta_turret/ship/faction/nanotrasen/ballistic
	stun_projectile = /obj/projectile/bullet/turret/rubber
	lethal_projectile = /obj/projectile/bullet/turret
	lethal_projectile_sound = 'sound/weapons/gun/smg/shot.ogg'
	stun_projectile_sound = 'sound/weapons/gun/smg/shot.ogg'
	desc = "A ballistic machine gun auto-turret."

/obj/machinery/porta_turret/ship/faction/nanotrasen/laser
	icon_state = "standard_stun"
	base_icon_state = "standard"

/obj/machinery/porta_turret/ship/faction/nanotrasen/laser/cover
	installation = /obj/item/gun/energy/e_gun/turret
	has_cover = 1
	always_up = 0
	icon_state = "turretCover"
	base_icon_state = "standard"

// INTEQ
/obj/machinery/porta_turret/ship/faction/inteq
	faction = list(FACTION_PLAYER_INTEQ, "turret")

/obj/machinery/porta_turret/ship/faction/inteq/ballistic
	stun_projectile = /obj/projectile/bullet/turret/rubber
	lethal_projectile = /obj/projectile/bullet/turret
	lethal_projectile_sound = 'sound/weapons/gun/smg/shot.ogg'
	stun_projectile_sound = 'sound/weapons/gun/smg/shot.ogg'
	desc = "A ballistic machine gun auto-turret."

/obj/machinery/porta_turret/ship/faction/inteq/laser
	icon_state = "standard_stun"
	base_icon_state = "standard"

/obj/machinery/porta_turret/ship/faction/inteq/laser/cover
	installation = /obj/item/gun/energy/e_gun/turret
	has_cover = 1
	always_up = 0
	icon_state = "turretCover"
	base_icon_state = "standard"

// ELYSIUM
/obj/machinery/porta_turret/ship/faction/elysium
	faction = list(FACTION_PLAYER_ELYSIUM, "turret")

/obj/machinery/porta_turret/ship/faction/elysium/ballistic
	stun_projectile = /obj/projectile/bullet/turret/rubber
	lethal_projectile = /obj/projectile/bullet/turret
	lethal_projectile_sound = 'sound/weapons/gun/smg/shot.ogg'
	stun_projectile_sound = 'sound/weapons/gun/smg/shot.ogg'
	desc = "A ballistic machine gun auto-turret."

/obj/machinery/porta_turret/ship/faction/elysium/laser
	icon_state = "standard_stun"
	base_icon_state = "standard"

/obj/machinery/porta_turret/ship/faction/elysium/laser/cover
	installation = /obj/item/gun/energy/e_gun/turret
	has_cover = 1
	always_up = 0
	icon_state = "turretCover"
	base_icon_state = "standard"

// PIRATE
/obj/machinery/porta_turret/ship/faction/pirate
	faction = list(FACTION_PLAYER_PIRATE, "turret")

/obj/machinery/porta_turret/ship/faction/pirate/ballistic
	stun_projectile = /obj/projectile/bullet/turret/rubber
	lethal_projectile = /obj/projectile/bullet/turret
	lethal_projectile_sound = 'sound/weapons/gun/smg/shot.ogg'
	stun_projectile_sound = 'sound/weapons/gun/smg/shot.ogg'
	desc = "A ballistic machine gun auto-turret."

/obj/machinery/porta_turret/ship/faction/pirate/laser
	icon_state = "standard_stun"
	base_icon_state = "standard"

/obj/machinery/porta_turret/ship/faction/pirate/laser/cover
	installation = /obj/item/gun/energy/e_gun/turret
	has_cover = 1
	always_up = 0
	icon_state = "turretCover"
	base_icon_state = "standard"
