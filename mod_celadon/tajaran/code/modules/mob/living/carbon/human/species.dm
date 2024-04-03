/datum/species
	var/use_skintonesnose = FALSE
	var/use_skintonetajaran = FALSE




/**
 * Handles the mutant bodyparts of a human
 *
 * Handles the adding and displaying of, layers, colors, and overlays of mutant bodyparts and accessories.
 * Handles digitigrade leg displaying and squishing.
 * Arguments:
 * * H - Human, whoever we're handling the body for
 * * forced_colour - The forced color of an accessory. Leave null to use mutant color.
 */
/datum/species/proc/handle_mutant_bodyparts(mob/living/carbon/human/H, forced_colour)	//я хуй знает как это запихнуть в модуль по системе шуссойдных модпаковЫ
	var/list/bodyparts_to_add = mutant_bodyparts.Copy()
	var/list/relevent_layers = list(BODY_BEHIND_LAYER, BODY_ADJ_LAYER, BODY_FRONT_LAYER)
	var/list/standing	= list()

	H.remove_overlay(BODY_BEHIND_LAYER)
	H.remove_overlay(BODY_ADJ_LAYER)
	H.remove_overlay(BODY_FRONT_LAYER)

	if(!mutant_bodyparts)
		return

	var/obj/item/bodypart/head/HD = H.get_bodypart(BODY_ZONE_HEAD)

	if("tail_human" in mutant_bodyparts)
		if(H.wear_suit && (H.wear_suit.flags_inv & HIDEJUMPSUIT))
			bodyparts_to_add -= "tail_human"

	if("waggingtail_human" in mutant_bodyparts)
		if(H.wear_suit && (H.wear_suit.flags_inv & HIDEJUMPSUIT))
			bodyparts_to_add -= "waggingtail_human"
		else if ("tail_human" in mutant_bodyparts)
			bodyparts_to_add -= "waggingtail_human"

	if("spines" in mutant_bodyparts)
		if(!H.dna.features["spines"] || H.dna.features["spines"] == "None" || H.wear_suit && (H.wear_suit.flags_inv & HIDEJUMPSUIT))
			bodyparts_to_add -= "spines"

	if("waggingspines" in mutant_bodyparts)
		if(!H.dna.features["spines"] || H.dna.features["spines"] == "None" || H.wear_suit && (H.wear_suit.flags_inv & HIDEJUMPSUIT))
			bodyparts_to_add -= "waggingspines"
		else if ("tail" in mutant_bodyparts)
			bodyparts_to_add -= "waggingspines"

	if("face_markings" in mutant_bodyparts) //Take a closer look at that snout! //technically
		if((H.wear_mask?.flags_inv & HIDEFACE) || (H.head?.flags_inv & HIDEFACE) || !HD)
			bodyparts_to_add -= "face_markings"

	if("horns" in mutant_bodyparts)
		if(!H.dna.features["horns"] || H.dna.features["horns"] == "None" || H.head && (H.head.flags_inv & HIDEHORNS) || (H.wear_mask && (H.wear_mask.flags_inv & HIDEHORNS)) || !HD)
			bodyparts_to_add -= "horns"

	if("frills" in mutant_bodyparts)
		if(!H.dna.features["frills"] || H.dna.features["frills"] == "None" || (H.head?.flags_inv & HIDEEARS) || !HD)
			bodyparts_to_add -= "frills"

	if("ears" in mutant_bodyparts)
		if(!H.dna.features["ears"] || H.dna.features["ears"] == "None" || H.head && (H.head.flags_inv & HIDEHAIR) || (H.wear_mask && (H.wear_mask.flags_inv & HIDEHAIR)) || !HD)
			bodyparts_to_add -= "ears"
			bodyparts_to_add -= "ears"

	if("ipc_screen" in mutant_bodyparts)
		if(!H.dna.features["ipc_screen"] || H.dna.features["ipc_screen"] == "None" || (H.wear_mask && (H.wear_mask.flags_inv & HIDEEYES)) || !HD)
			bodyparts_to_add -= "ipc_screen"

	if("ipc_antenna" in mutant_bodyparts)
		if(!H.dna.features["ipc_antenna"] || H.dna.features["ipc_antenna"] == "None" || H.head && (H.head.flags_inv & HIDEEARS) || !HD)
			bodyparts_to_add -= "ipc_antenna"

	if("spider_mandibles" in mutant_bodyparts)
		if(!H.dna.features["spider_mandibles"] || H.dna.features["spider_mandibles"] == "None" || H.head && (H.head.flags_inv & HIDEFACE) || (H.wear_mask && (H.wear_mask.flags_inv & HIDEFACE)) || !HD) //|| HD.status == BODYTYPE_ROBOTIC removed from here
			bodyparts_to_add -= "spider_mandibles"

	if("squid_face" in mutant_bodyparts)
		if(!H.dna.features["squid_face"] || H.dna.features["squid_face"] == "None" || H.head && (H.head.flags_inv & HIDEFACE) || (H.wear_mask && (H.wear_mask.flags_inv & HIDEFACE)) || !HD) // || HD.status == BODYTYPE_ROBOTIC
			bodyparts_to_add -= "squid_face"

	if("kepori_tail_feathers" in mutant_bodyparts)
		if(!H.dna.features["kepori_tail_feathers"] || H.dna.features["kepori_tail_feathers"] == "None")
			bodyparts_to_add -= "kepori_tail_feathers"

	if("kepori_feathers" in mutant_bodyparts)
		if(!H.dna.features["kepori_feathers"] || H.dna.features["kepori_feathers"] == "None" || (H.head && (H.head.flags_inv & HIDEHAIR)) || (H.wear_mask && (H.wear_mask.flags_inv & HIDEHAIR)) || !HD) //HD.status == BODYTYPE_ROBOTIC) and here too
			bodyparts_to_add -= "kepori_feathers"

	if("vox_head_quills" in mutant_bodyparts)
		if(!H.dna.features["vox_head_quills"] || H.dna.features["vox_head_quills"] == "None" || H.head && (H.head.flags_inv & HIDEHAIR) || (H.wear_mask && (H.wear_mask.flags_inv & HIDEHAIR)) || !HD)
			bodyparts_to_add -= "vox_head_quills"

	if("vox_neck_quills" in mutant_bodyparts)
		if(!H.dna.features["vox_neck_quills"] || H.dna.features["vox_neck_quills"] == "None")
			bodyparts_to_add -= "vox_neck_quills"

	if("tajaran_nose_markings" in mutant_bodyparts)
		if(!H.dna.features["tajaran_nose_markings"] || H.dna.features["tajaran_nose_markings"] == "None" || H.head && (H.head.flags_inv & HIDEFACE) || (H.wear_mask && (H.wear_mask.flags_inv & HIDEFACE)) || !HD) // || HD.status == BODYTYPE_ROBOTIC
			bodyparts_to_add -= "tajaran_nose_markings"

	if("tajaran_facial_hairs" in mutant_bodyparts)
		if(!H.dna.features["tajaran_facial_hairs"] || H.dna.features["tajaran_facial_hairs"] == "None" || H.head && (H.head.flags_inv & HIDEFACE) || (H.wear_mask && (H.wear_mask.flags_inv & HIDEFACE)) || !HD) // || HD.status == BODYTYPE_ROBOTIC
			bodyparts_to_add -= "tajaran_facial_hairs"

	if("tajaran_ears_markings" in mutant_bodyparts)
		if(!H.dna.features["tajaran_ears_markings"] || H.dna.features["tajaran_ears_markings"] == "None" || H.head && (H.head.flags_inv & HIDEFACE) || (H.wear_mask && (H.wear_mask.flags_inv & HIDEFACE)) || !HD) // || HD.status == BODYTYPE_ROBOTIC
			bodyparts_to_add -= "tajaran_ears_markings"

	if("tajaran_head_markings" in mutant_bodyparts)
		if(!H.dna.features["tajaran_head_markings"] || H.dna.features["tajaran_head_markings"] == "None" || H.head && (H.head.flags_inv & HIDEFACE) || (H.wear_mask && (H.wear_mask.flags_inv & HIDEFACE)) || !HD) // || HD.status == BODYTYPE_ROBOTIC
			bodyparts_to_add -= "tajaran_head_markings"

	if("tajaran_chest_markings" in mutant_bodyparts)
		if(!H.dna.features["tajaran_chest_markings"] || H.dna.features["tajaran_chest_markings"] == "None" || H.wear_suit && (H.wear_suit.flags_inv & HIDEJUMPSUIT))
			bodyparts_to_add -= "tajaran_chest_markings"

	if("tajaran_body_markings" in mutant_bodyparts)
		if(!H.dna.features["tajaran_body_markings"] || H.dna.features["tajaran_body_markings"] == "None" || H.wear_suit && (H.wear_suit.flags_inv & HIDEJUMPSUIT))
			bodyparts_to_add -= "tajaran_body_markings"

	if("tajaran_hairs" in mutant_bodyparts)
		if(!H.dna.features["tajaran_hairs"] || H.dna.features["tajaran_hairs"] == "plain" || (H.head && (H.head.flags_inv & HIDEHAIR)) || (H.wear_mask && (H.wear_mask.flags_inv & HIDEHAIR)) || !HD)
			bodyparts_to_add -= "tajaran_hairs"

	if("tajaran_tail" in mutant_bodyparts)
		if(!H.dna.features["tajaran_tail"] || H.dna.features["tajaran_tail"] == "None" || H.wear_suit && (H.wear_suit.flags_inv & HIDEJUMPSUIT))
			bodyparts_to_add -= "tajaran_tail"

	if("tajaran_ears" in mutant_bodyparts)
		if(!H.dna.features["tajaran_ears"] || H.dna.features["tajaran_ears"] == "None" || (H.head && (H.head.flags_inv & HIDEHAIR)))
			bodyparts_to_add -= "tajaran_ears"

	////PUT ALL YOUR WEIRD ASS REAL-LIMB HANDLING HERE

	///Digi handling
	if(H.dna.species.bodytype & BODYTYPE_DIGITIGRADE)
		var/uniform_compatible = FALSE
		var/suit_compatible = FALSE
		if(!(H.w_uniform) || (H.w_uniform.supports_variations & DIGITIGRADE_VARIATION) || (H.w_uniform.supports_variations & DIGITIGRADE_VARIATION_NO_NEW_ICON)) //Checks uniform compatibility
			uniform_compatible = TRUE
		if((!H.wear_suit) || (H.wear_suit.supports_variations & DIGITIGRADE_VARIATION) || !(H.wear_suit.body_parts_covered & LEGS) || (H.wear_suit.supports_variations & DIGITIGRADE_VARIATION_NO_NEW_ICON)) //Checks suit compatability
			suit_compatible = TRUE

		var/show_digitigrade = suit_compatible && (uniform_compatible || H.wear_suit?.flags_inv & HIDEJUMPSUIT) //If the uniform is hidden, it doesnt matter if its compatible
		for(var/obj/item/bodypart/BP as anything in H.bodyparts)
			if(BP.bodytype & BODYTYPE_DIGITIGRADE)
				BP.plantigrade_forced = !show_digitigrade

	///End digi handling

	////END REAL-LIMB HANDLING
	H.update_body_parts()



	if(!bodyparts_to_add)
		return

	var/g = (H.gender == FEMALE) ? "f" : "m"

	for(var/layer in relevent_layers)
		var/layertext = mutant_bodyparts_layertext(layer)

		for(var/bodypart in bodyparts_to_add)
			var/datum/sprite_accessory/S
			switch(bodypart)
				if("tail_lizard")
					S = GLOB.tails_list_lizard[H.dna.features["tail_lizard"]]
				if("waggingtail_lizard")
					S = GLOB.animated_tails_list_lizard[H.dna.features["tail_lizard"]]
				if("tail_human")
					S = GLOB.tails_list_human[H.dna.features["tail_human"]]
				if("waggingtail_human")
					S = GLOB.animated_tails_list_human[H.dna.features["tail_human"]]
				if("spines")
					S = GLOB.spines_list[H.dna.features["spines"]]
				if("waggingspines")
					S = GLOB.animated_spines_list[H.dna.features["spines"]]
				if("face_markings")
					S = GLOB.face_markings_list[H.dna.features["face_markings"]]
				if("frills")
					S = GLOB.frills_list[H.dna.features["frills"]]
				if("horns")
					S = GLOB.horns_list[H.dna.features["horns"]]
				if("ears")
					S = GLOB.ears_list[H.dna.features["ears"]]
				if("body_markings")
					S = GLOB.body_markings_list[H.dna.features["body_markings"]]
				if("wings")
					S = GLOB.wings_list[H.dna.features["wings"]]
				if("wingsopen")
					S = GLOB.wings_open_list[H.dna.features["wings"]]
				if("legs")
					S = GLOB.legs_list[H.dna.features["legs"]]
				if("moth_wings")
					S = GLOB.moth_wings_list[H.dna.features["moth_wings"]]
				if("moth_fluff")
					S = GLOB.moth_fluff_list[H.dna.features["moth_fluff"]]
				if("moth_markings")
					S = GLOB.moth_markings_list[H.dna.features["moth_markings"]]
				if("squid_face")
					S = GLOB.squid_face_list[H.dna.features["squid_face"]]
				if("ipc_screen")
					S = GLOB.ipc_screens_list[H.dna.features["ipc_screen"]]
				if("ipc_antenna")
					S = GLOB.ipc_antennas_list[H.dna.features["ipc_antenna"]]
				if("ipc_tail")
					S = GLOB.ipc_tail_list[H.dna.features["ipc_tail"]]
				if("ipc_chassis")
					S = GLOB.ipc_chassis_list[H.dna.features["ipc_chassis"]]
				if("ipc_brain")
					S = GLOB.ipc_brain_list[H.dna.features["ipc_brain"]]
				if("spider_legs")
					S = GLOB.spider_legs_list[H.dna.features["spider_legs"]]
				if("spider_spinneret")
					S = GLOB.spider_spinneret_list[H.dna.features["spider_spinneret"]]
				if("kepori_body_feathers")
					S = GLOB.kepori_body_feathers_list[H.dna.features["kepori_body_feathers"]]
				if("kepori_tail_feathers")
					S = GLOB.kepori_tail_feathers_list[H.dna.features["kepori_tail_feathers"]]
				if("kepori_feathers")
					S = GLOB.kepori_feathers_list[H.dna.features["kepori_feathers"]]
				if("vox_head_quills")
					S = GLOB.vox_head_quills_list[H.dna.features["vox_head_quills"]]
				if("vox_neck_quills")
					S = GLOB.vox_neck_quills_list[H.dna.features["vox_neck_quills"]]
				if("elzu_horns")
					S = GLOB.elzu_horns_list[H.dna.features["elzu_horns"]]
				if("tail_elzu")
					S = GLOB.tails_list_elzu[H.dna.features["tail_elzu"]]
				if("waggingtail_elzu")
					S = GLOB.animated_tails_list_elzu[H.dna.features["tail_elzu"]]
				if("tajaran_ears")
					S = GLOB.tajaran_ears_list[H.dna.features["tajaran_ears"]]
				if("tajaran_hairs")
					S = GLOB.tajaran_hairs_list[H.dna.features["tajaran_hairs"]]
				if("tajaran_ears_markings")
					S = GLOB.tajaran_ears_markings_list[H.dna.features["tajaran_ears_markings"]]
				if("tajaran_head_markings")
					S = GLOB.tajaran_head_markings_list[H.dna.features["tajaran_head_markings"]]
				if("tajaran_nose_markings")
					S = GLOB.tajaran_nose_markings_list[H.dna.features["tajaran_nose_markings"]]
				if("tajaran_facial_hairs")
					S = GLOB.tajaran_facial_hairs_list[H.dna.features["tajaran_facial_hairs"]]
				if("tajaran_chest_markings")
					S = GLOB.tajaran_chest_markings_list[H.dna.features["tajaran_chest_markings"]]
				if("tajaran_body_markings")
					S = GLOB.tajaran_body_markings_list[H.dna.features["tajaran_body_markings"]]
				if("tajaran_tail")
					S = GLOB.tajaran_tail_list[H.dna.features["tajaran_tail"]]
				if("waggingtajaran_tail")
					S = GLOB.tajaran_animated_tail_list[H.dna.features["tajaran_tail"]]
			if(!S || S.icon_state == "none")
				continue

			var/mutable_appearance/accessory_overlay = mutable_appearance(S.icon, layer = -layer)

			//A little rename so we don't have to use tail_lizard, tail_human, or tail_elzu when naming the sprites.
			accessory_overlay.alpha = S.image_alpha
			if(bodypart == "tail_lizard" || bodypart == "tail_human" || bodypart == "tail_elzu" || bodypart == "tajaran_tail")
				bodypart = "tail"
			else if(bodypart == "waggingtail_lizard" || bodypart == "waggingtail_human" || bodypart == "waggingtail_elzu" || bodypart == "waggingtajaran_tail")
				bodypart = "waggingtail"

			var/used_color_src = S.color_src

			var/icon_state_name = S.icon_state
			if(S.synthetic_icon_state)
				var/obj/item/bodypart/attachment_point = H.get_bodypart(S.body_zone)
				if(attachment_point && IS_ROBOTIC_LIMB(attachment_point))
					icon_state_name = S.synthetic_icon_state
					if(S.synthetic_color_src)
						used_color_src = S.synthetic_color_src

			if(S.gender_specific)
				accessory_overlay.icon_state = "[g]_[bodypart]_[icon_state_name]_[layertext]"
			else
				accessory_overlay.icon_state = "m_[bodypart]_[icon_state_name]_[layertext]"

			if(S.center)
				accessory_overlay = center_image(accessory_overlay, S.dimension_x, S.dimension_y)

			if(!(HAS_TRAIT(H, TRAIT_HUSK)))
				if(!forced_colour)
					switch(used_color_src)
						if(MUTCOLORS)
							if(fixed_mut_color)
								accessory_overlay.color = "#[fixed_mut_color]"
							else
								accessory_overlay.color = "#[H.dna.features["mcolor"]]"
						if(MUTCOLORS_SECONDARY)
							accessory_overlay.color = "#[H.dna.features["mcolor2"]]"
						if(SKINCOLORS)
							accessory_overlay.color = "#[(skintone2hex(H.skin_tone))]"

						if(SKINNOSECOLORS)
							accessory_overlay.color = "#[(skintonenose2hex(H.skin_tone_nose))]"
						if(SKINTAJARANCOLORS)
							accessory_overlay.color = "#[(skintonetajaran2hex(H.skin_tone_tajaran))]"

						if(HAIR)
							if(hair_color == "mutcolor")
								accessory_overlay.color = "#[H.dna.features["mcolor"]]"
							else if(hair_color == "fixedmutcolor")
								accessory_overlay.color = "#[fixed_mut_color]"
							else
								accessory_overlay.color = "#[H.hair_color]"
						if(FACEHAIR)
							accessory_overlay.color = "#[H.facial_hair_color]"
						if(EYECOLOR)
							accessory_overlay.color = "#[H.eye_color]"
				else
					accessory_overlay.color = forced_colour
			standing += accessory_overlay

			if(S.secondary_color)
				var/mutable_appearance/secondary_color_overlay = mutable_appearance(S.icon, layer = -layer)
				if(S.gender_specific)
					secondary_color_overlay.icon_state = "[g]_[bodypart]_secondary_[S.icon_state]_[layertext]"
				else
					secondary_color_overlay.icon_state = "m_[bodypart]_secondary_[S.icon_state]_[layertext]"

				if(S.center)
					secondary_color_overlay = center_image(secondary_color_overlay, S.dimension_x, S.dimension_y)
				secondary_color_overlay.color = "#[H.dna.features["mcolor2"]]"
				standing += secondary_color_overlay

		H.overlays_standing[layer] = standing.Copy()
		standing = list()

	H.apply_overlay(BODY_BEHIND_LAYER)
	H.apply_overlay(BODY_ADJ_LAYER)
	H.apply_overlay(BODY_FRONT_LAYER)


/datum/species/is_wagging_tail(mob/living/carbon/human/H)
	return ("waggingtail_human" in mutant_bodyparts) || ("waggingtail_lizard" in mutant_bodyparts) || ("waggingtail_elzu" in mutant_bodyparts) || ("waggingtajaran_tail" in mutant_bodyparts)

/datum/species/start_wagging_tail(mob/living/carbon/human/H)
	else if("tajaran_tail" in mutant_bodyparts)
		mutant_bodyparts -= "tajaran_tail"
		mutant_bodyparts |= "waggingtajaran_tail"
	. = ..()

/datum/species/stop_wagging_tail(mob/living/carbon/human/H)
	else if("waggingtajaran_tail" in mutant_bodyparts)
		mutant_bodyparts -= "waggingtajaran_tail"
		mutant_bodyparts |= "tajaran_tail"
	. = ..()

