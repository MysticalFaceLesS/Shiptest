#define CHECK_STRING_EXISTS(X) if(!istext(data[X])) { log_world("[##X] missing from json!"); continue; }
#define CHECK_LIST_EXISTS(X) if(!islist(data[X])) { log_world("[##X] missing from json!"); continue; }
/datum/controller/subsystem/mapping/proc/load_ship_templates()		//MOD_CELADON -> mod_celadon\configs\code\configs.dm
	maplist = list()
	ship_purchase_list = list()
	var/list/filelist = flist("_maps/_mod_celadon/configs/")
	for(var/filename in filelist)
		var/file = file("_maps/_mod_celadon/configs/" + filename)
		if(!file)
			log_world("Could not open map config: [filename]")
			continue
		file = file2text(file)
		if(!file)
			log_world("map config is not text: [filename]")
			continue

		var/list/data = json_decode(file)
		if(!data)
			log_world("map config is not json: [filename]")
			continue

		CHECK_STRING_EXISTS("map_name")
		CHECK_STRING_EXISTS("map_path")
		CHECK_LIST_EXISTS("job_slots")
		var/datum/map_template/shuttle/S = new(data["map_path"], data["map_name"], TRUE)
		S.file_name = data["map_path"]

		if(istext(data["map_short_name"]))
			S.short_name = data["map_short_name"]
		else
			S.short_name = copytext(S.name, 1, 20)

		if(istext(data["prefix"]))
			S.prefix = data["prefix"]
			if(istext(data["faction_name"]))
				S.faction_name = data["faction_name"]
			else
				S.faction_name = ship_prefix_to_faction(S.prefix)

		S.category = S.faction_name

		if(islist(data["namelists"]))
			S.name_categories = data["namelists"]

		if(isnum(data[ "unique_ship_access" ] && data["unique_ship_access"]))
			S.unique_ship_access = data[ "unique_ship_access" ]

		if(istext(data["description"]))
			S.description = data["description"]

		if(islist(data["tags"]))
			S.tags = data["tags"]

		S.job_slots = list()
		var/list/job_slot_list = data["job_slots"]
		for(var/job in job_slot_list)
			var/datum/job/job_slot
			var/value = job_slot_list[job]
			var/slots
			if(isnum(value))
				job_slot = GLOB.name_occupations[job]
				slots = value
			else if(islist(value))
				var/datum/outfit/job_outfit = text2path(value["outfit"])
				if(isnull(job_outfit))
					stack_trace("Invalid job outfit! [value["outfit"]] on [S.name]'s config! Defaulting to assistant clothing.")
					job_outfit = /datum/outfit/job/assistant
				job_slot = new /datum/job(job, job_outfit)
				job_slot.display_order = length(S.job_slots)
				job_slot.wiki_page = value["wiki_page"]
				job_slot.officer = value["officer"]
				slots = value["slots"]

			if(!job_slot || !slots)
				stack_trace("Invalid job slot entry! [job]: [value] on [S.name]'s config! Excluding job.")
				continue

			S.job_slots[job_slot] = slots
		if(isnum(data["limit"]))
			S.limit = data["limit"]

		if(isnum(data["spawn_time_coeff"]))
			S.spawn_time_coeff = data["spawn_time_coeff"]

		if(isnum(data["officer_time_coeff"]))
			S.officer_time_coeff = data["officer_time_coeff"]

		if(isnum(data["starting_funds"]))
			S.starting_funds = data["starting_funds"]

		if(isnum(data["enabled"]) && data["enabled"])
			S.enabled = TRUE
			ship_purchase_list[S.name] = S

		if(isnum(data["roundstart"]) && data["roundstart"])
			maplist[S.name] = S

		if(isnum(data["space_spawn"]) && data["space_spawn"])
			S.space_spawn = TRUE

		shuttle_templates[S.file_name] = S
		map_templates[S.file_name] = S
#undef CHECK_STRING_EXISTS
#undef CHECK_LIST_EXISTS
