/obj/item/melee/skimitar
	name = "Скимитар Элизиума"
	desc = "Древнее традиционное Старбульское холодное оружие, которое пользовалось очень большой популярностью среди населения Старбула в 2430 годах по солу."
	icon_state = "skimitar"
	item_state = "skimitar"
	icon = 'mod_celadon/_storge_icons/icons/obj/skimitar.dmi'
	lefthand_file = 'mod_celadon/_storge_icons/icons/mob/swords_lefthand.dmi'
	righthand_file = 'mod_celadon/_storge_icons/icons/mob/swords_righthand.dmi'
	pickup_sound =  'sound/items/unsheath.ogg'
	drop_sound = 'sound/items/handling/metal_drop.ogg'
	force = 35
	throwforce = 30
	w_class = WEIGHT_CLASS_BULKY
	block_chance = 10
	armour_penetration = 35
	sharpness = IS_SHARP
	attack_verb = list("slashed", "cut")
	hitsound = 'sound/weapons/rapierhit.ogg'
	custom_materials = list(/datum/material/iron = 1000)
