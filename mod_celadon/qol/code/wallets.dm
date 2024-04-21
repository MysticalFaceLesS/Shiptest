/obj/item/storage/wallet/ComponentInitialize()
	. = ..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage/concrete/wallet)
	STR.max_items = 4
	STR.set_holdable(list(
		/obj/item/spacecash/bundle,
		/obj/item/holochip,
		/obj/item/card,
		/obj/item/clothing/mask/cigarette,
		/obj/item/flashlight/pen,
		/obj/item/seeds,
		/obj/item/stack/medical,
		/obj/item/toy/crayon,
		/obj/item/coin,
		/obj/item/dice,
		/obj/item/disk,
		/obj/item/implanter,
		/obj/item/lighter,
		/obj/item/lipstick,
		/obj/item/match,
		/obj/item/paper,
		/obj/item/pen,
		/obj/item/photo,
		/obj/item/reagent_containers/dropper,
		/obj/item/reagent_containers/syringe,
		/obj/item/screwdriver,
		/obj/item/stamp,
		/obj/item/kitchen/knife/letter_opener,
		/obj/item/key),
		list(/obj/item/screwdriver/power))
