/datum/modpack/tajaran
	/// Строковое имя модпака. Используется для поиска других модпаков в init.
	name = "НАЗВАНИЕ"
	/// Строковое описание для модпака. Может использоваться для списка глаголов модпака в качестве описания.
	desc = "ОПИСАНИЕ"
	/// Строка с авторами этого модпака.
	author = "АВТОР(Ы)"

/datum/modpack/tajaran/initialize()
	. = ..()
	GLOB.lawlorify[LORE][BAN_HURTTAJARAN] = "This devil will not strike a tajaran first."
	GLOB.lawlorify[LAW][BAN_HURTTAJARAN] = "You must never harm a tajaran outside of self defense."
