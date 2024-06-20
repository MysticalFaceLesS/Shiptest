/obj/item/gun/ballistic/automatic/assault/g36sh
	name = "\improper G36-SH"
	desc = "Наследие огненной эры Союза Человечества, укороченная версия,  калибра 5.56x45. Технология производства восстановлена минитменами, но ввиду усложненной конструкции продана корпорации InteQ. Используется сотрудниками InteQ по сей день, как оружие для элитных наемников."
	icon = 'mod_celadon/weapons/icons/guns/48x32guns.dmi'
	lefthand_file = 'mod_celadon/weapons/icons/guns/guns_lefthand.dmi'
	righthand_file = 'mod_celadon/weapons/icons/guns/guns_righthand.dmi'
	fire_sound = 'mod_celadon/_components/sounds/gun/g36sh.ogg'
//	mob_overlay_icon = прописать оверлей на спину , нужны спрайты!!
	icon_state = "g36sh"
	item_state = "g36sh"
	mag_type = /obj/item/ammo_box/magazine/p16/g36sh
	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_NORMAL
	spread = 16
	actions_types = list()
	mag_display = TRUE
	special_mags = TRUE
	tac_reloads = TRUE
	var/obj/item/ammo_box/magazine/p16/g36sh/alternate_magazine
	actions_types = list(/datum/action/item_action/toggle_firemode)

/obj/item/gun/ballistic/automatic/assault/g36sh/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.15 SECONDS)

/obj/item/gun/ballistic/automatic/assault/g36sh/Initialize()
	. = ..()
	if (!alternate_magazine)
		alternate_magazine = new mag_type(src)
	spawnwithmagazine = FALSE
	mag_type = /obj/item/ammo_box/magazine/p16

/obj/item/gun/ballistic/automatic/assault/g36sh/burst_select()
	var/mob/living/carbon/human/user = usr
	switch(select)
		if(0)
			select = 1
			burst_size = 1
			fire_delay = 0
			spread = 16
			to_chat(user, span_notice("You switch to full automatic."))
			SEND_SIGNAL(src,COMSIG_GUN_ENABLE_AUTOFIRE)
		if(1)
			select = 2
			spread = 4
			to_chat(user, span_notice("You switch to semi-auto."))
			SEND_SIGNAL(src, COMSIG_GUN_DISABLE_AUTOFIRE)
		if(2)
			select = 0
			burst_size = 3
			fire_delay = 2
			spread = 8
			to_chat(user, span_notice("You switch to [burst_size]-rnd Matter."))
			SEND_SIGNAL(src, COMSIG_GUN_DISABLE_AUTOFIRE)
	playsound(user, 'sound/weapons/empty.ogg', 100, TRUE)
	update_icon()
	return

/obj/item/gun/ballistic/automatic/assault/g36sh/inteq
	name = "\improper Moded G36-SH"
	desc = "Обширная модификация G36-SH, которая входит в стандартную комплектацию вооружения InteQ. Калибр 5,56x45 мм."
	icon_state = "g36shinteq"
	item_state = "g36shinteq"
	empty_indicator = TRUE
	empty_alarm = TRUE

/obj/item/gun/ballistic/automatic/assault/g36
	name = "\improper G36"
	desc = "Наследие огненной эры Союза Человечества , калибра 5.56x45 . Технология производства восстановлена минитменами , но ввиду усложненной конструкции продана корпорации InteQ. Используется сотрудниками InteQ по сей день , как оружие для элитных наемников. "
	icon = 'mod_celadon/weapons/icons/guns/48x32guns.dmi'
	lefthand_file = 'mod_celadon/weapons/icons/guns/guns_lefthand.dmi'
	righthand_file = 'mod_celadon/weapons/icons/guns/guns_righthand.dmi'
//	mob_overlay_icon = прописать оверлей на спину , нужны спрайты!!
	fire_sound = 'mod_celadon/_components/sounds/gun/g36.ogg'
	icon_state = "g36"
	item_state = "g36"
	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK
	spread = 12
	mag_type = /obj/item/ammo_box/magazine/p16/g36
	actions_types = list()
	mag_display = TRUE
	special_mags = TRUE
	tac_reloads = TRUE
	var/obj/item/ammo_box/magazine/p16/g36/alternate_magazine
	actions_types = list(/datum/action/item_action/toggle_firemode)

/obj/item/gun/ballistic/automatic/assault/g36/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.15 SECONDS)

/obj/item/gun/ballistic/automatic/assault/g36/Initialize()
	. = ..()
	if (!alternate_magazine)
		alternate_magazine = new mag_type(src)
		spawnwithmagazine = FALSE
		mag_type = /obj/item/ammo_box/magazine/p16

