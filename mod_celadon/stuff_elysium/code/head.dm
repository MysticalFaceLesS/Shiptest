/obj/item/clothing/head/bandana/elysium
	name = "Пустотная бандана"
	desc = "Бандана с патриотической надписью \"Слава Республике!\" на ней. Расспространённый среди различных слоёв населения патриотический головной убор."
	icon = 'mod_celadon/_storge_icons/icons/obj/hats.dmi'
	mob_overlay_icon = 'mod_celadon/_storge_icons/icons/mob/elysium_head.dmi'

/obj/item/clothing/head/bandana/elysium/black
	name = "Чёрная бандана"
	icon_state = "bandana_black_elysium"
	mob_overlay_state = "bandana_black_elysium"

/obj/item/clothing/head/bandana/elysium/white
	name = "Белая бандана"
	icon_state = "bandana_white_elysium"
	mob_overlay_state = "bandana_white_elysium"

/obj/item/clothing/head/bandana/elysium/green
	name = "Зелёная бандана"
	icon_state = "bandana_green_elysium"
	mob_overlay_state = "bandana_green_elysium"

/obj/item/clothing/head/turban
	name = "Пустой тюрбан"
	desc = "Очень популярный традиционный головной убор в Республике Элизиум. Очень часто можно увидеть в повседневной жизни на территории Республики. Традиционно носится исключительно мужчинами."
	icon = 'mod_celadon/_storge_icons/icons/obj/hats.dmi'
	mob_overlay_icon = 'mod_celadon/_storge_icons/icons/mob/elysium_head.dmi'

/obj/item/clothing/head/turban/black
	name = "Чёрный тюрбан"
	icon_state = "turban_black"
	mob_overlay_state = "turban_black"

/obj/item/clothing/head/turban/white
	name = "Белый тюрбан"
	icon_state = "turban_white"
	mob_overlay_state = "turban_white"

/obj/item/clothing/head/helmet/m10_elysium
	name = "Шлем М10"
	desc = "Расспрастранённый защитный головной убор разработанный для правоохранительных органов Республики. Но со временем стал общедоступным шлемом для всех граждан Республики. На этом шлеме виднеется зелёная повязка со слоганом Республики Элизиум: \"Сила в единстве, мудрость в вере\""
	icon = 'mod_celadon/_storge_icons/icons/obj/hats.dmi'
	icon_state = "m10helm_elysium"
	mob_overlay_icon = 'mod_celadon/_storge_icons/icons/mob/elysium_head.dmi'
	mob_overlay_state = "m10helm_elysium"

/obj/item/clothing/head/shemag
	name = "Пустотный шемаг"
	desc = "Распрастронённый традиционный пустынный головной убор на территории Республики Элизиум. Отлично подходит для защиты лица от песчаных бурь Старбула."
	icon = 'mod_celadon/_storge_icons/icons/obj/hats.dmi'
	mob_overlay_icon = 'mod_celadon/_storge_icons/icons/mob/elysium_head.dmi'

/obj/item/clothing/head/shemag/black
	name = "Чёрный шемаг"
	icon_state = "shemag_black"
	mob_overlay_state = "shemag_black"

/obj/item/clothing/head/shemag/green
	name = "Зелёный шемаг"
	icon_state = "shemag_green"
	mob_overlay_state = "shemag_green"

/obj/item/clothing/head/shemag/white
	name = "Белый шемаг"
	icon_state = "shemag_white"
	mob_overlay_state = "shemag_white"

/obj/item/clothing/head/space/elysm
	name = "Void"
	desc = "Этого тут быть не должно.."
	icon = 'mod_celadon/_storge_icons/icons/obj/hats.dmi'
	mob_overlay_icon = 'mod_celadon/_storge_icons/icons/mob/space.dmi'
	clothing_flags = STOPSPRESSUREDAMAGE | THICKMATERIAL | SNUG_FIT | BLOCK_GAS_SMOKE_EFFECT | ALLOWINTERNALS
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELM_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_HELM_MAX_TEMP_PROTECT
	flash_protect = FLASH_PROTECTION_WELDER
	strip_delay = 50
	equip_delay_other = 50
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH | PEPPERPROOF
	resistance_flags = NONE
	dog_fashion = null

/obj/item/clothing/head/space/elysm/space_helm
	name = "Elysium EVA Helmet"
	desc = "Довольно добротно сделанный шлем с маркировками сепаратистов Элизиума"
	icon = 'mod_celadon/_storge_icons/icons/obj/hats.dmi'
	mob_overlay_icon = 'mod_celadon/_storge_icons/icons/mob/space.dmi'
	icon_state = "space_elysium"
	mob_overlay_state = "space_elysium"
	armor = list("melee" = 20, "bullet" = 15, "laser" = 15, "energy" = 20, "bomb" = 35, "bio" = 100, "rad" = 75, "fire" = 50, "acid" = 100)

/// CentCom Elyzium
/obj/item/clothing/head/turban_elysium
	name = "\improper CentCom commander cap"
	desc = "A traditional turban worn by Elysium employees. It is dyed in the national color of lettuce, which symbolizes the Starbull Gardens."
	icon = 'mod_celadon/_storge_icons/icons/obj/elysium_commander.dmi'
	mob_overlay_icon = 'mod_celadon/_storge_icons/icons/mob/elysium_commander.dmi'
	icon_state = "turban_elysium"
	item_state = "turban_elysium"
	flags_inv = 0
	strip_delay = (8 SECONDS)
	body_parts_covered = HEAD | HAIR

/obj/item/clothing/head/shemag_elysium
	name = "\improper CentCom commander cap"
	desc = "A traditional shemag worn by Elysium employees. It is dyed in the national color of lettuce, which symbolizes the Starbull Gardens."
	icon = 'mod_celadon/_storge_icons/icons/obj/elysium_commander.dmi'
	mob_overlay_icon = 'mod_celadon/_storge_icons/icons/mob/elysium_commander.dmi'
	icon_state = "shemag_elysium"
	item_state = "shemag_elysium"
	flags_inv = 0
	strip_delay = (8 SECONDS)
	body_parts_covered = HEAD | HAIR | FACEHAIR
