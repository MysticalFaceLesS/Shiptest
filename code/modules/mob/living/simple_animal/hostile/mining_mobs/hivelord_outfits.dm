/datum/outfit/generic/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	. = ..()
	uniform = pickweight(list(
		/obj/item/clothing/under/utility = 5,
		/obj/item/clothing/under/utility/skirt = 5,
		/obj/item/clothing/under/color/black = 1,
		/obj/item/clothing/under/color/white = 1,
		/obj/item/clothing/under/color/random = 1,
		/obj/item/clothing/under/suit/white = 1,
		/obj/item/clothing/under/suit/tan = 1,
		/obj/item/clothing/under/suit/black_really = 1,
		/obj/item/clothing/under/suit/navy = 1,
		/obj/item/clothing/under/suit/burgundy = 1,
		/obj/item/clothing/under/suit/charcoal = 1,
		/obj/item/clothing/under/rank/civilian/lawyer/galaxy = 1,
		/obj/item/clothing/under/suit/black/skirt = 1,
		/obj/item/clothing/under/suit/black = 1,
		/obj/item/clothing/under/dress/sailor = 1,
		/obj/item/clothing/under/dress/striped = 1,
		/obj/item/clothing/under/dress/skirt/blue = 1,
		/obj/item/clothing/under/syndicate/tacticool = 1,
		)
	)
	suit = pickweight(list(
		/obj/item/clothing/suit/hooded/wintercoat = 1,
		/obj/item/clothing/suit/jacket = 1,
		/obj/item/clothing/suit/jacket/leather = 1,
		// [CELADON-ADD] - CELADON_RETURN_CONTENT
		/obj/item/clothing/suit/jacket/leather/overcoat = 1,
		// [/CELADON-ADD]
		/obj/item/clothing/suit/jacket/leather/duster = 1,
		/obj/item/clothing/suit/jacket/miljacket = 1,
		/obj/item/clothing/suit/jacket/puffer = 1,
		/obj/item/clothing/suit/gothcoat = 1,
		/obj/item/clothing/suit/toggle/industrial = 1,
		/obj/item/clothing/suit/toggle/hazard = 1,
		)
	)
	back = pickweight(list(
		/obj/item/storage/backpack = 1,
		/obj/item/storage/backpack/satchel = 1,
		/obj/item/storage/backpack/duffelbag = 1,
		/obj/item/storage/backpack/messenger = 1,
		/obj/item/storage/backpack/satchel/leather = 1
		)
	)
	if (prob(10))
		belt = pickweight(list(
			/obj/item/gun/ballistic/automatic/pistol/candor = 2,
			/obj/item/gun/ballistic/automatic/pistol/commander = 1,
			/obj/item/gun/ballistic/automatic/pistol/ringneck = 1,
			/obj/item/gun/ballistic/revolver/viper = 1,
			/obj/item/gun/ballistic/revolver/firebrand = 1,
			)
		)
	if(prob(50))
		gloves = pickweight(list(
			/obj/item/clothing/gloves/color/black = 1,
			/obj/item/clothing/gloves/fingerless = 1,
			/obj/item/clothing/gloves/color/white = 1,
			)
		)
	shoes = pickweight(list(
		/obj/item/clothing/shoes/laceup = 1,
		/obj/item/clothing/shoes/sandal = 1,
		/obj/item/clothing/shoes/winterboots = 1,
		/obj/item/clothing/shoes/workboots/mining = 1,
		/obj/item/clothing/shoes/workboots = 1,
		/obj/item/clothing/shoes/sneakers/black = 1,
		/obj/item/clothing/shoes/sneakers/brown = 1,
		/obj/item/clothing/shoes/sneakers/white = 1
		)
	)
	if(prob(50))
		head = pickweight(list(
			/obj/item/clothing/head/beret = 3,
			/obj/item/clothing/head/beret/grey = 3,
			/obj/item/clothing/head/flatcap = 3,
			/obj/item/clothing/head/beanie = 3,
			/obj/item/clothing/head/cowboy = 3,
			/obj/item/clothing/head/trapper = 2,
			/obj/item/clothing/head/hardhat = 2,
			/obj/item/clothing/head/hardhat/orange = 2,
			/obj/item/clothing/head/hardhat/dblue = 2,
			// [CELADON-ADD] - CELADON_RETURN_CONTENT
			/obj/item/clothing/head/foilhat = 1,
			// [/CELADON-ADD]
			/obj/item/clothing/head/pirate = 1,
			)
		)
	if(prob(50))
		mask = pickweight(list(
			/obj/item/clothing/mask/balaclava = 1,
			/obj/item/clothing/mask/bandana/red = 1,
			/obj/item/clothing/mask/gas = 3,
			/obj/item/clothing/mask/breath = 3,
			)
		)
	if(prob(25))
		neck = pickweight(list(
			/obj/item/clothing/neck/scarf/red = 1,
			/obj/item/clothing/neck/scarf/green = 1,
			/obj/item/clothing/neck/scarf/darkblue = 1,
			/obj/item/clothing/neck/shemagh = 1,
			/obj/item/clothing/neck/stripedredscarf = 1,
			/obj/item/clothing/neck/stripedgreenscarf = 1,
			/obj/item/clothing/neck/stripedbluescarf = 1
			)
		)
	ears = pick(/obj/item/radio/headset, /obj/item/radio/headset/alt)
	if(prob(50))
		glasses = pickweight(list(
			/obj/item/clothing/glasses/regular = 1,
			/obj/item/clothing/glasses/regular/circle = 1,
			/obj/item/clothing/glasses/regular/jamjar = 1,
			/obj/item/clothing/glasses/eyepatch = 1,
			/obj/item/clothing/glasses/cheapsuns = 1,
			/obj/item/clothing/glasses/regular/hipster = 1,
			/obj/item/clothing/glasses/cold = 1,
			/obj/item/clothing/glasses/heat = 1,
			/obj/item/clothing/glasses/orange = 1,
			)
		)
	if(prob(75))
		r_pocket = /obj/item/tank/internals/emergency_oxygen
	if(prob(75))
		l_pocket = pick(/obj/item/radio, /obj/item/flashlight)
	id = /obj/item/card/id
	backpack_contents = list()
	backpack_contents += pickweight(list(
		/obj/item/dice/d20 = 1,
		/obj/item/lipstick = 1,
		/obj/item/clothing/mask/vape = 1,
		/obj/item/clothing/mask/vape/cigar = 1,
		/obj/item/reagent_containers/food/drinks/flask = 1,
		/obj/item/lighter = 1,
		/obj/item/toy/cards/deck = 1,
		/obj/item/toy/eightball = 1,
		/obj/item/storage/wallet = 1,
		/obj/item/paicard = 1,
		/obj/item/pen/fourcolor = 1,
		/obj/item/paper_bin = 1,
		/obj/item/cane = 1,
		/obj/item/radio = 1,
		/obj/item/dyespray = 1,
		/obj/item/table_bell/brass = 1,
		/obj/item/flashlight = 1,
		/obj/item/crowbar/red = 1
		)
	)

