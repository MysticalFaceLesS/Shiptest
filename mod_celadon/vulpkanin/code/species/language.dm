/datum/language_holder/vulp
	understood_languages = list(
		/datum/language/common = list(LANGUAGE_ATOM),
		/datum/language/canilunzt = list(LANGUAGE_ATOM)
	)
	spoken_languages = list(
		/datum/language/common = list(LANGUAGE_ATOM),
		/datum/language/canilunzt = list(LANGUAGE_ATOM)
	)

/datum/language/canilunzt
	name = "Canilunzt"
	desc = "A somewhat simple language consisting of heavily articulate barks, growls, yapping, and combined movements of the tail and ears. It's natively spoken by the Vulpkanin, although certain groups of gene modders have adopted it as a secondary form of communication. Its parlance has been loosely compared to the Germanic language group."
	speech_verb = "rawrs"
	ask_verb = "rurs"
	exclaim_verb = "barks"
	key = "7"
	flags = TONGUELESS_SPEECH | LANGUAGE_HIDE_ICON_IF_NOT_UNDERSTOOD
	syllables = list(
		"rah","mur","ru","ke","grok","wen","tot","sch",
		"grst","crentz","cet","waz","et","du","kor","heizt","loch","jach","qet","anzhem","icht",
		"unt","kech","gech","flei","deint","weim","kan","neiz","mende","lak","jen","gor","bor",
		"kol","hau","au","vau","amh","av","vogh","guau","hev","haf","auh","bhao","jau","yar","owff",
		"ghav","buh","rur","ya","cen","bar","kuk","tek","qat","uk","wu","vuh","tah","tch","schz",
		"auch","ist","ein","entch","zwichs","tut","mir","wo","bis","es","vor","nic","gro","lll",
		"enem","zandt","tzch","noch","hel","ischt","far","wa","baram","iereng","tech","lach","sam",
		"mak","lich","gen","or","ag","eck","gec","stag","onn","bin","ket","einech","cresthz","azunein","ghzth"
	)
	default_priority = 90
	icon = 'mod_celadon/vulpkanin/icons/language.dmi'
	icon_state = "canilunzt"
