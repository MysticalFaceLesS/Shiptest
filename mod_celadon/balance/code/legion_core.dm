/datum/reagent/medicine/soulus
	var/tox_dam = 0.1

/datum/reagent/medicine/soulus/on_mob_life(mob/living/carbon/M)
	M.adjustToxLoss(tox_dam*REM, 0)
