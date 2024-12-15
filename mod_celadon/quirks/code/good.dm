/datum/quirk/ignore_incapacitated
	name = "increased_survival"
	desc = "Allows you to interact with objects on and around you while in critical condition."
	value = 10
	mob_traits = list(TRAIT_INCREASED_SURVIVAL)
	gain_text = "<span class='notice'>You are sure that you will survive even alone!</span>"
	lose_text = "<span class='danger'>You are afraid for your life!</span>"

/datum/quirk/dwarfism
	name = "dwarfism"
	desc = "Makes you wiry and shallow. Cuts your health by 75%. It gives coolness and alcohol treatment. With a lack of alcohol in the blood, you begin to lose your life."
	value = 3
	mob_traits = list(TRAIT_DWARF, TRAIT_SCOOPABLE)
	gain_text = "<span class='notice'>Everything around you seems to grow..</span>"
	lose_text = "<span class='danger'>Everything around you seems to shrink..</span>"
	medical_record_text = "Patient is a dwarf."

/datum/quirk/dwarfism/New(mob/living/quirk_mob, spawn_effects)
	quirk_mob.transform = quirk_mob.transform.Scale(0.8, 1.25)
	quirk_mob.pixel_y = -3
	quirk_mob.base_pixel_y = -3
	quirk_mob.maxHealth = 75
	..()