/datum/outfit/generic
	name = "Generic (Legion)"
	box = /obj/item/storage/box/survival
	random = TRUE

/datum/outfit/generic/miner/pre_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	if(prob(75))
		uniform = pickweight(list(
			/obj/item/clothing/under/rank/cargo/miner/lavaland = 5,
			/obj/item/clothing/under/rank/cargo/miner = 4,
			/obj/item/clothing/under/rank/cargo/miner/lavaland/old = 1,
			)
		)
	if(prob(25))
		suit = pickweight(list(
			/obj/item/clothing/suit/hooded/explorer = 18,
			/obj/item/clothing/suit/hooded/explorer/old = 1,
			/obj/item/clothing/suit/hooded/cloak/goliath = 1
			)
		)
	if(prob(75))
		back = /obj/item/storage/backpack/explorer
	if(prob(75))
		belt = pickweight(list(
			/obj/item/storage/belt/mining = 2,
			/obj/item/storage/belt/mining/alt = 2
			)
		)
	else if(prob(75))
		belt = pickweight(list(
			/obj/item/pickaxe = 16,
			/obj/item/pickaxe/mini = 8,
			/obj/item/pickaxe/silver = 4,
			/obj/item/pickaxe/diamond = 2,
			/obj/item/gun/energy/kinetic_accelerator = 2,
			/obj/item/kinetic_crusher/old = 1
			)
		)
	if(prob(75))
		gloves = pickweight(list(
			/obj/item/clothing/gloves/color/black = 9,
			/obj/item/clothing/gloves/explorer/old = 1
			)
		)
	if(prob(75))
		shoes = /obj/item/clothing/shoes/workboots/mining
	if(prob(75))
		mask = pickweight(list(
			/obj/item/clothing/mask/gas/explorer = 9,
			/obj/item/clothing/mask/gas/explorer/old = 1
			)
		)
	if(prob(50))
		glasses = /obj/item/clothing/glasses/meson
	if(prob(50))
		r_pocket = pickweight(list(
			/obj/item/stack/marker_beacon = 20,
			/obj/item/spacecash/bundle/smallrand = 7,
			/obj/item/reagent_containers/hypospray/medipen/survival = 2,
			/obj/item/borg/upgrade/modkit/damage = 1
			)
		)
	if(prob(25))
		l_pocket = pickweight(list(
			/obj/item/spacecash/bundle/smallrand = 5,
			/obj/item/reagent_containers/hypospray/medipen/survival = 2,
			/obj/item/borg/upgrade/modkit/cooldown = 1
			)
		)
	if(prob(75))
		for(var/count in 1 to 3)
			if(prob(70))
				backpack_contents += pickweight(list(
					/obj/item/borg/upgrade/modkit/damage = 1,
					/obj/item/borg/upgrade/modkit/trigger_guard = 1,
					/obj/item/soap/nanotrasen = 1,
					/obj/item/wormhole_jaunter = 1,
					/obj/item/fulton_core = 1,
					/obj/item/extraction_pack = 2,
					/obj/item/stack/sheet/animalhide/goliath_hide = 3,
					/obj/item/hivelordstabilizer = 2,
					/obj/item/stack/marker_beacon/ten = 2,
					/obj/item/mining_scanner = 2,
					/obj/item/extinguisher/mini = 2,
					/obj/item/melee/knife/survival = 3,
					/obj/item/flashlight/seclite = 3,
					/obj/item/stack/sheet/sinew = 3,
					/obj/item/stack/sheet/bone = 3
					)
				)
		if(prob(30))
			backpack_contents += list(
				/obj/item/reagent_containers/hypospray/medipen/survival = pickweight(list(
					1 = 3,
					2 = 2,
					3 = 1
					)
				)
			)
	else if (prob(75))
		backpack_contents = list()
		back = pickweight(list(
			/obj/item/kinetic_crusher = 9,
			/obj/item/kinetic_crusher/old = 1
			)
		)

