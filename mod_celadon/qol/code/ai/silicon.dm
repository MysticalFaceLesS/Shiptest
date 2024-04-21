/mob/living/silicon/proc/checklaws() // Взято из code\modules\mob\living\silicon\silicon.dm строчка 285

	var/list = "<meta http-equiv='X-UA-Compatible' content='IE=edge' charset='UTF-8'/><b>Which laws do you want to include when stating them for the crew?</b><br><br>"

	if (laws.devillaws && laws.devillaws.len)
		for(var/index = 1, index <= laws.devillaws.len, index++)
			if (!devillawcheck[index])
				devillawcheck[index] = "No"
			list += {"<A href='byond://?src=[REF(src)];lawdevil=[index]'>[devillawcheck[index]] 666:</A> <font color='#cc5500'>[laws.devillaws[index]]</font><BR>"}

	if (laws.zeroth)
		if (!lawcheck[1])
			lawcheck[1] = "No" //Given Law 0's usual nature, it defaults to NOT getting reported. --NeoFite
		list += {"<A href='byond://?src=[REF(src)];lawc=0'>[lawcheck[1]] 0:</A> <font color='#ff0000'><b>[laws.zeroth]</b></font><BR>"}

	for (var/index = 1, index <= laws.hacked.len, index++)
		var/law = laws.hacked[index]
		if (length(law) > 0)
			if (!hackedcheck[index])
				hackedcheck[index] = "No"
			list += {"<A href='byond://?src=[REF(src)];lawh=[index]'>[hackedcheck[index]] [ionnum()]:</A> <font color='#660000'>[law]</font><BR>"}
			hackedcheck.len += 1

	for (var/index = 1, index <= laws.ion.len, index++)
		var/law = laws.ion[index]

		if (length(law) > 0)
			if (!ioncheck[index])
				ioncheck[index] = "Yes"
			list += {"<A href='byond://?src=[REF(src)];lawi=[index]'>[ioncheck[index]] [ionnum()]:</A> <font color='#547DFE'>[law]</font><BR>"}
			ioncheck.len += 1

	var/number = 1
	for (var/index = 1, index <= laws.inherent.len, index++)
		var/law = laws.inherent[index]

		if (length(law) > 0)
			lawcheck.len += 1

			if (!lawcheck[number+1])
				lawcheck[number+1] = "Yes"
			list += {"<A href='byond://?src=[REF(src)];lawc=[number]'>[lawcheck[number+1]] [number]:</A> [law]<BR>"}
			number++

	for (var/index = 1, index <= laws.supplied.len, index++)
		var/law = laws.supplied[index]
		if (length(law) > 0)
			lawcheck.len += 1
			if (!lawcheck[number+1])
				lawcheck[number+1] = "Yes"
			list += {"<A href='byond://?src=[REF(src)];lawc=[number]'>[lawcheck[number+1]] [number]:</A> <font color='#990099'>[law]</font><BR>"}
			number++
	list += {"<br><br><A href='byond://?src=[REF(src)];laws=1'>State Laws</A>"}

	usr << browse(list, "window=laws")
