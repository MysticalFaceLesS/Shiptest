/datum/modpack/tajara
	name = "Раса - Таяры"
	desc = "Таяраны - это \[Данные удалены\]. Они \[Данные удалены\]. И вообще \[Данные удалены\]."
	author = "DuckNeMyDuck, MrCat15352, SuhEugene"

/datum/modpack/tajara/initialize()
	. = ..()
	GLOB.lawlorify[LORE][BAN_HURTTAJARA] = "This devil will not strike a tajara first."
	GLOB.lawlorify[LAW][BAN_HURTTAJARA] = "You must never harm a tajara outside of self defense."