/datum/outfit/generic/miner
	name = "Miner (Legion)"

/datum/outfit/generic/engineer/pre_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	if(prob(75))
		uniform = pick(/obj/item/clothing/under/rank/engineering/engineer, /obj/item/clothing/under/rank/engineering/engineer/hazard, /obj/item/clothing/under/rank/security/officer/military/eng)
	if(prob(75))
		suit = pick(/obj/item/clothing/suit/toggle/hazard, /obj/item/clothing/suit/hazardvest, /obj/item/clothing/suit/hooded/wintercoat/engineering)
	if(prob(75))
		gloves = pick(/obj/item/clothing/gloves/color/yellow, /obj/item/clothing/gloves/color/fyellow, /obj/item/clothing/gloves/color/fyellow/old)
	if(prob(75))
		belt = pick(/obj/item/storage/belt/utility/full, /obj/item/storage/belt/utility)
	if(prob(50))
		head = /obj/item/clothing/head/welding
	if(prob(75))
		ears = /obj/item/radio/headset/headset_eng
	else if(prob(50))
		glasses = /obj/item/clothing/glasses/welding
	if(prob(75))
		back = pick(/obj/item/storage/backpack/industrial, /obj/item/storage/backpack/satchel/eng, /obj/item/storage/backpack/duffelbag/engineering, /obj/item/storage/backpack/messenger/engi)
	if(prob(10))
		back = /obj/item/melee/axe/fire
	for(var/i = 1 to 3)
		if(prob(75))
			backpack_contents += pickweight(list(
				/obj/item/stack/tape/industrial/electrical = 1,
				/obj/item/electronics/apc = 1,
				/obj/item/multitool = 1,
				/obj/item/pipe_dispenser = 1,
				/obj/item/tank/internals/emergency_oxygen/engi = 1,
				/obj/item/holosign_creator/engineering = 1,
				/obj/item/extinguisher/advanced = 1,
				/obj/item/stack/sheet/metal/twenty = 1
				)
			)
	if(prob(75))
		accessory = /obj/item/clothing/accessory/armband/engine

/datum/outfit/generic/engineer
	name = "Mechanic (Legion)"
	box = /obj/item/storage/box/survival/engineer

