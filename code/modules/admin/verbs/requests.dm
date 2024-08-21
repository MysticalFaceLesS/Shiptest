/// Verb for opening the requests manager panel
/client/proc/requests()
	set name = "Requests Manager"
	set desc = "Open the request manager panel to view all requests during this round"
	// [CELADON-EDIT] - CELADON_QOL - Очистка вкладки ООС, перенос части в Special Verbs
	//	set category = "Admin"
	set category = "Admin.Fax"
	// [/CELADON-EDIT]
	SSblackbox.record_feedback("tally", "admin_verb", 1, "Request Manager") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!
	GLOB.requests.ui_interact(usr)
