/mob/living/carbon/human/update_inv_head()
	if(head)
		if((I.supports_variations & TAJARAN_VARIATION) && (dna.species.bodytype & BODYTYPE_TAJARAN))
			icon_file = TAJARAN_HEAD_PATH
	.=..()

/mob/living/carbon/human/update_inv_wear_suit()
	if(wear_suit)
		else if((dna.species.bodytype & BODYTYPE_TAJARAN) && (I.supports_variations & TAJARAN_VARIATION))
			icon_file = TAJARAN_SUIT_PATH
	.=..()

/mob/living/carbon/human/update_inv_wear_mask()
	if(wear_mask)
			if((dna.species.bodytype & BODYTYPE_TAJARAN) && (I.supports_variations & TAJARAN_VARIATION))
				icon_file = TAJARAN_MASK_PATH
	.=..()
