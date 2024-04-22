/obj/item/reagent_containers/food/condiment/pack	// Origin -> code\modules\food_and_drinks\food\condiment.dm
	possible_states = list(
			/datum/reagent/consumable/ketchup = list("condi_ketchup", "Ketchup", "You feel more American already."),
			/datum/reagent/consumable/capsaicin = list("condi_hotsauce", "Hotsauce", "You can almost TASTE the stomach ulcers now!"),
			/datum/reagent/consumable/soysauce = list("condi_soysauce", "Soy Sauce", "A salty soy-based flavoring"),
			/datum/reagent/consumable/frostoil = list("condi_frostoil", "Coldsauce", "Leaves the tongue numb in it's passage"),
			/datum/reagent/consumable/sodiumchloride = list("condi_salt", "Salt Shaker", "Salt. From space oceans, presumably"),
			/datum/reagent/consumable/blackpepper = list("condi_pepper", "Pepper Mill", "Often used to flavor food or make people sneeze"),
			/datum/reagent/consumable/cornoil = list("condi_cornoil", "Corn Oil", "A delicious oil used in cooking. Made from corn"),
			/datum/reagent/consumable/sugar = list("condi_sugar", "Sugar", "Tasty spacey sugar!"),
			/datum/reagent/consumable/astrotame = list("condi_astrotame", "Astrotame", "The sweetness of a thousand sugars but none of the calories."),
			/datum/reagent/consumable/bbqsauce = list("condi_bbq", "BBQ sauce", "Hand wipes not included."),
			/datum/reagent/consumable/ketchup = list("icon_state" = "condi_ketchup", "item_state" = "", "icon_empty" = "", "name" = "ketchup", "desc" = "You feel more American already."),
			/datum/reagent/consumable/capsaicin = list("icon_state" = "condi_hotsauce", "item_state" = "", "icon_empty" = "", "name" = "hotsauce", "desc" = "You can almost TASTE the stomach ulcers!"),
			/datum/reagent/consumable/soysauce = list("icon_state" = "condi_soysauce", "item_state" = "", "icon_empty" = "", "name" = "soy sauce", "desc" = "A salty soy-based flavoring."),
			/datum/reagent/consumable/frostoil = list("icon_state" = "condi_coldsauce", "item_state" = "", "icon_empty" = "", "name" = "coldsauce", "desc" = "Leaves the tongue numb from its passage."),
			/datum/reagent/consumable/sodiumchloride = list("icon_state" = "condi_salt", "item_state" = "", "icon_empty" = "", "name" = "salt", "desc" = "Salt. From dead crew, presumably."),
			/datum/reagent/consumable/blackpepper = list("icon_state" = "condi_pepper", "item_state" = "", "icon_empty" = "", "name" = "pepper mill", "desc" = "Often used to flavor food or make people sneeze."),
			/datum/reagent/consumable/cornoil = list("icon_state" = "condi_cornoil", "item_state" = "", "icon_empty" = "", "name" = "corn oil", "desc" = "A delicious oil used in cooking. Made from corn."),
			/datum/reagent/consumable/sugar = list("icon_state" = "condi_sugar", "item_state" = "", "icon_empty" = "", "name" = "sugar", "desc" = "Tasty spacey sugar!"),
			/datum/reagent/consumable/astrotame = list("icon_state" = "condi_astrotame", "item_state" = "", "icon_empty" = "", "name" = "Astrotame", "desc" = "The sweetness of a thousand sugars but none of the calories."),
			/datum/reagent/consumable/bbqsauce = list("icon_state" = "condi_bbq", "item_state" = "", "icon_empty" = "", "name" = "bbq sauce", "desc" = "Hand wipes not included.")
			)

/obj/item/reagent_containers/food/condiment/pack/on_reagent_change(changetype)		// Origin -> code\modules\food_and_drinks\food\condiment.dm
	if(reagents.reagent_list.len > 0)
		var/main_reagent = reagents.get_master_reagent_id()
		if(main_reagent in possible_states)
			icon_state = possible_states[main_reagent]["icon_state"]
			item_state = possible_states[main_reagent]["item_state"]
			icon_empty = possible_states[main_reagent]["icon_empty"]
			name = possible_states[main_reagent]["name"]
			desc = possible_states[main_reagent]["desc"]
			return ..(TRUE) // Don't fill normally
		else
			icon_state = "condi_mixed"
			desc = "A small condiment pack. The label says it contains [originalname]"
	else
		icon_state = "condi_empty"
		desc = "A small condiment pack. It is empty."
