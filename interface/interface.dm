//Please use mob or src (not usr) in these procs. This way they can be called in the same fashion as procs.
/client/verb/wiki(query as text)
	set name = "вики"
	set desc = "Введите то, что хотите узнать, и это откроет вики-страницу в браузере. Чтобы перейти на главную страницу, ничего не вводите."
	set hidden = TRUE
	var/wikiurl = CONFIG_GET(string/wikiurl)
	if(wikiurl)
		if(query)
			var/output = "[wikiurl]?title=Special%3ASearch&profile=default&search=[query]"
			src << link(output)
		else if (query != null)
			src << link(wikiurl)
	else
		to_chat(src, "<span class='danger'>Ссылка на вики не установлена в конфиге.</span>")
	return

/client/verb/lore()
	set name = "лор"
	set desc = "Посмотреть лор."
	set hidden = TRUE
	var/loreurl = CONFIG_GET(string/loreurl)
	if(loreurl)
		if(alert("Это откроет страницу лора в браузере. Уверены?,,"Да","Нет")!="Да")
			return
		src << link(loreurl)
	else
		to_chat(src, "<span class='danger'>Ссылка на страницу не указана в конфиге.</span>")
	return

/client/verb/rules()
	set name = "правила"
	set desc = "Показать правила."
	set hidden = TRUE
	var/rulesurl = CONFIG_GET(string/rulesurl)
	if(rulesurl)
		if(alert("Это откроет правила в браузере. Уверены?",,"Да","Нет")!="Да")
			return
		src << link(rulesurl)
	else
		to_chat(src, "<span class='danger'>Ссылка на страницу не указана в конфиге.</span>")
	return

/client/verb/github()
	set name = "github"
	set desc = "Открыть Github."
	set hidden = TRUE
	var/githuburl = CONFIG_GET(string/githuburl)
	if(githuburl)
		if(alert("Это откроет репозиторий билда. Уверены?",,"Да","Нет")!="Да")
			return
		src << link(githuburl)
	else
		to_chat(src, "<span class='danger'>Ссылка на страницу не указана в конфиге.</span>")
	return

/client/verb/reportissue()
	set name = "report-issue"
	set desc = "Сообщить о баге."
	set hidden = TRUE
	var/githuburl = CONFIG_GET(string/githuburl)
	if(githuburl)
		var/message = "Это откроет форму для заполнения инфы о багах. Уверены?"
		if(GLOB.revdata.testmerge.len)
			message += "<br>Эти тестовые введения, вероятно, и есть причина любых новых багов. Если возможно, пожалуйста, найдите уже существующую тему, и сообщите обо всём в ней:<br>"
			message += GLOB.revdata.GetTestMergeInfo(FALSE)
		// We still use tgalert here because some people were concerned that if someone wanted to report that tgui wasn't working
		// then the report issue button being tgui-based would be problematic.
		if(tgalert(src, message, "Сообщить об ошибке","Да","Нет")!="Да")
			return
		var/static/issue_template = file2text(".github/ISSUE_TEMPLATE.md")
		var/servername = CONFIG_GET(string/servername)
		var/url_params = "Версия клиента: [byond_version].[byond_build]\n\n[issue_template]"
		if(GLOB.round_id || servername)
			url_params = "Баг отослан из [GLOB.round_id ? " Round ID: [GLOB.round_id][servername ? " ([servername])" : ""]" : servername]\n\n[url_params]"
		DIRECT_OUTPUT(src, link("[githuburl]/issues/new?body=[url_encode(url_params)]"))
	else
		to_chat(src, "<span class='danger'>Ссылка на страницу не указана в конфиге.</span>")
	return

/client/verb/joindiscord()
	set name = "дискорд"
	set desc = "Присоединиться к Дискорд серверу."
	set hidden = 1
	if(CONFIG_GET(string/discordurl))
		var/message = "Это откроет дискорд с помощью браузера. Уверены?"
		if(alert(src, message, "Присоединиться к дискорду","Да","Нет")=="Нет")
			return
		src << link(CONFIG_GET(string/discordurl))
	else
		to_chat(src, "<span class='danger'>Ссылка на страницу не указана в конфиге.</span>")
	return

/client/verb/changelog()
	set name = "Изменения"
	set category = "OOC"
	if(!GLOB.changelog_tgui)
		GLOB.changelog_tgui = new /datum/changelog()

	GLOB.changelog_tgui.ui_interact(mob)
	if(prefs.lastchangelog != GLOB.changelog_hash)
		prefs.lastchangelog = GLOB.changelog_hash
		prefs.save_preferences()
		winset(src, "infowindow.changelog", "font-style=;")
