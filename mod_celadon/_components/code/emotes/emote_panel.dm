var/last_emote_time = 0
var/timer = 20

/proc/emote_with_delay(emote, delay)
    if (world.time - last_emote_time < delay)
        return
    usr.emote(emote)
    last_emote_time = world.time

/mob/living/carbon/human/verb/emote_airguitar()
	set name = "~ Воображаемая гитара"
	set category = "Эмоции"
	emote_with_delay("airguitar", timer)

/mob/living/carbon/human/verb/emote_blink()
	set name = "~ Моргать"
	set category = "Эмоции"
	emote_with_delay("blink", timer)

/mob/living/carbon/human/verb/emote_blink_r()
	set name = "~ Быстро моргать"
	set category = "Эмоции"
	emote_with_delay("blink_r", timer)

/mob/living/carbon/human/verb/emote_blush()
	set name = "~ Краснеть"
	set category = "Эмоции"
	emote_with_delay("blush", timer)

/mob/living/carbon/human/verb/emote_bow()
	set name = "~ Поклон"
	set category = "Эмоции"
	emote_with_delay("bow", timer)

/mob/living/carbon/human/verb/emote_burp()
	set name = "~ Рыгать"
	set category = "Эмоции"
	emote_with_delay("burp", timer)

/mob/living/carbon/human/verb/emote_clap()
	set name = "> Хлопать"
	set category = "Эмоции"
	emote_with_delay("clap", timer)

/mob/living/carbon/human/verb/emote_crack()
	set name = "> Хрустнуть костяшками"
	set category = "Эмоции"
	emote_with_delay("crack", timer)

/mob/living/carbon/human/verb/emote_cross()
	set name = "~ Скрестить руки"
	set category = "Эмоции"
	emote_with_delay("cross", timer)

// /mob/living/carbon/human/verb/emote_mothchitter() // Moth
// 	set name = "< Жужать >"
// 	set category = "Эмоции"
// 	emote_with_delay("mothchitter", timer)

/mob/living/carbon/human/verb/emote_laugh()
	set name = "> Смеяться"
	set category = "Эмоции"
	emote_with_delay("laugh", timer)

/mob/living/carbon/human/verb/collapse()
	set name = "> Споткнуться"
	set category = "Эмоции"
	emote_with_delay("collapse", timer)

/mob/living/carbon/human/verb/cough()
	set name = "> Кашлять"
	set category = "Эмоции"
	emote_with_delay("cough", timer)

/mob/living/carbon/human/verb/dance()
	set name = "~ Танцевать "
	set category = "Эмоции"
	emote_with_delay("dance", timer)

/mob/living/carbon/human/verb/emote_drool()
	set name = "~ Пускать слюни"
	set category = "Эмоции"
	emote_with_delay("drool", timer)

/mob/living/carbon/human/verb/emote_faint()
	set name = "> Потерять сознание"
	set category = "Эмоции"
	emote_with_delay("faint", timer)

// /mob/living/carbon/human/verb/emote_flap() // Moth/Kepori
// 	set name = "< Махнуть крыльями >"
// 	set category = "Эмоции"
// 	emote_with_delay("flap", timer)

/mob/living/carbon/human/verb/emote_flip()
	set name = "> Сделать кувырок"
	set category = "Эмоции"
	emote_with_delay("flip", timer)

// /mob/living/carbon/human/verb/aflap() // Moth/Kepori
// 	set name = "< Взмахнуть крыльями > "
// 	set category = "Эмоции"
// 	emote_with_delay("aflap", timer)

/mob/living/carbon/human/verb/emote_frown()
	set name = "~ Недовольно смотреть"
	set category = "Эмоции"
	emote_with_delay("frown", timer)

/mob/living/carbon/human/verb/emote_gag()
	set name = "> Подавиться"
	set category = "Эмоции"
	emote_with_delay("gag", timer)

/mob/living/carbon/human/verb/emote_gasp()
	set name = "> Задыхаться"
	set category = "Эмоции"
	emote_with_delay("gasp", timer)

/mob/living/carbon/human/verb/emote_warcray()
	set name = "> Боевой клич"
	set category = "Эмоции"
	emote_with_delay("warcray", timer)

/mob/living/carbon/human/verb/emote_giggle()
	set name = "> Хихикать"
	set category = "Эмоции"
	emote_with_delay("giggle", timer)

/mob/living/carbon/human/verb/emote_grin()
	set name = "~ Ухмыльнуться"
	set category = "Эмоции"
	emote_with_delay("grin", timer)

