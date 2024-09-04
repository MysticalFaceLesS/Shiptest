/obj/structure/statue/bronze/masson_kills		// Origin -> code\game\objects\structures\statues.dm
	name = "Masson Kill's"
	desc = "Статуя самого лучшего администратора что вы можете встретить в новогоднюю ночь. Его мешок полон подарков. Надеюсь, ты вел себя хорошо?"
	icon = 'mod_celadon/_storge_icons/icons/structures/statue.dmi'
	icon_state = "masson_kills"

/obj/structure/curtain/cloth/purpl
	icon = 'mod_celadon/_storge_icons/icons/structures/fancy.dmi'
	icon_type = "purpl_fancy"
	icon_state = "purpl_fancy-open"

/obj/structure/curtain/cloth/blacknormal
	icon = 'mod_celadon/_storge_icons/icons/structures/fancy.dmi'
	icon_type = "black_fancy"
	icon_state = "black_fancy-open"


/turf/open/floor/plating/asteroid/sand/wet
	icon = 'icons/turf/floors.dmi'
	icon_state = "wet_soft0"
	base_icon_state = "wet_soft"

/turf/open/floor/plating/asteroid/whitesandsdriedair
	name = "dried sand air"
	baseturfs = /turf/open/floor/plating/asteroid/whitesandsdriedair
	icon = 'icons/turf/floors/ws_floors.dmi'
	icon_state = "dried_up"
	icon_plating = "dried_up"
	base_icon_state = WHITESANDS_DRIED_ENV
	digResult = /obj/item/stack/ore/glass/whitesands