/datum/outfit/generic/doctor/pre_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	if(prob(75))
		uniform = pick(/obj/item/clothing/under/rank/medical/doctor, /obj/item/clothing/under/rank/medical/doctor/blue)
	if(prob(75))
		suit = pick(/obj/item/clothing/suit/toggle/labcoat, /obj/item/clothing/suit/apron/surgical ,/obj/item/clothing/suit/hooded/wintercoat/medical)
	if(prob(75))
		back = pick(/obj/item/storage/backpack/medic, /obj/item/storage/backpack/satchel/med, /obj/item/storage/backpack/duffelbag/med, /obj/item/storage/backpack/messenger/med)
	else if (prob(75))
		back = /obj/item/defibrillator/loaded
	if(prob(75))
		belt = pickweight(list(/obj/item/storage/belt/medical = 5, /obj/item/defibrillator/compact/loaded = 1))
	if(prob(75))
		gloves = pick(/obj/item/clothing/gloves/color/white, /obj/item/clothing/gloves/color/latex/nitrile)
	if(prob(75))
		mask = /obj/item/clothing/mask/surgical
	if(prob(75))
		shoes = /obj/item/clothing/shoes/sneakers/white
	if(prob(75))
		head = /obj/item/clothing/head/beret/med
	if(prob(75))
		ears = /obj/item/radio/headset/headset_med
	if(prob(75))
		glasses = pick(/obj/item/clothing/glasses/hud/health, /obj/item/clothing/glasses/hud/health/prescription)
	for(var/i = 1 to 3)
		if(prob(75))
			backpack_contents += pickweight(list(
				/obj/item/reagent_containers/pill/patch/styptic = 5,
				/obj/item/reagent_containers/pill/patch/silver_sulf = 5,
				/obj/item/storage/firstaid/medical = 3,
				/obj/item/reagent_containers/syringe = 3,
				/obj/item/reagent_containers/glass/beaker = 2,
				/obj/item/reagent_containers/dropper = 2,
				/obj/item/reagent_containers/pill/charcoal = 2,
				/obj/item/reagent_containers/medigel/styptic = 2,
				/obj/item/reagent_containers/medigel/silver_sulf = 2,
				/obj/item/reagent_containers/medigel/sterilizine = 1,
				/obj/item/flashlight/pen = 1,
				/obj/item/hypospray/mkii = 1,
				/obj/item/healthanalyzer = 1,
			)
		)
	if(prob(75))
		accessory = /obj/item/clothing/accessory/armband/medblue

/datum/outfit/generic/doctor
	name = "Medical Doctor (Legion)"
	box = /obj/item/storage/box/survival/medical

/datum/outfit/generic/science/pre_equip(mob/living/carbon/human/H)
	..()
	if(prob(75))
		uniform = pick(/obj/item/clothing/under/rank/rnd/scientist, /obj/item/clothing/under/rank/rnd/roboticist)
	if(prob(75))
		suit = pick(/obj/item/clothing/suit/toggle/labcoat/science, /obj/item/clothing/suit/hooded/wintercoat/science)
	if(prob(75))
		back = pick(/obj/item/storage/backpack/science, /obj/item/storage/backpack/satchel/tox, /obj/item/storage/backpack/messenger/tox)
	if(prob(75))
		shoes = /obj/item/clothing/shoes/sneakers/white
	if(prob(75))
		gloves = /obj/item/clothing/gloves/color/white
	if(prob(75))
		head = /obj/item/clothing/head/beret/sci
	if(prob(75))
		ears = /obj/item/radio/headset/headset_sci
	if(prob(75))
		glasses = pick(/obj/item/clothing/glasses/hud/diagnostic, /obj/item/clothing/glasses/science)
	if(prob(1))
		neck = /obj/item/clothing/neck/tie/horrible
	for(var/i = 1 to 3)
		if(prob(75))
			backpack_contents += pickweight(list(
			/obj/item/research_notes/loot/tiny = 3,
			/obj/item/research_notes/loot/small = 3,
			/obj/item/reagent_scanner = 3,
			/obj/item/assembly/flash/handheld = 3,
			/obj/item/stock_parts/capacitor/adv = 2,
			/obj/item/stock_parts/scanning_module/adv = 2,
			/obj/item/stock_parts/manipulator/nano = 2,
			/obj/item/stock_parts/micro_laser/high = 2,
			/obj/item/stock_parts/matter_bin/adv = 2,
			/obj/item/survey_handheld = 1,
			/obj/item/weldingtool/experimental = 1,
			/obj/item/mmi/posibrain = 1,
			/obj/item/reagent_containers/glass/beaker/plastic = 1,
			/obj/item/organ/eyes/robotic/shield = 1,
			/obj/item/organ/eyes/robotic/glow = 1,
			)
		)
	if(prob(75))
		accessory = /obj/item/clothing/accessory/armband/science


/datum/outfit/generic/science
	name = "Scientist (Legion)"

/datum/outfit/generic/cargo/pre_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	if(prob(75))
		uniform = pick(/obj/item/clothing/under/rank/cargo/tech, /obj/item/clothing/under/shorts/grey)
	if(prob(75))
		suit = pick(/obj/item/clothing/suit/hazardvest, /obj/item/clothing/suit/hooded/wintercoat/cargo)
	if(prob(25))
		belt = /obj/item/gun/ballistic/automatic/zip_pistol
	if(prob(75))
		gloves = /obj/item/clothing/gloves/fingerless
	if(prob(75))
		shoes = /obj/item/clothing/shoes/sneakers/black
	if(prob(75))
		head = /obj/item/clothing/head/soft
	if(prob(75))
		ears = /obj/item/radio/headset/headset_cargo
	for(var/i = 1 to 3)
		if(prob(75))
			backpack_contents += pickweight(list(
				/obj/item/spacecash/bundle/smallrand = 5,
				/obj/item/ammo_box/magazine/illestren_a850r = 5,
				/obj/item/ammo_box/magazine/zip_ammo_9mm = 5,
				/obj/item/modular_computer/tablet/preset/cargo = 3,
				/obj/item/stack/tape = 3,
				/obj/item/stack/tape/industrial = 3,
				/obj/item/stack/sheet/plastic/five = 3,
				/obj/item/grenade/frag = 1
				)
			)
	if(prob(75))
		accessory = /obj/item/clothing/accessory/armband/cargo
	if(prob(25))
		suit = /obj/item/clothing/suit/armor/vest/scrap
		suit_store = /obj/item/gun/ballistic/rifle/illestren

