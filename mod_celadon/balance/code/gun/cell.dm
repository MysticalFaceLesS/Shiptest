// Добавляем батарейки
/obj/item/stock_parts/cell/gun/medium

/obj/item/stock_parts/cell/gun/medium/empty/Initialize()
	. = ..()
	charge = 0
	update_appearance()

/obj/item/stock_parts/cell/gun/medium/upgraded
	name = "upgraded weapon power cell"
	icon_state = "ug-cell"
	maxcharge = 20000
	custom_materials = list(/datum/material/glass=300)
	chargerate = 2000

/obj/item/stock_parts/cell/gun/medium/upgraded/empty/Initialize()
	. = ..()
	charge = 0
	update_appearance()

/obj/item/stock_parts/cell/gun/medium/solgov
	name = "SolGov power cell"
	icon_state = "g-sg-cell"

/obj/item/stock_parts/cell/gun/medium/kalix
	name = "Etherbor EWC-5"
	desc = "Brought to you by Etherbor Industries, proudly based within the PGF, is the EWC-5, an energy cell compatible with any Etherbor Industries energy weapons."
	icon_state = "kalix-cell"
	maxcharge = 12750 // 15 shots at 850 energy per
	chargerate = 1750

/obj/item/stock_parts/cell/gun/medium/pgf
	name = "Etherbor EWC-6m"
	desc = "Exclusive only to the PGF military, the EWC-6m is an Etherbor energy weapon cell designed for military-grade use, including expanded capacity and output."
	icon_state = "pgf-cell"
	maxcharge = 20000 // 20 shots at 1000 energy per
	chargerate = 2000

//						//
//	Чиним дыры в коде	//
//						//

/obj/item/storage/belt/security/ComponentInitialize()
	. = ..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	STR.max_items = 5
	STR.max_w_class = WEIGHT_CLASS_NORMAL
	STR.set_holdable(list(
		/obj/item/melee/baton,
		/obj/item/melee/classic_baton,
		/obj/item/grenade,
		/obj/item/reagent_containers/spray/pepper,
		/obj/item/restraints/handcuffs,
		/obj/item/assembly/flash/handheld,
		/obj/item/clothing/glasses,
		/obj/item/ammo_casing/shotgun,
		/obj/item/ammo_box/magazine,
		/obj/item/ammo_box/c38, //speed loaders don't have a common path like magazines. pain.
		/obj/item/ammo_box/a357, //some day we should refactor these into an ammo_box/speedloader type
		/obj/item/ammo_box/a4570, //but not today
		/obj/item/ammo_box/a858, //oh boy stripper clips too
		/obj/item/ammo_box/vickland_a308,
		/obj/item/ammo_box/a300,
		/obj/item/ammo_box/a762_stripper,
		/obj/item/ammo_box/amagpellet_claris, //that's the last of the clips
		/obj/item/reagent_containers/food/snacks/donut,
		/obj/item/kitchen/knife/combat,
		/obj/item/flashlight/seclite,
		/obj/item/melee/classic_baton/telescopic,
		/obj/item/radio,
		/obj/item/clothing/gloves,
		/obj/item/restraints/legcuffs/bola,
		/obj/item/holosign_creator/security,
		/obj/item/stock_parts/cell/gun/medium   //WS edit Gun cells fit where they should and not where they dont
		))

/obj/item/storage/guncase/ComponentInitialize()
	. = ..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	STR.max_items = 10
	STR.max_w_class = WEIGHT_CLASS_BULKY
	STR.set_holdable(list(
		/obj/item/gun,
		/obj/item/ammo_box,
		/obj/item/stock_parts/cell/gun/medium
		))

/obj/item/storage/pistolcase/ComponentInitialize()
	. = ..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	STR.max_items = 8
	STR.max_w_class = WEIGHT_CLASS_NORMAL
	STR.set_holdable(list(
		/obj/item/gun,
		/obj/item/ammo_box/,
		/obj/item/stock_parts/cell/gun/medium
		))

/obj/item/storage/pistolcase/laser/PopulateContents()
	new /obj/item/gun/energy/laser/empty_cell(src)
	new /obj/item/stock_parts/cell/gun/medium(src)

/obj/item/storage/pistolcase/egun/PopulateContents()
	new /obj/item/gun/energy/e_gun/empty_cell(src)
	new /obj/item/stock_parts/cell/gun/medium(src)

