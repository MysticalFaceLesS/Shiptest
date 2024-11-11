/datum/outfit/debug
	name = "A debug outfit"

/datum/admins/proc/output_all_devil_info()
	var/devil_number = 0
	for(var/datum/mind/D in SSticker.mode.devils)
		devil_number++
		var/datum/antagonist/devil/devil = D.has_antag_datum(/datum/antagonist/devil)
		to_chat(usr, "Devil #[devil_number]:<br><br>" + devil.printdevilinfo(), confidential = TRUE)
	if(!devil_number)
		to_chat(usr, "<b>No Devils located</b>" , confidential = TRUE)

/datum/admins/proc/output_devil_info(mob/living/M)
	if(is_devil(M))
		var/datum/antagonist/devil/devil = M.mind.has_antag_datum(/datum/antagonist/devil)
		to_chat(usr, devil.printdevilinfo(), confidential = TRUE)
	else
		to_chat(usr, "<b>[M] is not a devil.", confidential = TRUE)