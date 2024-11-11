//////////////////////////////////////////////
//                                          //
//               DEVIL                      //
//                                          //
//////////////////////////////////////////////

/datum/dynamic_ruleset/roundstart/devil
	name = "Devil"
	antag_flag = ROLE_DEVIL
	antag_datum = /datum/antagonist/devil
	restricted_roles = list("Lawyer", "Curator", "Chaplain", "Prisoner", "Head of Security", "Captain", "AI")
	required_candidates = 1
	weight = 3
	cost = 0
	requirements = list(101,101,101,101,101,101,101,101,101,101)
	high_population_requirement = 101
	antag_cap = list(1,1,1,2,2,2,3,3,3,4)

/datum/dynamic_ruleset/roundstart/devil/pre_execute()
	. = ..()
	var/num_devils = antag_cap[indice_pop]
	mode.antags_rolled += num_devils

	for(var/j = 0, j < num_devils, j++)
		if (!candidates.len)
			break
		var/mob/devil = pick_n_take(candidates)
		assigned += devil.mind
		devil.mind.special_role = ROLE_DEVIL
		devil.mind.restricted_roles = restricted_roles
		GLOB.pre_setup_antags += devil.mind

		log_game("[key_name(devil)] has been selected as a devil")
	return TRUE

/datum/dynamic_ruleset/roundstart/devil/execute()
	for(var/datum/mind/devil in assigned)
		add_devil(devil.current, ascendable = TRUE)
		GLOB.pre_setup_antags -= devil
		add_devil_objectives(devil,2)
	return TRUE

/datum/dynamic_ruleset/roundstart/devil/proc/add_devil_objectives(datum/mind/devil_mind, quantity)
	var/list/validtypes = list(/datum/objective/devil/soulquantity, /datum/objective/devil/soulquality, /datum/objective/devil/sintouch, /datum/objective/devil/buy_target)
	var/datum/antagonist/devil/D = devil_mind.has_antag_datum(/datum/antagonist/devil)
	for(var/i = 1 to quantity)
		var/type = pick(validtypes)
		var/datum/objective/devil/objective = new type(null)
		objective.owner = devil_mind
		D.objectives += objective
		if(!istype(objective, /datum/objective/devil/buy_target))
			validtypes -= type
		else
			objective.find_target()

//////////////////////////////////////////////
//                                          //
//               METEOR                     //
//                                          //
//////////////////////////////////////////////

/datum/dynamic_ruleset/roundstart/meteor
	name = "Meteor"
	persistent = TRUE
	required_candidates = 0
	weight = 3
	cost = 0
	requirements = list(101,101,101,101,101,101,101,101,101,101)
	high_population_requirement = 101
	var/meteordelay = 2000
	var/nometeors = 0
	var/rampupdelta = 5

/datum/dynamic_ruleset/roundstart/meteor/rule_process()
	if(nometeors || meteordelay > world.time - SSticker.round_start_time)
		return

	var/list/wavetype = GLOB.meteors_normal
	var/meteorminutes = (world.time - SSticker.round_start_time - meteordelay) / 10 / 60

	if (prob(meteorminutes))
		wavetype = GLOB.meteors_threatening

	if (prob(meteorminutes/2))
		wavetype = GLOB.meteors_catastrophic

	var/ramp_up_final = clamp(round(meteorminutes/rampupdelta), 1, 10)

	spawn_meteors(ramp_up_final, wavetype)