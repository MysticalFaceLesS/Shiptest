/obj/item/gun/ballistic/automatic/assault/g36sh
//Описание
	name = "\improper G36-SH"
	desc = "Наследие огненной эры Союза Человечества, укороченная версия,  калибра 5.56x45. Технология производства восстановлена минитменами, но ввиду усложненной конструкции продана корпорации InteQ. Используется сотрудниками InteQ по сей день, как оружие для элитных наемников."
//Иконки
	icon = 'mod_celadon/_storge_icons/icons/guns/48x32guns.dmi'
	lefthand_file = 'mod_celadon/_storge_icons/icons/guns/guns_lefthand.dmi'
	righthand_file = 'mod_celadon/_storge_icons/icons/guns/guns_righthand.dmi'
	mob_overlay_icon = 'mod_celadon/_storge_icons/icons/guns/back.dmi'
	icon_state = "g36sh"
	item_state = "g36sh"
//Звуки
	fire_sound = 'mod_celadon/_storge_sounds/sound/gun/g36sh.ogg'
//Характеристики
	spread = 4
	wield_delay = 0.2 SECONDS
	fire_delay = 0.14 SECONDS
	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_NORMAL
	unique_mag_sprites_for_variants = TRUE
	mag_type = /obj/item/ammo_box/magazine/g36/sh
//Прочее
	var/obj/item/ammo_box/magazine/g36/sh/alternate_magazine

/obj/item/gun/ballistic/automatic/assault/g36sh/Initialize()
	. = ..()
	if (!alternate_magazine)
		alternate_magazine = new mag_type(src)
	spawnwithmagazine = FALSE
	mag_type = /obj/item/ammo_box/magazine/g36

/obj/item/gun/ballistic/automatic/assault/g36sh/inteq
	name = "\improper Moded G36-SH"
	desc = "Обширная модификация G36-SH, которая входит в стандартную комплектацию вооружения InteQ. Калибр 5,56x45 мм."
	icon_state = "g36shinteq"
	item_state = "g36shinteq"
	mob_overlay_icon = 'mod_celadon/_storge_icons/icons/guns/back_inteq.dmi'
	empty_indicator = TRUE
	empty_alarm = TRUE
	zoomable = TRUE

/obj/item/gun/ballistic/automatic/assault/g36sh/no_mag
	spawnwithmagazine = FALSE

/obj/item/gun/ballistic/automatic/assault/g36
	name = "\improper G36"
	desc = "Наследие огненной эры Союза Человечества , калибра 5.56x45 . Технология производства восстановлена минитменами , но ввиду усложненной конструкции продана корпорации InteQ. Используется сотрудниками InteQ по сей день , как оружие для элитных наемников. "
	icon = 'mod_celadon/_storge_icons/icons/guns/48x32guns.dmi'
	lefthand_file = 'mod_celadon/_storge_icons/icons/guns/guns_lefthand.dmi'
	righthand_file = 'mod_celadon/_storge_icons/icons/guns/guns_righthand.dmi'
	mob_overlay_icon = 'mod_celadon/_storge_icons/icons/guns/back.dmi'
	fire_sound = 'mod_celadon/_storge_sounds/sound/gun/g36.ogg'
	icon_state = "g36"
	item_state = "g36"
	spread = 2
	wield_delay = 0.5 SECONDS
	fire_delay = 0.14 SECONDS
	unique_mag_sprites_for_variants = TRUE
	mag_type = /obj/item/ammo_box/magazine/g36
	var/obj/item/ammo_box/magazine/g36/alternate_magazine

/obj/item/gun/ballistic/automatic/assault/g36/Initialize()
	. = ..()
	if (!alternate_magazine)
		alternate_magazine = new mag_type(src)
	spawnwithmagazine = FALSE
	mag_type = /obj/item/ammo_box/magazine/g36

/obj/item/gun/ballistic/automatic/assault/g36/no_mag
		spawnwithmagazine = FALSE

/obj/item/gun/ballistic/automatic/assault/g36/inteq
	name = "\improper Moded G36"
	desc = "Обширная модификация G36, которая входит в стандартную комплектацию вооружения InteQ. Калибр 5,56x45 мм."
	icon_state = "g36inteq"
	item_state = "g36inteq"
	mob_overlay_icon = 'mod_celadon/_storge_icons/icons/guns/back_inteq.dmi'
	empty_indicator = TRUE
	empty_alarm = TRUE
	zoomable = TRUE

/obj/item/gun/ballistic/automatic/assault/morita1
	name = "\improper Morita MK.I"
	desc = "Стандартная пехотная автоматическая винтовка под калибр .308. Широко применяется армейскими корпусами в Союзе Человечества. Популярность в гражданских кругах заслужила после сьемок в фильме Starboat Troopes."
	lefthand_file = 'mod_celadon/_storge_icons/icons/guns/guns_lefthand.dmi'
	righthand_file = 'mod_celadon/_storge_icons/icons/guns/guns_righthand.dmi'
	icon = 'mod_celadon/_storge_icons/icons/guns/48x32guns.dmi'
	fire_sound = 'mod_celadon/_storge_sounds/sound/gun/morita1.ogg'
	mob_overlay_icon = 'mod_celadon/_storge_icons/icons/guns/back.dmi'
	icon_state = "morita1"
	item_state = "morita1"
	spread = 3
	wield_delay = 0.6 SECONDS
	fire_delay = 0.20 SECONDS
	weapon_weight = WEAPON_HEAVY
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK
	unique_mag_sprites_for_variants = TRUE
	mag_type = /obj/item/ammo_box/magazine/morita1

/obj/item/gun/ballistic/automatic/assault/morita1/no_mag
	spawnwithmagazine = FALSE

/obj/item/gun/ballistic/automatic/assault/morita1/desert
	name = "\improper Morita MK.I(desert)"
	desc = "Стандартная пехотная автоматическая винтовка под калибр .308. Широко применяется армейскими корпусами в Союзе Человечества. Популярность в гражданских кругах заслужила после сьемок в фильме Starboat Troopes./Модификация с пустынным камуфляжем"
	icon_state = "morita1_desert"
	item_state = "morita1_desert"

/obj/item/gun/ballistic/automatic/assault/morita1/desert/no_mag
	spawnwithmagazine = FALSE

/obj/item/gun/ballistic/automatic/assault/morita1/forest
	name = "\improper Morita MK.I(forest)"
	desc = "Стандартная пехотная автоматическая винтовка под калибр .308. Широко применяется армейскими корпусами в Союзе Человечества. Популярность в гражданских кругах заслужила после сьемок в фильме Starboat Troopes./Модификация с лесным камуфляжем"
	icon_state = "morita1_forest"
	item_state = "morita1_forest"

/obj/item/gun/ballistic/automatic/assault/morita1/forest/no_mag
	spawnwithmagazine = FALSE

/obj/item/gun/ballistic/automatic/assault/morita1/swamp
	name = "\improper Morita MK.I(swamp)"
	desc = "Стандартная пехотная автоматическая винтовка под калибр .308. Широко применяется армейскими корпусами в Союзе Человечества. Популярность в гражданских кругах заслужила после сьемок в фильме Starboat Troopes./Модификация с болотным камуфляжем"
	icon_state = "morita1_swamp"
	item_state = "morita1_swamp"

/obj/item/gun/ballistic/automatic/assault/morita1/swamp/no_mag
	spawnwithmagazine = FALSE
