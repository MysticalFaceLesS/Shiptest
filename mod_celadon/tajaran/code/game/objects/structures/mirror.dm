/obj/structure/mirror/magic/attack_hand(mob/user)
	. = ..()
	switch(choice)
		if(H.dna.species.use_skintones)
				var/new_s_tone_nose = input(user, "Choose your skin tone nose:", "Race change")  as null|anything in GLOB.skin_tones_nose
				if(!user.canUseTopic(src, BE_CLOSE, FALSE, NO_TK))
					return

				if(new_s_tone_nose)
					H.skin_tone_nose = new_s_tone_nose
					H.dna.update_ui_block(DNA_SKIN_TONE_NOSE_BLOCK)