/datum/outfit/generic/cargo
	name = "Cargo Technician (Legion)"

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
			/obj/item/stock_parts/cell/gun = 3,
			/obj/item/coin/antagtoken = 1,
			/obj/item/grenade/stingbang = 1
			)
		)
	if(prob(75))
		accessory = /obj/item/clothing/accessory/armband/deputy

/datum/outfit/generic/security
	name = "Security Officer (Legion)"
	box = /obj/item/storage/box/survival/security
// [CELADON-ADD] - CELADON_RETURN_LEGION_CORPSES
/datum/outfit/generic/oldminer
	name = "Old miner (Legion)"

/datum/outfit/generic/oldminer/pre_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	if(prob(100))
		suit = /obj/item/clothing/suit/hooded/explorer/old
		mask = /obj/item/clothing/mask/gas/explorer/old
	if(prob(95))
		glasses = /obj/item/clothing/glasses/meson
	else if (prob(75))
		glasses = /obj/item/clothing/glasses/meson
		suit_store = /obj/item/tank/internals/oxygen
		gloves = /obj/item/clothing/gloves/explorer/old
		uniform = /obj/item/clothing/under/rank/cargo/miner/lavaland/old
	if(prob(85))
		back = /obj/item/storage/backpack/explorer
		backpack_contents = list()
	if(prob(70))
		backpack_contents += pickweight(list(
		/obj/item/borg/upgrade/modkit/damage = 1,
		/obj/item/borg/upgrade/modkit/trigger_guard = 1,
		/obj/item/soap/nanotrasen = 1,
		/obj/item/wormhole_jaunter = 1,
		/obj/item/fulton_core = 1,
		/obj/item/extraction_pack = 2,
		/obj/item/stack/sheet/animalhide/goliath_hide = 3,
		/obj/item/hivelordstabilizer = 2,
		/obj/item/stack/marker_beacon/ten = 2,
		/obj/item/mining_scanner = 2,
		/obj/item/extinguisher/mini = 2,
		/obj/item/melee/knife/survival = 3,
		/obj/item/flashlight/seclite=3,
		/obj/item/stack/sheet/sinew = 3,
		/obj/item/stack/sheet/bone = 3
			)
		)
	if(prob(70))
		backpack_contents += pickweight(list(
		/obj/item/borg/upgrade/modkit/damage = 1,
		/obj/item/borg/upgrade/modkit/trigger_guard = 1,
		/obj/item/soap/nanotrasen = 1,
		/obj/item/wormhole_jaunter = 1,
		/obj/item/fulton_core = 1,
		/obj/item/extraction_pack = 2,
		/obj/item/stack/sheet/animalhide/goliath_hide = 3,
		/obj/item/hivelordstabilizer = 2,
		/obj/item/stack/marker_beacon/ten = 2,
		/obj/item/mining_scanner = 2,
		/obj/item/extinguisher/mini = 2,
		/obj/item/melee/knife/survival = 3,
		/obj/item/flashlight/seclite=3,
		/obj/item/stack/sheet/sinew = 3,
		/obj/item/stack/sheet/bone = 3
		)
	)
	if(prob(70))
		backpack_contents += pickweight(list(
		/obj/item/borg/upgrade/modkit/damage = 1,
		/obj/item/borg/upgrade/modkit/trigger_guard = 1,
		/obj/item/soap/nanotrasen = 1,
		/obj/item/wormhole_jaunter = 1,
		/obj/item/fulton_core = 1,
		/obj/item/extraction_pack = 2,
		/obj/item/stack/sheet/animalhide/goliath_hide = 3,
		/obj/item/hivelordstabilizer = 2,
		/obj/item/stack/marker_beacon/ten = 2,
		/obj/item/mining_scanner = 2,
		/obj/item/extinguisher/mini = 2,
		/obj/item/melee/knife/survival = 3,
		/obj/item/flashlight/seclite=3,
		/obj/item/stack/sheet/sinew = 3,
		/obj/item/stack/sheet/bone = 3
		)
	)
	if(prob(30))
		backpack_contents += list(
			/obj/item/reagent_containers/hypospray/medipen/survival = pickweight(list(
				1 = 3,
				2 = 2,
				3 = 1
				)
			)
		)
	else
		back = /obj/item/kinetic_crusher/old
	if(prob(30))
		belt = /obj/item/gun/energy/kinetic_accelerator/old
	if(prob(30))
		r_pocket = pickweight(list(
		/obj/item/stack/marker_beacon = 20,
		/obj/item/spacecash/bundle/mediumrand = 7,
		/obj/item/reagent_containers/hypospray/medipen/survival = 2,
		/obj/item/borg/upgrade/modkit/damage = 1
		)
	)
	if(prob(30))
	l_pocket = pickweight(list(
		/obj/item/spacecash/bundle/mediumrand = 5,
		/obj/item/reagent_containers/hypospray/medipen/survival = 2,
		/obj/item/borg/upgrade/modkit/cooldown = 1
		)
	)

