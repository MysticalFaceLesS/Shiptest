/proc/tajaran_name(gender)
	switch(gender)
		if(MALE)
			return "[pick(GLOB.tajaran_names_male)]-[pick(GLOB.tajaran_names_male)]"
		if(FEMALE)
			return "[pick(GLOB.tajaran_names_female)]-[pick(GLOB.tajaran_names_female)]"
		else
			return tajaran_name(pick(MALE,FEMALE))
