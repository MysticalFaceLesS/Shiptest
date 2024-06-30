/datum/modpack/vulp
	name = "Раса - Лисы"
	desc = "Лисы - это \[Данные удалены\]. Они \[Данные удалены\]. И вообще \[Данные удалены\]."
	author = "MrCat15352"

/datum/modpack/vulp/initialize()
	. = ..()
	GLOB.lawlorify[LORE][BAN_HURTVULP] = "This devil will not strike a vulp first."
	GLOB.lawlorify[LAW][BAN_HURTVULP] = "You must never harm a vulp outside of self defense."
