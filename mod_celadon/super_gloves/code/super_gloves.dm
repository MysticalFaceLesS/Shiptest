/obj/item/clothing/gloves/color/yellow/coolgloves
	name = "Cool gloves"
	icon_state = "explorer"
	item_state = "explorer"
	permeability_coefficient = 0
	resistance_flags = NONE

/obj/item/clothing/gloves/color/yellow/coolgloves/proc/coolname()
	return pick("Cool","Cringe","Super","Not yellow","Cooler")

/obj/item/clothing/gloves/color/yellow/coolgloves/New()
	name = "[coolname()] gloves"
