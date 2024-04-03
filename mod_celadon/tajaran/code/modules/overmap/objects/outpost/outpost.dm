// Shamelessly cribbed from how Elite: Dangerous does station names.
/datum/overmap/outpost/gen_outpost_name()
	var/person_name
	if(prob(40))
		// fun fact: "Hutton" is in last_names
		person_name = pick(GLOB.last_names)
	else
		switch(rand(1, 6))
			if(1)
				person_name = pick(GLOB.moth_last)
			if(2)
				person_name = pick(prob(50) ? GLOB.lizard_names_male : GLOB.lizard_names_female)
			if(3)
				person_name = pick(GLOB.spider_last)
			if(4)
				person_name = kepori_name()
			if(5)
				person_name = vox_name()
			if(6)
				person_name = pick(prob(50) ? GLOB.tajaran_names_male : GLOB.tajaran_names_female)

	return "[person_name] [pick(GLOB.station_suffixes)]"
