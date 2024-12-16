/datum/supply_pack/costumes_toys/wedding
	name = "Wedding Crate"
	desc = "Tie the knot IN SPACE! Hold your own extravagant wedding with this crate of suits and bridal gowns. Complete with champagne, cake, and the luxurious cost you would expect for an event to remember."
	cost = 10000 // weddings are absurdly expensive and so is this crate
	contains = list(/obj/item/clothing/under/suit/black_really, //we don't actually need suits since you can vend them but the crate should feel "complete"
					/obj/item/clothing/under/suit/black_really,
					/obj/item/clothing/under/suit/charcoal,
					/obj/item/clothing/under/suit/charcoal,
					/obj/item/clothing/under/suit/navy,
					/obj/item/clothing/under/suit/navy,
					/obj/item/clothing/under/suit/burgundy,
					/obj/item/clothing/under/suit/burgundy, // A pair of each "fancy suit" color for variety
					/obj/item/clothing/under/suit/white,
					/obj/item/clothing/under/suit/white, // white is a weird color for a groom but some people are weird
					/obj/item/clothing/under/dress/wedding,
					/obj/item/clothing/under/dress/wedding, // this is what you actually bought the crate for. You can't get these anywhere else.
					/obj/item/clothing/under/dress/wedding/orange,
					/obj/item/clothing/under/dress/wedding/orange,
					/obj/item/clothing/under/dress/wedding/purple,
					/obj/item/clothing/under/dress/wedding/purple,
					/obj/item/clothing/under/dress/wedding/blue,
					/obj/item/clothing/under/dress/wedding/blue,
					/obj/item/clothing/under/dress/wedding/red,
					/obj/item/clothing/under/dress/wedding/red, // two of each
					/obj/item/reagent_containers/food/drinks/bottle/champagne, //appropriate booze for a wedding
					/obj/item/food/cake/vanilla_cake, // we don't have a full wedding cake but this will do
					// /obj/item/storage/fancy/ringbox/silver,
					// /obj/item/storage/fancy/ringbox/silver немного текстурка пошла по одному месту, но работает
					/obj/item/clothing/gloves/ring/diamond,
					/obj/item/clothing/gloves/ring/silver) //diamond rings cost the same price as this crate via cargo so we're not giving you two for free. Wedding rings are traditionally less valuable anyway.
	crate_name = "wedding crate"
