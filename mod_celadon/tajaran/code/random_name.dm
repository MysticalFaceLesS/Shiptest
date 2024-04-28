/proc/random_unique_tajaran_name(gender, attempts_to_find_unique_name=10)
	for(var/i in 1 to attempts_to_find_unique_name)
		. = capitalize(tajaran_name(gender))

		if(!findname(.))
			break
