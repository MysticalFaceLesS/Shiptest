/obj/effect/mob_spawn/human/elysium_outpost
	death = FALSE
	roundstart = FALSE
	random = FALSE
	icon = 'icons/obj/machines/sleeper.dmi'
	icon_state = "cryopod"
	mob_species = /datum/species/human

// Cook

/obj/effect/mob_spawn/human/elysium_outpost/cook
	name = "Outpost Cook"
	id_job = "Cook"
	// short_desc = "You are a cook of Elysium."
	assignedrole = "Outpost Cook of Elysium"
	outfit = /datum/outfit/job/outpost/cook
	important_info = "Не покидайте свой аванпост без разрешения администрации, кроме тех случаев, когда вас силой забрали! Вы являетесь гражданином республики Элизиум и ваш долг проявить свою гражданскую позицию!"
	short_desc = "Готовьте еду, выращивайте растения, держите в чистоту свою кухню, разговаривайте с посетителями, поднимайте настроение им своей стряпнёй."
	flavour_text = "Готовьте, растите различную еду. Вы должны обеспечить аванпост едой, свежими фруктами и овощами. Вам разрешается применять CQC только на территории кухни и центрального бара. Вы также являетесь гражданином республики Элизиум, и поэтому без весомой причины покидать аванпост вы не можете. Если же вас с силой заставили это сделать - выживайте, применяйте силу только для обороны, и надейтесь, что кто-то сможет вам помочь. Не мешайте другим игрокам и обслуживающему персоналу аванпоста. Вы можете работать вместе, контактировать с капитанами и членами команд на аванпосту."

/obj/effect/mob_spawn/human/elysium_outpost/cook/Destroy()
	new /obj/machinery/cryopod/outpost/cook(drop_location())
	return ..()

/obj/effect/mob_spawn/human/elysium_outpost/cook/special(mob/living/new_spawn)
	new_spawn.fully_replace_character_name(null, random_unique_name(gender))

/obj/effect/mob_spawn/human/elysium_outpost/cook/Initialize()
	. = ..()
	var/area/A = get_area(src)
	if(A)
		notify_ghosts("Динамик в криокапсуле запиликал, извещая о том, что сон закончился, пора вставать на работу \the [A.name].", source = src, action=NOTIFY_ATTACK, flashwindow = FALSE)

// Bartender

/obj/effect/mob_spawn/human/elysium_outpost/bartender
	name = "Elysium Outpost Bartender"
	id_job = "Bartender"
	// short_desc = "You are a bartender of Elysium."
	assignedrole = "Outpost Bartender of Elysium"
	outfit = /datum/outfit/outpost/bartender
	important_info = "Не покидайте свой аванпост без разрешения администрации, кроме тех случаев, когда вас силой забрали! Вы являетесь гражданином республики Элизиум и ваш долг проявить свою гражданскую позицию!"
	short_desc = "Разливайте пиво, готовьте бахус самым отпетым капитанам, наводите порядок в своем баре, разговаривайте с поваром, если он есть, рассказывайте басни и слушайте истории капитанов."
	flavour_text = "Вы главный разливщик напитков и коктелей на этом ледяном куске камня в космосе. Ваш бар - ваша территория. Можете зарабатывать продажей напитков, а можете предлагать всем свои зеленые листочки. Вам разрешено применять силу в виде двух дробовиков к особо буйным посетителям, не понимают с первого слова - поймут после заряда дроби. Не мешайте другим игрокам и обслуживающему персоналу аванпоста. Вы можете работать вместе, контактировать с капитанами и членами команд на аванпосту."

/obj/effect/mob_spawn/human/elysium_outpost/bartender/Destroy()
	new /obj/machinery/cryopod/outpost/bartender(drop_location())
	return ..()

/obj/effect/mob_spawn/human/elysium_outpost/bartender/special(mob/living/new_spawn)
	new_spawn.fully_replace_character_name(null, random_unique_name(gender))

/obj/effect/mob_spawn/human/elysium_outpost/bartender/Initialize()
	. = ..()
	var/area/A = get_area(src)
	if(A)
		notify_ghosts("Динамик в криокапсуле запиликал, извещая о том, что сон закончился, пора вставать на работу \the [A.name].", source = src, action=NOTIFY_ATTACK, flashwindow = FALSE)

// Maid - Janitor

/obj/effect/mob_spawn/human/elysium_outpost/maid
	name = "Elysium Outpost Maid"
	id_job = "Maid"
	// short_desc = "You are a maid of Elysium."
	assignedrole = "Outpost Maid of Elysium"
	outfit = /datum/outfit/outpost/maid
	important_info = "Не покидайте свой аванпост без разрешения администрации, кроме тех случаев, когда вас силой забрали! Вы являетесь гражданином республики Элизиум и ваш долг проявить свою гражданскую позицию!"
	short_desc = "Убирайте мусор, чистите полы, заигрывайте с посетителями, выносите мусор, вносите позитив своим откровенным нарядом."
	flavour_text = "Вы горничная и по совместительству уборщица аванпоста. Ваша главная цель, поддерживать чистоту на аванпосту, в перерывах зависая на подиуме в баре. Если вас обидели, обратитесь к бармену или повару, эти ребята быстро поставят на место хулиганов! Не мешайте другим игрокам и обслуживающему персоналу аванпоста. Вы можете работать вместе, контактировать с капитанами и членами команд на аванпосту."

/obj/effect/mob_spawn/human/elysium_outpost/maid/Destroy()
	new /obj/machinery/cryopod/outpost/maid(drop_location())
	return ..()

/obj/effect/mob_spawn/human/elysium_outpost/maid/special(mob/living/new_spawn)
	new_spawn.fully_replace_character_name(null, random_unique_name(gender))

/obj/effect/mob_spawn/human/elysium_outpost/maid/Initialize()
	. = ..()
	var/area/A = get_area(src)
	if(A)
		notify_ghosts("Динамик в криокапсуле запиликал, извещая о том, что сон закончился, пора вставать на работу \the [A.name].", source = src, action=NOTIFY_ATTACK, flashwindow = FALSE)
