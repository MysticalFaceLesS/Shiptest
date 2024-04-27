/datum/modpack/tajaran
	name = "Раса - Таяры"
	desc = "Добавляет кисок."
	author = "Много авторов. А ещё SuhEugene"

/datum/modpack/tajaran/initialize()
	. = ..()
	GLOB.lawlorify[LORE][BAN_HURTTAJARAN] = "This devil will not strike a tajaran first."
	GLOB.lawlorify[LAW][BAN_HURTTAJARAN] = "You must never harm a tajaran outside of self defense."