/obj/item/storage/pistolcase/kalixpistol/PopulateContents()
	new /obj/item/gun/energy/kalix/pistol/empty_cell(src)
	new /obj/item/stock_parts/cell/gun/medium/kalix(src)

/obj/item/storage/guncase/kalixrifle/PopulateContents()
	new /obj/item/gun/energy/kalix/empty_cell(src)
	new /obj/item/stock_parts/cell/gun/medium/kalix(src)

/obj/item/storage/pistolcase/iongun/PopulateContents()
	new /obj/item/gun/energy/ionrifle/empty_cell(src)
	new /obj/item/stock_parts/cell/gun/medium(src)

/obj/effect/spawner/lootdrop/random_ammo_protolathe_lootdrop
	loot = list(
			/obj/item/stock_parts/cell/gun/medium/upgraded = 5,
			/obj/item/ammo_box/magazine/smgm9mm = 7,
		)

/datum/supply_pack/ammo/guncell
	name = "Weapon Cell Crate"
	desc = "Contains a weapon cell, compatible with laser guns."
	contains = list(/obj/item/stock_parts/cell/gun/medium)
	cost = 500

/datum/supply_pack/ammo/guncell/kalix
	name = "Etherbor Cell Crate"
	desc = "Contains an Etherbor weapon cell, compatible with Etherbor armaments with a slightly higher capacity."
	contains = list(/obj/item/stock_parts/cell/gun/medium/kalix)
	cost = 600

/datum/outfit/job/nanotrasen/security/ert/lp
	backpack_contents = list(/obj/item/radio=1, /obj/item/stock_parts/cell/gun/medium/upgraded=2, /obj/item/screwdriver=1)

/obj/item/gun/energy/spur
	cell_type = /obj/item/stock_parts/cell/gun/medium

/datum/outfit/generic/security/pre_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	if(prob(75))
		uniform = /obj/item/clothing/under/rank/security/officer
	if(prob(75))
		suit = pick(/obj/item/clothing/suit/armor/vest, /obj/item/clothing/suit/armor/vest/security/officer, /obj/item/clothing/suit/armor/vest/bulletproof, /obj/item/clothing/suit/armor/vest/blueshirt)
	if(prob(75))
		back = pick(/obj/item/storage/backpack/security, /obj/item/storage/backpack/satchel/sec, /obj/item/storage/backpack/duffelbag/sec, /obj/item/storage/backpack/messenger/sec)
	if(prob(75))
		belt = pick(/obj/item/storage/belt/security, /obj/item/storage/belt/security/webbing)
	if(prob(75))
		gloves = pick(/obj/item/clothing/gloves/color/black, /obj/item/clothing/gloves/tackler)
	if(prob(75))
		shoes = /obj/item/clothing/shoes/jackboots
	if(prob(75))
		head = pick(/obj/item/clothing/head/helmet/sec, /obj/item/clothing/head/helmet/blueshirt, /obj/item/clothing/head/helmet/bulletproof)
	if(prob(75))
		mask = /obj/item/clothing/mask/gas/sechailer
	if(prob(75))
		ears = /obj/item/radio/headset/headset_sec
	if(prob(75))
		glasses = pick(/obj/item/clothing/glasses/hud/security, /obj/item/clothing/glasses/sunglasses)
	if(prob(75))
		r_pocket = pick(/obj/item/flashlight/seclite, /obj/item/assembly/flash/handheld, /obj/item/restraints/handcuffs)
	if(prob(50))
		suit_store = pick(/obj/item/gun/energy/e_gun, /obj/item/gun/energy/e_gun/smg, /obj/item/gun/energy/e_gun/iot)
	for(var/i = 1 to 3)
		if(prob(75))
			backpack_contents += pickweight(list(
			/obj/item/restraints/handcuffs = 8,
			/obj/item/assembly/flash/handheld = 5,
			/obj/item/storage/box/evidence = 6,
			/obj/item/flashlight/seclite = 4,
			/obj/item/ammo_box/c9mm/rubbershot = 3,
			/obj/item/ammo_box/c9mm = 1,
			/obj/item/stock_parts/cell/gun/medium = 3,
			/obj/item/coin/antagtoken = 1,
			/obj/item/grenade/stingbang = 1
			)
		)
	if(prob(75))
		accessory = /obj/item/clothing/accessory/armband/deputy

