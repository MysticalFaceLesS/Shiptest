/datum/modpack/tajara
	name = "Раса - Таяры"
	desc = "Добавляет кисок."
	author = "Много авторов. А ещё SuhEugene"

/datum/modpack/tajara/initialize()
	. = ..()
	GLOB.lawlorify[LORE][BAN_HURTTAJARA] = "This devil will not strike a tajara first."
	GLOB.lawlorify[LAW][BAN_HURTTAJARA] = "You must never harm a tajara outside of self defense."