/datum/outfit/generic/ashwalker
	name = "Ashwalker (Legion)"

/datum/outfit/generic/ashwalker/pre_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	mob_species = /datum/species/lizard/ashwalker
	uniform = /obj/item/clothing/under/costume/gladiator/ash_walker
	if(prob(95))
		head = /obj/item/clothing/head/helmet/gladiator
	else
		head = /obj/item/clothing/head/helmet/skull
		suit = /obj/item/clothing/suit/armor/bone
		gloves = /obj/item/clothing/gloves/bracer
	if(prob(45))
		back = pickweight(list(
			/obj/item/melee/spear/bone = 3,
			/obj/item/melee/axe/bone = 2
			)
		)
	if(prob(10))
		belt = /obj/item/storage/belt/mining/primitive
	if(prob(30))
		r_pocket = /obj/item/restraints/legcuffs/bola/watcher
	if(prob(30))
		l_pocket = /obj/item/melee/knife/bone

/datum/outfit/generic/soldier
	name = "Soldier (Legion)"
/datum/outfit/generic/soldier/pre_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	if(prob(90))
		uniform = /obj/item/clothing/under/solgov
		suit = /obj/item/clothing/suit/armor/vest/solgov
		shoes = /obj/item/clothing/shoes/jackboots
		gloves = /obj/item/clothing/gloves/color/black
		mask = /obj/item/clothing/mask/gas/sechailer
		head = /obj/item/clothing/head/solgov/sonnensoldner
		id = /obj/item/card/id/solgov
	else
		uniform = /obj/item/clothing/under/solgov
		suit = /obj/item/clothing/suit/space/hardsuit/solgov
		shoes = /obj/item/clothing/shoes/combat
		gloves = /obj/item/clothing/gloves/combat
		mask = /obj/item/clothing/mask/gas/sechailer/swat
		id = /obj/item/card/id/solgov
	if(prob(85))
		back = /obj/item/storage/backpack
		backpack_contents = list()
		if(prob(75))
			backpack_contents += pickweight(list(
				/obj/item/reagent_containers/hypospray/medipen/stimpack/traitor = 1,
				/obj/item/storage/firstaid/tactical = 1,
				/obj/item/gun/ballistic/automatic/pistol/solgov = 1,
				/obj/item/gps = 1,
				/obj/item/stock_parts/cell/gun/upgraded = 2,
				/obj/item/ammo_box/magazine/pistol556mm = 3,
				/obj/item/desk_flag/solgov = 3,
				/obj/item/stack/marker_beacon/ten = 3,
				/obj/item/detective_scanner = 2,
				/obj/item/extinguisher/mini = 3,
				/obj/item/melee/knife/combat = 3,
				/obj/item/flashlight/seclite=3,
				/obj/item/ammo_casing/shotgun = 3,
				/obj/item/binoculars = 3,
				/obj/item/clipboard = 3
				)
			)
		if(prob(75))
			backpack_contents += pickweight(list(
				/obj/item/reagent_containers/hypospray/medipen/stimpack/traitor = 1,
				/obj/item/storage/firstaid/tactical = 1,
				/obj/item/gun/ballistic/automatic/pistol/solgov = 1,
				/obj/item/gps = 1,
				/obj/item/stock_parts/cell/gun/upgraded = 2,
				/obj/item/ammo_box/magazine/pistol556mm = 3,
				/obj/item/desk_flag/solgov = 3,
				/obj/item/stack/marker_beacon/ten = 3,
				/obj/item/detective_scanner = 2,
				/obj/item/extinguisher/mini = 3,
				/obj/item/melee/knife/combat = 3,
				/obj/item/flashlight/seclite=3,
				/obj/item/ammo_casing/shotgun = 3,
				/obj/item/binoculars = 3,
				/obj/item/clipboard = 3
				)
			)
		if(prob(75))
			backpack_contents += pickweight(list(
				/obj/item/reagent_containers/hypospray/medipen/stimpack/traitor = 1,
				/obj/item/storage/firstaid/tactical = 1,
				/obj/item/gun/ballistic/automatic/pistol/solgov = 1,
				/obj/item/gps = 1,
				/obj/item/stock_parts/cell/gun/upgraded = 2,
				/obj/item/ammo_box/magazine/pistol556mm = 3,
				/obj/item/desk_flag/solgov = 3,
				/obj/item/stack/marker_beacon/ten = 3,
				/obj/item/detective_scanner = 2,
				/obj/item/extinguisher/mini = 3,
				/obj/item/melee/knife/combat = 3,
				/obj/item/flashlight/seclite=3,
				/obj/item/ammo_casing/shotgun = 3,
				/obj/item/binoculars = 3,
				/obj/item/clipboard = 3
				)
			)
	else
		back = pickweight(list(
			/obj/item/energyhalberd = 5,
			/obj/item/gun/ballistic/rocketlauncher = 5
			)
		)
	if(prob(25))
		belt = /obj/item/storage/belt/military
	if(prob(50))
		r_pocket = pickweight(list(
			/obj/item/reagent_containers/hypospray/medipen/stimpack = 1,
			/obj/item/melee/knife/letter_opener = 3,
			/obj/item/radio = 3,
			/obj/item/grenade/syndieminibomb/concussion = 1,
			/obj/item/melee/transforming/energy/ctf/solgov = 1
			)
		)
	if(prob(50))
		l_pocket = pickweight(list(
			/obj/item/reagent_containers/hypospray/medipen/stimpack = 1,
			/obj/item/melee/knife/letter_opener = 3,
			/obj/item/radio = 3,
			/obj/item/grenade/syndieminibomb/concussion = 1,
			/obj/item/melee/transforming/energy/ctf/solgov = 1
			)
		)
	if(prob(70))
		glasses = pickweight(list(
			/obj/item/clothing/glasses/sunglasses = 3,
			/obj/item/clothing/glasses/hud/health = 3,
			/obj/item/clothing/glasses/hud/health/night = 1,
			/obj/item/clothing/glasses/night = 2
			)
		)

