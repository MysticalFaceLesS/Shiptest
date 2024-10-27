// Syndicate
/obj/machinery/porta_turret/syndicate/interior_45
	name = "machine gun turret (.45)"
	desc = "Syndicate interior defense turret chambered for .45 rounds. Designed to down intruders without damaging the hull."
	stun_projectile = /obj/projectile/bullet/midbullet
	lethal_projectile = /obj/projectile/bullet/midbullet
	lethal_projectile_sound = 'sound/weapons/gun/revolver/cattleman.ogg'
	stun_projectile_sound = 'sound/weapons/gun/revolver/cattleman.ogg'

/obj/machinery/porta_turret/syndicate/exterior_7_62mm
	name = "machine gun turret (7.62)"
	desc = "Syndicate exterior defense turret chambered for 7.62 rounds. Designed to down intruders with heavy calliber bullets."
	stun_projectile = /obj/projectile/bullet
	lethal_projectile = /obj/projectile/bullet
	lethal_projectile_sound = 'sound/weapons/gun/rifle/skm.ogg'
	stun_projectile_sound = 'sound/weapons/gun/rifle/skm.ogg'

/obj/machinery/porta_turret/syndicate/grenade_40mm
	name = "mounted grenade launcher (40mm)"
	desc = "Syndicate 40mm grenade launcher defense turret. If you've had this much time to look at it, you're probably already dead."
	icon = 'mod_celadon/_storge_icons/icons/turrets.dmi'
	icon_state = "syndie_grenade"
	base_icon_state = "syndie_grenade"
	stun_projectile = /obj/projectile/bullet/a40mm
	lethal_projectile = /obj/projectile/bullet/a40mm
	lethal_projectile_sound = 'sound/weapons/gun/general/rocket_launch.ogg'
	stun_projectile_sound = 'sound/weapons/gun/general/rocket_launch.ogg'

/obj/machinery/porta_turret/syndicate/assault_pod_4_36x30mm
	name = "machine gun turret (4.6x30mm)"
	desc = "Syndicate exterior defense turret chambered for 4.6x30mm rounds. Designed to be fitted to assault pods, it uses low calliber bullets to save space."
	max_integrity = 100
	stun_projectile = /obj/projectile/bullet/weakbullet3
	lethal_projectile = /obj/projectile/bullet/weakbullet3
	lethal_projectile_sound = 'sound/weapons/gun/smg/smg_heavy.ogg'
	stun_projectile_sound = 'sound/weapons/gun/smg/smg_heavy.ogg'

// No Access
/obj/machinery/porta_turret/syndicate/no_access
	installation = null
	always_up = 1
	use_power = NO_POWER_USE
	has_cover = 0
	scan_range = 9
	req_access = list(ACCESS_CENT_GENERAL)
	mode = TURRET_LETHAL
	faction = list(ROLE_DEVIL)
	desc = "A ballistic machine gun/grenade auto-turret."

/obj/machinery/porta_turret/syndicate/no_access/interior_45
	name = "machine gun turret (.45)"
	desc = "Syndicate interior defense turret chambered for .45 rounds. Designed to down intruders without damaging the hull."
	stun_projectile = /obj/projectile/bullet/midbullet
	lethal_projectile = /obj/projectile/bullet/midbullet
	lethal_projectile_sound = 'sound/weapons/gun/revolver/cattleman.ogg'
	stun_projectile_sound = 'sound/weapons/gun/revolver/cattleman.ogg'

/obj/machinery/porta_turret/syndicate/no_access/exterior_7_62mm
	name = "machine gun turret (7.62)"
	desc = "Syndicate exterior defense turret chambered for 7.62 rounds. Designed to down intruders with heavy calliber bullets."
	stun_projectile = /obj/projectile/bullet
	lethal_projectile = /obj/projectile/bullet
	lethal_projectile_sound = 'sound/weapons/gun/rifle/skm.ogg'
	stun_projectile_sound = 'sound/weapons/gun/rifle/skm.ogg'

/obj/machinery/porta_turret/syndicate/no_access/grenade_40mm
	name = "mounted grenade launcher (40mm)"
	desc = "Syndicate 40mm grenade launcher defense turret. If you've had this much time to look at it, you're probably already dead."
	icon = 'mod_celadon/_storge_icons/icons/turrets.dmi'
	icon_state = "syndie_grenade"
	base_icon_state = "syndie_grenade"
	stun_projectile = /obj/projectile/bullet/a40mm
	lethal_projectile = /obj/projectile/bullet/a40mm
	lethal_projectile_sound = 'sound/weapons/gun/general/rocket_launch.ogg'
	stun_projectile_sound = 'sound/weapons/gun/general/rocket_launch.ogg'

/obj/machinery/porta_turret/syndicate/no_access/assault_pod_4_36x30mm
	name = "machine gun turret (4.6x30mm)"
	desc = "Syndicate exterior defense turret chambered for 4.6x30mm rounds. Designed to be fitted to assault pods, it uses low calliber bullets to save space."
	max_integrity = 100
	stun_projectile = /obj/projectile/bullet/weakbullet3
	lethal_projectile = /obj/projectile/bullet/weakbullet3
	lethal_projectile_sound = 'sound/weapons/gun/smg/smg_heavy.ogg'
	stun_projectile_sound = 'sound/weapons/gun/smg/smg_heavy.ogg'

/obj/machinery/porta_turret/syndicate/no_access/energy
	icon_state = "standard_lethal"
	base_icon_state = "standard"
	stun_projectile = /obj/projectile/energy/electrode
	stun_projectile_sound = 'sound/weapons/taser.ogg'
	lethal_projectile = /obj/projectile/beam/laser
	lethal_projectile_sound = 'sound/weapons/laser.ogg'
	desc = "An energy blaster auto-turret."

/obj/machinery/porta_turret/syndicate/no_access/energy/heavy
	icon_state = "standard_lethal"
	base_icon_state = "standard"
	stun_projectile = /obj/projectile/energy/electrode
	stun_projectile_sound = 'sound/weapons/taser.ogg'
	lethal_projectile = /obj/projectile/beam/laser/heavylaser
	lethal_projectile_sound = 'sound/weapons/lasercannonfire.ogg'
	desc = "An energy blaster auto-turret."

/obj/machinery/porta_turret/syndicate/no_access/energy/raven
	stun_projectile =  /obj/projectile/beam/laser
	stun_projectile_sound = 'sound/weapons/laser.ogg'
	faction = list("neutral","silicon","turret")

// Ручная турель Элизиума

/obj/machinery/deployable_turret/elysium
	name = "Ручной пулемёт Элизиума"
	desc = "Оснащён одним стволом и стреляет калибром 9 мм. Стреляет очередью из трёх выстрелов."
	icon_state = "hmg"
	max_integrity = 250
	projectile_type = /obj/projectile/bullet/c9mm
	anchored = TRUE
	number_of_shots = 3
	cooldown_duration = 2 SECONDS
	rate_of_fire = 1
	firesound = 'mod_celadon/_storge_sounds/sound/gun/turret9mm.ogg'
	overheatsound = 'sound/weapons/gun/smg/smgrack.ogg'
	can_be_undeployed = TRUE
	spawned_on_undeploy = /obj/item/deployable_turret_folded