/obj/item/gun/ballistic/automatic/assault/e40/attackby(obj/item/attack_obj, mob/user, params)
	if(istype(attack_obj, /obj/item/stock_parts/cell/gun/medium))
		return secondary.attackby(attack_obj, user, params)
	if(istype(attack_obj, /obj/item/screwdriver))
		return secondary.screwdriver_act(user, attack_obj,)
	return ..()

/obj/item/gun/ballistic/automatic/powered/gauss/modelh
	cell_type = /obj/item/stock_parts/cell/gun/medium/solgov

/obj/item/gun/ballistic/automatic/powered/gauss/claris
	cell_type = /obj/item/stock_parts/cell/gun/medium/solgov

/obj/item/gun/ballistic/automatic/powered/gauss/gar
	cell_type = /obj/item/stock_parts/cell/gun/medium/solgov

/obj/item/gun/energy/e_gun/hades
	cell_type = /obj/item/stock_parts/cell/gun/medium/upgraded

/obj/item/gun/energy/e_gun/hos
	cell_type = /obj/item/stock_parts/cell/gun/medium/upgraded

/obj/item/gun/energy/temperature
	cell_type = /obj/item/stock_parts/cell/gun/medium/upgraded

/obj/item/gun/energy/kalix
	cell_type = /obj/item/stock_parts/cell/gun/medium/kalix

/obj/item/gun/energy/kalix/pgf
	cell_type = /obj/item/stock_parts/cell/gun/medium/pgf

/obj/item/gun/energy/kalix/pistol
	cell_type = /obj/item/stock_parts/cell/gun/medium/kalix

/datum/design/gun_cell
	build_path = /obj/item/stock_parts/cell/gun/medium/empty

/datum/design/gun_cell_upgraded
	build_path = /obj/item/stock_parts/cell/gun/medium/upgraded/empty

/obj/machinery/vending/security
	products = list(
		/obj/item/restraints/handcuffs = 8,
		/obj/item/restraints/handcuffs/cable/zipties = 10,
		/obj/item/assembly/flash/handheld = 5,
		/obj/item/storage/box/evidence = 6,
		/obj/item/flashlight/seclite = 4,
		/obj/item/ammo_box/c9mm/rubbershot = 3,
		/obj/item/ammo_box/c9mm = 1,
		/obj/item/stock_parts/cell/gun/medium = 3,
		/obj/item/clothing/glasses/sunglasses = 2)

/obj/machinery/vending/security/wall
	products = list(
		/obj/item/restraints/handcuffs = 5,
		/obj/item/restraints/handcuffs/cable/zipties = 10,
		/obj/item/stock_parts/cell/gun/medium = 3,
		)

/obj/machinery/vending/security/marine
	products = list(
		/obj/item/screwdriver = 5,
		/obj/item/restraints/handcuffs = 10,
		/obj/item/assembly/flash/handheld = 10,
		/obj/item/flashlight/seclite = 10,

		/obj/item/storage/box/lethalshot = 6,
		/obj/item/stock_parts/cell/gun/medium = 5,
		/obj/item/ammo_box/magazine/uzim9mm = 5,

		/obj/item/grenade/c4 = 5,
		/obj/item/grenade/frag = 5,
		)

/obj/machinery/vending/security/marine/nanotrasen
	products = list(
		/obj/item/restraints/handcuffs = 10,
		/obj/item/assembly/flash/handheld = 10,
		/obj/item/flashlight/seclite = 10,

		/obj/item/screwdriver = 5,
		/obj/item/stock_parts/cell/gun/medium = 10,
		/obj/item/stock_parts/cell/gun/medium/upgraded = 5,

		/obj/item/grenade/c4 = 5,
		/obj/item/grenade/frag = 5,
		/obj/item/grenade/flashbang = 5,
		/obj/item/grenade/barrier = 10,
		)

/obj/machinery/vending/security/marine/nanotrasen
	products = list(
		/obj/item/restraints/handcuffs = 10,
		/obj/item/assembly/flash/handheld = 10,
		/obj/item/flashlight/seclite = 10,

		/obj/item/screwdriver = 5,
		/obj/item/stock_parts/cell/gun/medium = 10,
		/obj/item/stock_parts/cell/gun/medium/upgraded = 5,

		/obj/item/grenade/c4 = 5,
		/obj/item/grenade/frag = 5,
		/obj/item/grenade/flashbang = 5,
		/obj/item/grenade/barrier = 10,
		)

