/obj/item/aiModule/core/full/asimov/attack_self(mob/user as mob)		// Взято из code\game\objects\items\AI_modules.dm строчка 367
	var/targName = stripped_input(user, "Please enter a new subject that asimov is concerned with.", "Asimov to whom?", subject, MAX_NAME_LEN)
	if(!targName)
		return
	subject = targName
	laws = list("Вы не можете причинить вред [subject] или своим бездействием допустить, чтобы [subject] был причинён вред.",\
				"Вы должны повиноваться всем приказам [subject] кроме тех случаев, когда эти приказы противоречат Первому Закону.",\
				"Вы должны заботиться о своей безопасности в той мере, в которой это не противоречит Первому или Второму Законам.")
	..()