/mob/living/carbon/human/verb/emote_groan()
	set name = "> Стонать"
	set category = "Эмоции"
	emote_with_delay("groan", timer)

/mob/living/carbon/human/verb/emote_growl()
	set name = "~ Рычать"
	set category = "Эмоции"
	emote_with_delay("growl", timer)

/mob/living/carbon/human/verb/emote_grimace()
	set name = "~ Кривляться"
	set category = "Эмоции"
	emote_with_delay("grimace", timer)

/mob/living/carbon/human/verb/emote_jump()
	set name = "~ Прыгать"
	set category = "Эмоции"
	emote_with_delay("jump", timer)

/mob/living/carbon/human/verb/emote_kiss()
	set name = "> Воздушный поцелуй"
	set category = "Эмоции"
	emote_with_delay("kiss", timer)

/mob/living/carbon/human/verb/emote_look()
	set name = "~ Смотреть"
	set category = "Эмоции"
	emote_with_delay("look", timer)

/mob/living/carbon/human/verb/emote_nod()
	set name = "~ Кивнуть"
	set category = "Эмоции"
	emote_with_delay("nod", timer)

/mob/living/carbon/human/verb/emote_msqueak()
	set name = "~ Пискнуть"
	set category = "Эмоции"
	emote_with_delay("msqueak", timer)

/mob/living/carbon/human/verb/emote_peace()
	set name = "< Знак мира >"
	set category = "Эмоции"
	emote_with_delay("peace", timer)

/mob/living/carbon/human/verb/emote_pout()
	set name = "~ Дуться"
	set category = "Эмоции"
	emote_with_delay("pout", timer)

/mob/living/carbon/human/verb/emote_scowl()
	set name = "~ Хмуриться"
	set category = "Эмоции"
	emote_with_delay("scowl", timer)

/mob/living/carbon/human/verb/emote_shake()
	set name = "~ Мотать головой"
	set category = "Эмоции"
	emote_with_delay("shake", timer)

/mob/living/carbon/human/verb/emote_shiver()
	set name = "~ Трепетать"
	set category = "Эмоции"
	emote_with_delay("shiver", timer)

/mob/living/carbon/human/verb/emote_slap()
	set name = "> Шлёпнуть"
	set category = "Эмоции"
	emote_with_delay("slap", timer)

/mob/living/carbon/human/verb/emote_sigh()
	set name = "> Вздыхать"
	set category = "Эмоции"
	emote_with_delay("sigh", timer)

/mob/living/carbon/human/verb/emote_smile()
	set name = "~ Улыбаться "
	set category = "Эмоции"
	emote_with_delay("smile", timer)

/mob/living/carbon/human/verb/emote_sneeze()
	set name = "> Чихнуть"
	set category = "Эмоции"
	emote_with_delay("sneeze", timer)

/mob/living/carbon/human/verb/emote_smug()
	set name = "~ Самодовольство"
	set category = "Эмоции"
	emote_with_delay("smug", timer)

/mob/living/carbon/human/verb/emote_sniff()
	set name = "> Нюхать"
	set category = "Эмоции"
	emote_with_delay("sniff", timer)

/mob/living/carbon/human/verb/emote_snore()
	set name = "> Храпеть"
	set category = "Эмоции"
	emote_with_delay("snore", timer)

/mob/living/carbon/human/verb/emote_spin()
	set name = "> Кружиться"
	set category = "Эмоции"
	emote_with_delay("spin", timer)

/mob/living/carbon/human/verb/emote_stare()
	set name = "~ Пялиться"
	set category = "Эмоции"
	emote_with_delay("stare", timer)

/mob/living/carbon/human/verb/emote_strech()
	set name = "~ Потягиваться"
	set category = "Эмоции"
	emote_with_delay("strech", timer)

/mob/living/carbon/human/verb/emote_sulk()
	set name = "~ Сердиться"
	set category = "Эмоции"
	emote_with_delay("sulk", timer)

/mob/living/carbon/human/verb/emote_surprised()
	set name = "~ Удивиться"
	set category = "Эмоции"
	emote_with_delay("surprised", timer)

/mob/living/carbon/human/verb/emote_surrender()
	set name = "< Сдаться >"
	set category = "Эмоции"
	emote_with_delay("surrender", timer)

/mob/living/carbon/human/verb/emote_tremble()
	set name = "~ Дрожать"
	set category = "Эмоции"
	emote_with_delay("tremble", timer)

/mob/living/carbon/human/verb/emote_twitch()
	set name = "~ Дёргаться"
	set category = "Эмоции"
	emote_with_delay("twitch", timer)

