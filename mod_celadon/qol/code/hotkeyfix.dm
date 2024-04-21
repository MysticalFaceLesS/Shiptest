/client/proc/set_macros()
	set waitfor = FALSE

	//Reset the buffer
	reset_held_keys()

	erase_all_macros()

	var/list/macro_sets = SSinput.macro_sets
	for(var/setname in macro_sets)
		if(setname != "default")
			winclone(src, "default", setname)
		var/list/macro_set = macro_sets[setname]
		for(var/key in macro_set)
			var/command = macro_set[key]
			winset(src, "[setname]-[REF(key)]", "parent=[setname];name=[key];command=[command]")

	//Reactivate any active tgui windows mouse passthroughs macros
	for(var/datum/tgui_window/window in tgui_windows)
		if(window.mouse_event_macro_set)
			window.mouse_event_macro_set = FALSE
			window.set_mouse_macro()

	if(prefs?.hotkeys)//tg put hotkeys at the client level, idk why, we still have it on prefs so I'm just gonna nullcheck this.
		winset(src, null, "map.focus=true mainwindow.macro=default")
	else
		winset(src, null, "input.focus=true mainwindow.macro=old_default")

	update_special_keybinds()

/client/verb/fix_layout()
	set name = "Исправить раскладку"
	set category = "OOC"

	set_macros()
	to_chat(src, span_warning("Перерегистрация макросов выполнена. Если не сработало, убедитесь что раскладка переключена на английский язык."))
