/*
КРУТАЯ ПУШКА ЛАНИУСОВ
*/

/obj/item/ammo_casing/caseless/kinetic_rod
	name = "кинетический твердый стержень"
	desc = "Малая пачка железных стержней, сваренная воедино."
	icon = 'mod_celadon/_storge_icons/icons/lanius/items.dmi'
	icon_state = "kineticrod"
	projectile_type = /obj/projectile/bullet/kinetic_rod
	bullet_per_box = 25
	var/energy_cost = 250

/obj/projectile/bullet/kinetic_rod
	name = "кинетический стержень"
	icon_state = "spur_low"
	damage = 20
	armour_penetration = 25
	speed = 0.6
	ricochets_max = 1
	ricochet_chance = 100
	ricochet_decay_damage = 0

/obj/item/ammo_box/kineticrodbox
	name = "связка кинетических стержней"
	desc = "Связка кинетических стержней?"
	icon = 'mod_celadon/_storge_icons/icons/lanius/items.dmi'
	icon_state = "kineticrodsbox"
	ammo_type = /obj/item/ammo_casing/caseless/kinetic_rod
	max_ammo = 25

/obj/item/gun/ballistic/automatic/powered/lanius_gun
	name = "кинетический прото-ускоритель твердых стержней \"NISHANKA\""
	desc = "Арбалет непонятной конструкции, со следами грубой сварочной работы, даже название придумано едва ли адекватным существом. На удивление, весьма мягковатое изделие. У него нету курка."
	icon = 'mod_celadon/_storge_icons/icons/lanius/48x32.dmi'
	lefthand_file = 'mod_celadon/_storge_icons/icons/lanius/inhands_l.dmi'
	righthand_file = 'mod_celadon/_storge_icons/icons/lanius/inhands_r.dmi'
	icon_state = "nishanka"
	item_state = "nishanka"
	slot_flags = ITEM_SLOT_BELT
	mag_type = /obj/item/ammo_box/magazine/internal/lanius_gun
	fire_sound = 'mod_celadon/_storge_sounds/sound/lanius/crossbowshot.ogg'
	load_sound = 'sound/weapons/gun/gauss/rifle_reload.ogg'
	bolt_type = BOLT_TYPE_NO_BOLT
	show_magazine_on_sprite = FALSE
	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_BULKY
	internal_magazine = TRUE
	trigger_guard = TRIGGER_GUARD_ALLOW_ALL
	valid_attachments = list()
	slot_available = list()
	spread = 0
	spread_unwielded = 7.5
	recoil = 0
	recoil_unwielded = 1.5
	wield_slowdown = 0.1
	wield_delay = 1.5 SECONDS
	burst_size = 1
	fire_delay = 1.2 SECONDS
	pb_knockback = 2

	var/capacitor_level = 1
	var/matterbin_level = 1

/obj/item/gun/ballistic/automatic/powered/lanius_gun/attack_hand(mob/user)
	if(!islanius(user))
		to_chat(user, "<span class = 'notice'>Вы даже не можете ухватиться за столь странное оружие, оно выскользает. Да и курка тут нет, как стрелять...</span>")
		return FALSE
	else
		to_chat(user, "<span class = 'notice'>Вы меняете структуру вашей руки, подстраивая ее под внутренний механизм арбалета.</span>")
	return ..()

/obj/item/gun/ballistic/automatic/powered/lanius_gun/attackby(obj/item/I, mob/user, params)
	. = ..()
	if(istype(I, /obj/item/stock_parts/capacitor))
		var/obj/item/stock_parts/capacitor/C = I
		if(capacitor_level < C.rating)
			capacitor_level = C.rating
			projectile_damage_multiplier = 1+(C.rating*0.25)
			to_chat(user, "<span class='notice'>Вы успешно установили улучшение конденсатора, урон увеличен, конденсатор израсходован.</span>")
			qdel(C)
		else
			to_chat(user, "<span class='warning'>Нужен конденсатор уровнем повыше.</span>")
			return
	if(istype(I, /obj/item/stock_parts/matter_bin))
		var/obj/item/stock_parts/matter_bin/C = I
		if(matterbin_level < C.rating)
			matterbin_level = C.rating
			for(var/obj/item/ammo_box/magazine/internal/lanius_gun/M in contents)
				M.max_ammo = 5+(5*C.rating)
			to_chat(user, "<span class='notice'>Вы успешно установили улучшение хранилища, размер магазина увеличен, хранилище израсходовано.</span>")
		else
			to_chat(user, "<span class='warning'>Нужно хранилище материи уровнем повыше.</span>")
			return


/obj/item/ammo_box/magazine/internal/lanius_gun
	name = "proto-accelerator internal magazine"
	ammo_type = /obj/item/ammo_casing/caseless/kinetic_rod
	max_ammo = 10
	instant_load = TRUE

/datum/crafting_recipe/kinetic_rod
	name = "Кинетический стержень"
	result = /obj/item/ammo_casing/caseless/kinetic_rod
	reqs = list(/obj/item/stack/rods = 3,
				/obj/item/stack/cable_coil = 1)
	tools = list(/obj/item/weldingtool/lanius)
	time = 1
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/kinetic_rod_box
	name = "Связка кинетических стержней"
	result = /obj/item/ammo_box/kineticrodbox
	reqs = list(/obj/item/ammo_casing/caseless/kinetic_rod = 25,
				/obj/item/stack/cable_coil = 10)
	tools = list(/obj/item/weldingtool/lanius)
	time = 15
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/lanius_gun
	name = "Кинетический ускоритель ланиусов"
	result = /obj/item/ammo_casing/caseless/kinetic_rod
	reqs = list(/obj/item/stack/sheet/plasteel = 5,
				/obj/item/stack/sheet/mineral/wood = 5,
				/obj/item/stack/cable_coil = 15,
				/obj/item/stock_parts/capacitor = 1,
				/obj/item/stock_parts/matter_bin = 1,
				/obj/item/pipe = 1)
	tools = list(/obj/item/weldingtool/lanius)
	time = 60
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
