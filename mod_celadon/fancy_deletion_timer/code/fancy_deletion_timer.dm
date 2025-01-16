/*
Fancy Timer

Component that handles fancy deleting with timer
Can contain an atom which will spawn upon deletion.
Intended use with atoms only

*/

/datum/component/fancy_deleting_timer

	///In seconds, so dont use time defines here
	var/timer
	var/is_ticking

	/// How many times did we failed deleting the parent when timer ended
	var/times_we_failed_deleting
	var/deleting_attempts = 5
	var/ignore_client_in_sight = FALSE

	/// If TRUE works as whitelist; checks for THESE turfs to be deleted on. If FALSE works as blacklist; will NOT be deleted on these turfs upon check
	var/turf_whitelist = TRUE
	var/list/turf/T = list()

	/// Atom to spawn upon deletion of parent
	var/atom/effect
	/// Where we will spawn our effect. Handles: "loc"; "turf"
	var/effect_place

	var/atom/A

//_________________HELPER PROCS______________________
/// Handles the timer start. Not in initialize in cases when you want to add a timer but dont want to start it right away.
/datum/component/fancy_deleting_timer/proc/start_the_timer(time)
	if(!A && parent)
		A = parent
	timer = time ? time : timer
	is_ticking = TRUE
	if(!active_timers)
		addtimer(CALLBACK(src, PROC_REF(tick_tock)), 1 SECONDS)
	return is_ticking

/datum/component/fancy_deleting_timer/proc/stop_the_timer()
	is_ticking = FALSE
	LAZYNULL(active_timers)
	return

/datum/component/fancy_deleting_timer/proc/delete_the_timer()
	Destroy(0,1)

//___________________________________________________

/datum/component/fancy_deleting_timer/proc/tick_tock()
	addtimer(CALLBACK(src, PROC_REF(tick_tock)), 1 SECONDS)
	if(!timer)
		batteries_out()
		return
	else if(is_ticking)
		timer--

/datum/component/fancy_deleting_timer/proc/spawn_effect()
	if(effect)
		switch(effect_place)
			if("loc")
				effect_place = A.loc
//			if("turf")
//				effect_place = get_turf(parent)
			else
				effect_place = get_turf(parent)
		new effect(effect_place)

/datum/component/fancy_deleting_timer/proc/handle_list()
	if(T)
		switch(turf_whitelist)
			if(TRUE)	// whitelist
				if(!is_type_in_list(get_turf(parent), T))
					return FALSE
			else		// blacklist
				if(is_type_in_list(get_turf(parent), T))
					return FALSE
	return TRUE

/datum/component/fancy_deleting_timer/Initialize(...)
	. = ..()

/datum/component/fancy_deleting_timer/proc/batteries_out()
	if(handle_list() && clients_in_sight())
		spawn_effect()
		qdel(parent)
	else if(times_we_failed_deleting >= deleting_attempts)
		delete_the_timer()
		if(A)
			message_admins("Fancy Timer in '[A]' in '[get_area_name(A)]' called to deletion [times_we_failed_deleting] times, but did not succeded. Deleting the Fancy Timer. [ADMIN_JMP(A)]")
	else
		timer += 30
		times_we_failed_deleting++

/datum/component/fancy_deleting_timer/proc/clients_in_sight()
	for(var/mob/living/L in view(parent))
		if(L.client)
			return FALSE
	return TRUE

//_________________	vv href	______________________

#define VV_HK_START_TIMER	"start_the_timer"
#define VV_HK_STOP_TIMER	"stop_the_timer"
#define VV_HK_DELETE_TIMER	"delete_the_timer"

/datum/component/fancy_deleting_timer/vv_get_dropdown()
	. = ..()
	VV_DROPDOWN_OPTION("", "--- Fancy Timer component ---")
	VV_DROPDOWN_OPTION(VV_HK_START_TIMER, "Start the timer")
	VV_DROPDOWN_OPTION(VV_HK_STOP_TIMER, "Stop the timer")
	VV_DROPDOWN_OPTION(VV_HK_DELETE_TIMER, "Delete the timer")

/datum/component/fancy_deleting_timer/vv_do_topic(list/href_list)
	. = ..()
	if(href_list[VV_HK_START_TIMER])
		var/temp = input(usr, "Set the timer to... (in seconds)", "Set timer") as num|null
		start_the_timer(temp)
		to_chat(usr, "Timer on [parent] has been set to [timer] seconds.")
	if(href_list[VV_HK_STOP_TIMER])
		stop_the_timer()
		to_chat(usr, "Timer on [parent] stopped at [timer] seconds.")
	if(href_list[VV_HK_DELETE_TIMER])
		delete_the_timer()
		to_chat(usr, "Timer on [parent] is deleted.")