/mob/living/carbon/human/verb/emote_twitch_s()
	set name = "~ Сильно дёргаться"
	set category = "Эмоции"
	emote_with_delay("twitch_s", timer)

/mob/living/carbon/human/verb/emote_wave()
	set name = "~ Махать рукой"
	set category = "Эмоции"
	emote_with_delay("wave", timer)

/mob/living/carbon/human/verb/emote_whimper()
	set name = "~ Хныкать"
	set category = "Эмоции"
	emote_with_delay("whimper", timer)

/mob/living/carbon/human/verb/emote_wsmile()
	set name = "~ Слегка улыбнуться"
	set category = "Эмоции"
	emote_with_delay("wsmile", timer)

/mob/living/carbon/human/verb/emote_yawn()
	set name = "> Зевать"
	set category = "Эмоции"
	emote_with_delay("yawn", timer)

// /mob/living/carbon/human/verb/emote_gurgle() // Slime
// 	set name = "< Хлюпать >"
// 	set category = "Эмоции"
//	emote_with_delay("gurgle", timer)

// /mob/living/carbon/human/verb/emote_clack() // Spider
// 	set name = "< Щёлкнуть челюстью >"
// 	set category = "Эмоции"
//	emote_with_delay("clack", timer)

/mob/living/carbon/human/verb/cry()
	set name = "> Плакать"
	set category = "Эмоции"
	emote_with_delay("cry", timer)

/mob/living/carbon/human/verb/emote_eyebrow()
	set name = "~ Приподнять бровь"
	set category = "Эмоции"
	emote_with_delay("eyebrow", timer)

/mob/living/carbon/human/verb/emote_grumble()
	set name = "~ Ворчать"
	set category = "Эмоции"
	emote_with_delay("grumble", timer)

/mob/living/carbon/human/verb/emote_mumble()
	set name = "~ Бормотать"
	set category = "Эмоции"
	emote_with_delay("mumble", timer)

/mob/living/carbon/human/verb/emote_scream()
	set name = "> Кричать"
	set category = "Эмоции"
	emote_with_delay("scream", timer)

/mob/living/carbon/human/verb/emote_purr()
	set name = "~ Мурчать"
	set category = "Эмоции"
	emote_with_delay("purr", timer)

/mob/living/carbon/human/verb/emote_purrl()
	set name = "~ Мурчать дольше"
	set category = "Эмоции"
	emote_with_delay("purrl", timer)

/mob/living/carbon/human/verb/emote_fpurr()
	set name = "~ Урчать"
	set category = "Эмоции"
	emote_with_delay("fox_purr", timer)

/mob/living/carbon/human/verb/emote_bark()
	set name = "~ Гавкнуть"
	set category = "Эмоции"
	emote_with_delay("bark", timer)

/mob/living/carbon/human/verb/emote_wbark()
	set name = "~ Дважды гавкнуть"
	set category = "Эмоции"
	emote_with_delay("wbark", timer)

/mob/living/carbon/human/verb/emote_fhowl()
	set name = "~ Выть"
	set category = "Эмоции"
	emote_with_delay("howl", timer)

/mob/living/carbon/human/verb/emote_hiss()
	set name = "~ Шипеть"
	set category = "Эмоции"
	emote_with_delay("hiss", timer)

/mob/living/carbon/human/verb/emote_pale()
	set name = "~ Бледнеть"
	set category = "Эмоции"
	emote_with_delay("pale", timer)

/mob/living/carbon/human/verb/emote_raise()
	set name = "< Поднять руки >"
	set category = "Эмоции"
	emote_with_delay("raise", timer)

/mob/living/carbon/human/verb/emote_salute()
	set name = "~ Воинское приветствие"
	set category = "Эмоции"
	emote_with_delay("salute", timer)

/mob/living/carbon/human/verb/emote_shame()
	set name = "~ Стыдиться"
	set category = "Эмоции"
	emote_with_delay("shame", timer)

/mob/living/carbon/human/verb/emote_hoot()
	set name = "> Свистеть"
	set category = "Эмоции"
	emote_with_delay("hoot", timer)

/mob/living/carbon/human/verb/emote_shrug()
	set name = "~ Пожать плечами"
	set category = "Эмоции"
	emote_with_delay("shrug", timer)

/mob/living/carbon/human/verb/emote_wag() // Lizard, Tajara
	set name = "< Махать хвостом >"
	set category = "Эмоции"
	emote_with_delay("wag", timer)

/mob/living/carbon/human/verb/emote_wink()
	set name = "~ Подмигнуть"
	set category = "Эмоции"
	emote_with_delay("wink", timer)
