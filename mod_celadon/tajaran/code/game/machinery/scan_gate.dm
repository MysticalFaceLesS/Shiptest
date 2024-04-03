#define SCANGATE_TAJARAN "tajaran"

/obj/machinery/scanner_gate/proc/perform_scan(mob/living/M)
	var/beep = FALSE
	switch(scangate_mode)
		if(SCANGATE_NONE)
			return
		if(SCANGATE_WANTED)
			if(ishuman(M))
				var/mob/living/carbon/human/H = M
				var/perpname = H.get_face_name(H.get_id_name())
				var/datum/data/record/R = find_record("name", perpname, GLOB.data_core.security)
				if(!R || (R.fields["criminal"] == "*Arrest*"))
					beep = TRUE
		if(SCANGATE_MINDSHIELD)
			if(HAS_TRAIT(M, TRAIT_MINDSHIELD))
				beep = TRUE
		if(SCANGATE_NANITES)
			if(SEND_SIGNAL(M, COMSIG_HAS_NANITES))
				if(nanite_cloud)
					var/datum/component/nanites/nanites = M.GetComponent(/datum/component/nanites)
					if(nanites && nanites.cloud_id == nanite_cloud)
						beep = TRUE
				else
					beep = TRUE
		if(SCANGATE_DISEASE)
			if(iscarbon(M))
				var/mob/living/carbon/C = M
				if(get_disease_severity_value(C.check_virus()) >= get_disease_severity_value(disease_threshold))
					beep = TRUE
		if(SCANGATE_SPECIES)
			if(ishuman(M))
				var/mob/living/carbon/human/H = M
				var/datum/species/scan_species = /datum/species/human
				switch(detect_species)
					if(SCANGATE_LIZARD)
						scan_species = /datum/species/lizard
					if(SCANGATE_FLY)
						scan_species = /datum/species/fly
					if(SCANGATE_PLASMAMAN)
						scan_species = /datum/species/plasmaman
					if(SCANGATE_MOTH)
						scan_species = /datum/species/moth
					if(SCANGATE_JELLY)
						scan_species = /datum/species/jelly
					if(SCANGATE_POD)
						scan_species = /datum/species/pod
					if(SCANGATE_ZOMBIE)
						scan_species = /datum/species/zombie
					if(SCANGATE_SPIDER)
						scan_species = /datum/species/spider
					if(SCANGATE_IPC)
						scan_species = /datum/species/ipc
					if(SCANGATE_ETHEREAL)
						scan_species = /datum/species/ethereal
					if(SCANGATE_KEPORI)
						scan_species = /datum/species/kepori
					if(SCANGATE_TAJARAN)
						scan_species = /datum/species/tajaran
				if(is_species(H, scan_species))
					beep = TRUE
				if(detect_species == SCANGATE_ZOMBIE) //Can detect dormant zombies
					if(H.getorganslot(ORGAN_SLOT_ZOMBIE))
						beep = TRUE
		if(SCANGATE_GUNS)
			for(var/I in M.get_contents())
				if(istype(I, /obj/item/gun))
					beep = TRUE
					break

	if(reverse)
		beep = !beep
	if(beep)
		alarm_beep()
	else
		set_scanline("scanning", 10)



#undef SCANGATE_TAJARAN