/datum/outfit/generic/kobold
	name = "Kobold (Legion)"
/datum/outfit/generic/kobold/pre_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	mob_species = /datum/species/lizard/ashwalker/kobold
	uniform = /obj/item/clothing/under/costume/gladiator/ash_walker
	if(prob(95))
		head = /obj/item/clothing/head/helmet/gladiator
	else
		head = /obj/item/clothing/head/helmet/skull
		suit = /obj/item/clothing/suit/armor/bone
		gloves = /obj/item/clothing/gloves/bracer
	if(prob(5))
		back = pickweight(list(
			/obj/item/melee/spear/bone = 3,
			/obj/item/melee/axe/bone = 2
			)
		)
	if(prob(10))
		belt = /obj/item/storage/belt/mining/primitive
	if(prob(30))
		r_pocket = /obj/item/melee/knife/bone
	if(prob(30))
		l_pocket = /obj/item/melee/knife/bone

/datum/outfit/generic/YeOlde
	name = "YeOlde (Legion)"
/datum/outfit/generic/YeOlde/pre_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	mob_gender = FEMALE
	uniform = /obj/item/clothing/under/costume/maid
	gloves = /obj/item/clothing/gloves/color/white
	shoes = /obj/item/clothing/shoes/laceup
	head = /obj/item/clothing/head/helmet/knight
	suit = /obj/item/clothing/suit/armor/riot/knight
	back = /obj/item/shield/riot/buckler
	belt = /obj/item/melee/sword/claymore
	r_pocket = /obj/item/tank/internals/emergency_oxygen
	mask = /obj/item/clothing/mask/breath

/datum/outfit/generic/operative
	name = "Operative (Legion)"
/datum/outfit/generic/operative/pre_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	if(prob(40))
		outfit = /datum/outfit/syndicatecommandocorpse
	else if(prob(5))
		outfit = /datum/outfit/syndicatestormtroopercorpse
	else
		outfit = /datum/outfit/syndicateramzicorpse

/datum/outfit/generic/waldo
	name = "Waldo (Legion)"
