/datum/supply_pack/vendor_refill
	group = "Пополнение торговых автоматов"
	crate_type = /obj/structure/closet/crate

//Плата вендомата
/datum/supply_pack/vendor_refill/vend_circ
	name = "Плата торгового автомата "
	desc = "Плата для постройки собственного торгового автомата."
	cost = 250
	contains = list(/obj/item/circuitboard/machine/vendor,
					/obj/item/screwdriver)
	crate_name = "vend circuit crate"

//Пополнения
/datum/supply_pack/vendor_refill/bartending
	name = "Booze-o-mat and Coffee Supply Crate"
	desc = "Bring on the booze and coffee vending machine refills."
	cost = 2000
	contains = list(/obj/item/vending_refill/boozeomat,
					/obj/item/vending_refill/coffee)
	crate_name = "bartending supply crate"

/datum/supply_pack/vendor_refill/cola
	name = "Softdrinks Supply Crate"
	desc = "Got whacked by a toolbox, but you still have those pesky teeth? Get rid of those pearly whites with this soda machine refill, today!"
	cost = 1500
	contains = list(/obj/item/vending_refill/cola)
	crate_name = "soft drinks supply crate"

/datum/supply_pack/vendor_refill/snack
	name = "Snack Supply Crate"
	desc = "One vending machine refill of cavity-bringin' goodness! The number one dentist recommended order!"
	cost = 1500
	contains = list(/obj/item/vending_refill/snack)
	crate_name = "snacks supply crate"

/datum/supply_pack/vendor_refill/autodrobe
	name = "Autodrobe Supply Crate"
	desc = "Autodrobe missing your favorite dress? Solve that issue today with this autodrobe refill."
	cost = 1000
	contains = list(/obj/item/vending_refill/autodrobe)
	crate_name = "autodrobe supply crate"

/datum/supply_pack/vendor_refill/cigarette
	name = "Cigarette Supply Crate"
	desc = "Don't believe the reports - smoke today! Contains a cigarette vending machine refill."
	cost = 1500
	contains = list(/obj/item/vending_refill/cigarette)
	crate_name = "cigarette supply crate"

/datum/supply_pack/vendor_refill/games
	name = "Games Supply Crate"
	desc = "Get your game on with this game vending machine refill."
	cost = 1000
	contains = list(/obj/item/vending_refill/games)
	crate_name = "games supply crate"

/datum/supply_pack/vendor_refill/shaft
	name = "Mining equipment ящик пополнения"
	desc = "Ящик снабжения для Mining equipment торгового автомата."
	cost = 8000
	contains = list(/obj/item/vending_refill/mining_equipment)
	crate_name = "miner supply crate"

/datum/supply_pack/vendor_refill/sectech
	name = "SecTech ящик пополения"
	desc = "Ящик снабжения для SecTech торгового автомата."
	cost = 4000
	contains = list(/obj/item/vending_refill/security)
	crate_name = "SecTech supply crate"

/datum/supply_pack/vendor_refill/secdrobe
	name = "SecDrobe ящик пополения"
	desc = "Ящик снабжения для SecDrobe торгового автомата."
	cost = 2000
	contains = list(/obj/item/vending_refill/wardrobe/sec_wardrobe)
	crate_name = "SecDrobe supply crate"
