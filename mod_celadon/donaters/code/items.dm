/obj/item/toy/plush/celadon/separ
	name = "\proper Separatist plushie"
	desc = "A cute soft toy of a Separatist. Holding it in your hands, you can hardly restrain yourself from screaming with happiness."
	icon = 'mod_celadon/donaters/icons/plushes.dmi'
	icon_state = "separ"
	item_state = "separ"
	w_class = WEIGHT_CLASS_SMALL
	gender = MALE
	COOLDOWN_DECLARE(cooldown)

/obj/item/toy/plush/celadon/beaver/attack_self(mob/user)

	if(!COOLDOWN_FINISHED(src, cooldown))
		return

	playsound(loc, 'mod_celadon/items/sounds/plushes/beaver_plushie.ogg', 50, FALSE)
	visible_message(span_boldnotice("BOBR KURWA!"))
	COOLDOWN_START(src, cooldown, 3 SECONDS)


/obj/item/clothing/under/legislature
	name = "\proper Legislature's Drip"
	desc = {"
This outfit once belonged to the great pirate captain known as Taffy P. Aqua Legislature.
After Legislature's alliance with Chunky B. Goofy, he misplaced his prized outfit, resulting in a war lasting 3 decades.
Long story short, Legislature's pet polar bear Zippo accidentally donated it to charity.
"}
	icon = 'legislature.dmi'
	icon_state = "lawobject"
	mob_overlay_icon = 'legislature.dmi'
	mob_overlay_state = "lawhoodie"
	donator_key = "ianthewanderer"