/obj/item/gun/ballistic/automatic/assault/g36/burst_select()
	var/mob/living/carbon/human/user = usr
	switch(select)
		if(0)
			select = 1
			burst_size = 1
			fire_delay = 0
			spread = 12
			to_chat(user, "<span class='notice'>You switch to full automatic.</span>")
			SEND_SIGNAL(src,COMSIG_GUN_ENABLE_AUTOFIRE)
		if(1)
			select = 2
			spread = 4
			to_chat(user, "<span class='notice'>You switch to semi-auto.</span>")
			SEND_SIGNAL(src, COMSIG_GUN_DISABLE_AUTOFIRE)
		if(2)
			select = 0
			burst_size = 3
			fire_delay = 2
			spread = 6
			to_chat(user, "<span class='notice'>You switch to [burst_size]-rnd Matter.</span>")
			SEND_SIGNAL(src, COMSIG_GUN_DISABLE_AUTOFIRE)
	playsound(user, 'sound/weapons/empty.ogg', 100, TRUE)
	update_icon()
	return

/obj/item/gun/ballistic/automatic/assault/g36/inteq
	name = "\improper Moded G36"
	desc = "Обширная модификация G36, которая входит в стандартную комплектацию вооружения InteQ. Калибр 5,56x45 мм."
	icon_state = "g36inteq"
	item_state = "g36inteq"
	empty_indicator = TRUE
	empty_alarm = TRUE

/obj/item/gun/ballistic/automatic/assault/morita1
	name = "\improper Morita MK.I"
	desc = "Стандартная пехотная автоматическая винтовка под калибр .308. Широко применяется армейскими корпусами в Союзе Человечества. Популярность в гражданских кругах заслужила после сьемок в фильме Starboat Troopes."
	lefthand_file = 'mod_celadon/weapons/icons/guns/guns_lefthand.dmi'
	righthand_file = 'mod_celadon/weapons/icons/guns/guns_righthand.dmi'
	icon = 'mod_celadon/weapons/icons/guns/48x32guns.dmi'
	fire_sound = 'mod_celadon/_components/sounds/gun/morita1.ogg'
	icon_state = "morita1"
	item_state = "morita1"
	actions_types = list()
	special_mags = TRUE
	mag_display = TRUE
	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK
	spread = 9
	mag_type = /obj/item/ammo_box/magazine/morita1
	actions_types = list(/datum/action/item_action/toggle_firemode)

/obj/item/gun/ballistic/automatic/assault/morita1/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.20 SECONDS)

/obj/item/gun/ballistic/automatic/assault/morita1/burst_select()
	var/mob/living/carbon/human/user = usr
	switch(select)
		if(0)
			select = 1
			burst_size = 1
			fire_delay = 0
			spread = 9
			to_chat(user, "<span class='notice'>You switch to full automatic.</span>")
			SEND_SIGNAL(src,COMSIG_GUN_ENABLE_AUTOFIRE)
		if(1)
			select = 2
			spread = 4
			to_chat(user, "<span class='notice'>You switch to semi-auto.</span>")
			SEND_SIGNAL(src, COMSIG_GUN_DISABLE_AUTOFIRE)
		if(2)
			select = 0
			burst_size = 3
			fire_delay = 2
			spread = 4
			to_chat(user, "<span class='notice'>You switch to [burst_size]-rnd Matter.</span>")
			SEND_SIGNAL(src, COMSIG_GUN_DISABLE_AUTOFIRE)
	playsound(user, 'sound/weapons/empty.ogg', 100, TRUE)
	update_icon()
	return

/obj/item/gun/ballistic/automatic/assault/morita1/desert
	name = "\improper Morita MK.I(desert)"
	desc = "Стандартная пехотная автоматическая винтовка под калибр .308. Широко применяется армейскими корпусами в Союзе Человечества. Популярность в гражданских кругах заслужила после сьемок в фильме Starboat Troopes./Модификация с пустынным камуфляжем"
	icon_state = "morita1_desert"
	item_state = "morita1_desert"

/obj/item/gun/ballistic/automatic/assault/morita1/forest
	name = "\improper Morita MK.I(forest)"
	desc = "Стандартная пехотная автоматическая винтовка под калибр .308. Широко применяется армейскими корпусами в Союзе Человечества. Популярность в гражданских кругах заслужила после сьемок в фильме Starboat Troopes./Модификация с лесным камуфляжем"
	icon_state = "morita1_forest"
	item_state = "morita1_forest"

/obj/item/gun/ballistic/automatic/assault/morita1/swamp
	name = "\improper Morita MK.I(swamp)"
	desc = "Стандартная пехотная автоматическая винтовка под калибр .308. Широко применяется армейскими корпусами в Союзе Человечества. Популярность в гражданских кругах заслужила после сьемок в фильме Starboat Troopes./Модификация с болотным камуфляжем"
	icon_state = "morita1_swamp"
	item_state = "morita1_swamp"
