/**
 * rollTackle()
 *
 * This handles all of the modifiers for the actual carbon-on-carbon tackling, and gets its own proc because of how many there are (with plenty more in mind!)
 *
 * The base roll is between (-3, 3), with negative numbers favoring the target, and positive numbers favoring the tackler. The target and the tackler are both assessed for
 *	how easy they are to knock over, with clumsiness and dwarfiness being strong maluses for each, and gigantism giving a bonus for each. These numbers and ideas
 *	are absolutely subject to change.

 * In addition, after subtracting the defender's mod and adding the attacker's mod to the roll, the component's base (skill) mod is added as well. Some sources of tackles
 *	are better at taking people down, like the bruiser and rocket gloves, while the dolphin gloves have a malus in exchange for better mobility.
*/
/datum/component/tackler/proc/rollTackle(mob/living/carbon/target)
	var/defense_mod = 0
	var/attack_mod = 0

	// DE-FENSE
	if(target.drunkenness > 60) // drunks are easier to knock off balance
		defense_mod -= 3
	else if(target.drunkenness > 30)
		defense_mod -= 1
	if(HAS_TRAIT(target, TRAIT_CLUMSY))
		defense_mod -= 2
	if(HAS_TRAIT(target, TRAIT_GRABWEAKNESS))
		defense_mod -= 2
	if(HAS_TRAIT(target, TRAIT_DWARF))
		defense_mod -= 2
	if(HAS_TRAIT(target, TRAIT_GIANT))
		defense_mod += 2
	if(HAS_TRAIT(target, TRAIT_SCOOPABLE))
		defense_mod -= 1

	if(ishuman(target))
		var/mob/living/carbon/human/T = target
		var/suit_slot = T.get_item_by_slot(ITEM_SLOT_OCLOTHING)

		if(isnull(T.wear_suit) && isnull(T.w_uniform)) // who honestly puts all of their effort into tackling a naked guy?
			defense_mod += 2
		if(suit_slot && (istype(suit_slot,/obj/item/clothing/suit/space/hardsuit)))
			defense_mod += 1
		if(T.is_shove_knockdown_blocked()) // riot armor and such
			defense_mod += 5
		if(T.is_holding_item_of_type(/obj/item/shield))
			defense_mod += 2

		if(islizard(T))
			if(!T.getorganslot(ORGAN_SLOT_TAIL)) // lizards without tails are off-balance
				defense_mod -= 1
			else if(T.dna.species.is_wagging_tail()) // lizard tail wagging is robust and can swat away assailants!
				defense_mod += 1
		if(istajaran(T))
			if(!T.getorganslot(ORGAN_SLOT_TAIL)) // tajaran without tails are off-balance
				defense_mod -= 1

	// OF-FENSE
	var/mob/living/carbon/sacker = parent

	if(sacker.drunkenness > 60) // you're far too drunk to hold back!
		attack_mod += 1
	else if(sacker.drunkenness > 30) // if you're only a bit drunk though, you're just sloppy
		attack_mod -= 1
	if(HAS_TRAIT(sacker, TRAIT_CLUMSY))
		attack_mod -= 2
	if(HAS_TRAIT(sacker, TRAIT_DWARF))
		attack_mod -= 2
	if(HAS_TRAIT(sacker, TRAIT_GIANT))
		attack_mod += 2

	if(ishuman(target))
		var/mob/living/carbon/human/S = sacker

		var/suit_slot = S.get_item_by_slot(ITEM_SLOT_OCLOTHING)
		if(suit_slot && (istype(suit_slot,/obj/item/clothing/suit/armor/riot))) // tackling in riot armor is more effective, but tiring
			attack_mod += 2
			sacker.adjustStaminaLoss(20)

	var/r = rand(-3, 3) - defense_mod + attack_mod + skill_mod
	return r
