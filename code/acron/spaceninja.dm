/datum/outfit/acron_ninja
	name = "Frontier Space Ninja"
	uniform = /obj/item/clothing/under/color/black
	suit = /obj/item/clothing/suit/space/space_ninja
	glasses = /obj/item/clothing/glasses/night
	mask = /obj/item/clothing/mask/gas/space_ninja
	head = /obj/item/clothing/head/helmet/space/space_ninja
	ears = /obj/item/radio/headset
	shoes = /obj/item/clothing/shoes/space_ninja
	gloves = /obj/item/clothing/gloves/space_ninja
	back = /obj/item/storage/backpack
	l_pocket = /obj/item/grenade/c4/x4
	r_pocket = /obj/item/tank/internals/emergency_oxygen
	internals_slot = ITEM_SLOT_RPOCKET
	belt = /obj/item/energy_katana
	implants = list(/obj/item/implant/explosive)

/datum/outfit/acron_ninja/post_equip(mob/living/carbon/human/H)
	if(istype(H.wear_suit, suit))
		var/obj/item/clothing/suit/space/space_ninja/S = H.wear_suit
		if(istype(H.belt, belt))
			S.energyKatana = H.belt
		S.randomize_param()
	H.faction |= ROLE_NINJA
	H.mind.add_antag_datum(/datum/antagonist/ninja/acron_ninja)
	ADD_TRAIT(H, TRAIT_NOGUNS, SPACE_NINJA_TRAIT)
	return

/datum/antagonist/ninja/acron_ninja/addMemories()
	antag_memory += "Я являюсь элитным наемником-ассасином великого клана Паука.>"
	antag_memory += "Неожиданность - мое оружие. Тень - моя броня. Без них - я ничто. (//Активируйте костюм для использования способностей)!<br>"
	antag_memory += "Официально, я наемник, и только я решаю, кто будет моим нанимателем. <br>"

/datum/antagonist/ninja/acron_ninja/greet()
	SEND_SOUND(owner.current, sound('sound/effects/ninja_greeting.ogg'))
	to_chat(owner.current, "Я являюсь элитным наемником-ассасином великого клана Паука!")
	to_chat(owner.current, "Неожиданность - мое оружие. Тень - моя броня. Без них - я ничто. (//Активируйте костюм для использования способностей)")
	to_chat(owner.current, "Кровь невиновных на моем клинке лишь запятнает мою честь. Я не должен прибегать к неоправданному насилию.")
	owner.announce_objectives()
	return

/datum/antagonist/ninja/acron_ninja/addObjectives(quantity)
	var/datum/objective/custom/Objective_one = new /datum/objective/custom()
	Objective_one.owner = owner
	objectives += Objective_one
	Objective_one.explanation_text = "Я обязан сохранить существование клана Паука в тайне."