/datum/outfit/generic/waldo/pre_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	name = "Waldo"
	uniform = /obj/item/clothing/under/pants/jeans
	suit = /obj/item/clothing/suit/striped_sweater
	head = /obj/item/clothing/head/beanie/waldo
	shoes = /obj/item/clothing/shoes/sneakers/brown
	ears = /obj/item/radio/headset
	glasses = /obj/item/clothing/glasses/regular/circle
	back = /obj/item/storage/backpack/satchel/leather
	backpack_contents = list()
	if(prob(50))
		backpack_contents += pickweight(list(
			/obj/item/book/granter/spell/knock = 1,
			/obj/item/book/granter/spell/blind = 1,
			/obj/item/shadowcloak = 1,
			/obj/item/book/granter/spell/smoke = 2,
			/obj/item/reagent_containers/syringe/mulligan = 2,
			/obj/item/dice/d20 = 3,
			/obj/item/dice/d20/fate/stealth/one_use = 1,
			/obj/item/clothing/head/chameleon/broken = 3,
			/obj/item/stack/marker_beacon/ten = 3,
			/obj/item/grenade/smokebomb = 3,
			/obj/item/grenade/flashbang = 3
			)
		)
	if(prob(50))
		backpack_contents += pickweight(list(
			/obj/item/book/granter/spell/knock = 1,
			/obj/item/book/granter/spell/blind = 1,
			/obj/item/shadowcloak = 1,
			/obj/item/book/granter/spell/smoke = 2,
			/obj/item/reagent_containers/syringe/mulligan = 2,
			/obj/item/dice/d20/fate/stealth/one_use = 1,
			/obj/item/dice/d20 = 3,
			/obj/item/clothing/head/chameleon/broken = 3,
			/obj/item/stack/marker_beacon/ten = 3,
			/obj/item/grenade/smokebomb = 3,
			/obj/item/grenade/flashbang = 3
			)
		)
	if(prob(50))
		backpack_contents += pickweight(list(
			/obj/item/book/granter/spell/knock = 1,
			/obj/item/book/granter/spell/blind = 1,
			/obj/item/shadowcloak = 1,
			/obj/item/book/granter/spell/smoke = 2,
			/obj/item/reagent_containers/syringe/mulligan = 2,
			/obj/item/dice/d20/fate/stealth/one_use = 1,
			/obj/item/clothing/head/chameleon/broken = 3,
			/obj/item/stack/marker_beacon/ten = 3,
			/obj/item/grenade/smokebomb = 3,
			/obj/item/grenade/flashbang = 3
			)
		)
	if(prob(25))
		r_pocket = pickweight(list(
			/obj/item/chameleon,
			/obj/item/dnainjector/chameleonmut = 1,
			/obj/item/flashlight/flashdark = 1
			)
		)
	if(prob(25))
		l_pocket = pickweight(list(
			/obj/item/chameleon,
			/obj/item/dnainjector/chameleonmut = 1,
			/obj/item/flashlight/flashdark = 1
			)
		)

/datum/outfit/generic/shadow
	name = "Shadow (Legion)"
/datum/outfit/generic/shadow/pre_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	mob_species = /datum/species/shadow
	neck = /obj/item/clothing/accessory/medal/plasma/nobel_science
	uniform = /obj/item/clothing/under/color/black
	shoes = /obj/item/clothing/shoes/sneakers/black
	suit = /obj/item/clothing/suit/toggle/labcoat
	glasses = /obj/item/clothing/glasses/blindfold
	back = /obj/item/tank/internals/oxygen
	mask = /obj/item/clothing/mask/breath

/datum/outfit/generic/srm
	name = "SRM (Legion)"
/datum/outfit/generic/srm/pre_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	uniform = /obj/item/clothing/under/suit/roumain
	shoes = /obj/item/clothing/shoes/workboots/mining
	if(prob(50))
		suit = /obj/item/clothing/suit/armor/roumain/shadow
		head = /obj/item/clothing/head/cowboy/sec/roumain/shadow
	else
		suit = /obj/item/clothing/suit/armor/roumain
		head = /obj/item/clothing/head/cowboy/sec/roumain
	if(prob(25))
		suit_store = /obj/item/gun/ballistic/shotgun/flamingarrow
		r_pocket = /obj/item/book/manual/trickwines_4_brewers
		belt = pick(list(/obj/item/melee/knife/hunting = 1, /obj/item/gun/ballistic/derringer = 1))
		back = /obj/item/storage/backpack/cultpack
		backpack_contents = list()
	if(prob(75))
		backpack_contents += list(/obj/item/ammo_box/c38_box = 1)
	for(var/i = 1 to 3)
		if(prob(75))
			backpack_contents += pickweight(list(
			/obj/item/reagent_containers/food/drinks/breakawayflask/vintage/ashwine,
			/obj/item/reagent_containers/food/drinks/breakawayflask/vintage/icewine,
			/obj/item/reagent_containers/food/drinks/breakawayflask/vintage/shockwine,
			/obj/item/reagent_containers/food/drinks/breakawayflask/vintage/hearthwine,
			/obj/item/reagent_containers/food/drinks/breakawayflask/vintage/forcewine,
			/obj/item/reagent_containers/food/drinks/breakawayflask/vintage/prismwine,) = 2)
// [/CELADON-ADD]
