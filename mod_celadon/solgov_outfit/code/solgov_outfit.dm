// Ученые

/datum/outfit/job/solgov/scientist
	name = "SolGov - Scientific Officer"
	jobtype = /datum/job/scientist
	job_icon = "scientist"

	id = /obj/item/card/id/solgov
	ears = /obj/item/radio/headset/headset_sci
	uniform = /obj/item/clothing/under/solgov/formal
	shoes = /obj/item/clothing/shoes/laceup
	suit = /obj/item/clothing/suit/toggle/labcoat/science
	dcoat = /obj/item/clothing/suit/hooded/wintercoat/science

	backpack = /obj/item/storage/backpack/science
	satchel = /obj/item/storage/backpack/satchel/tox
	courierbag = /obj/item/storage/backpack/messenger/tox

/datum/outfit/job/solgov/scientist/roboticist
	name = "SolGov - Mechanical Technician Officer"
	job_icon = "roboticist"
	jobtype = /datum/job/roboticist

	uniform = /obj/item/clothing/under/rank/rnd/roboticist
	suit = /obj/item/clothing/suit/longcoat/robowhite

	backpack_contents = list(/obj/item/weldingtool/hugetank)

// Пилот меха

/datum/outfit/job/solgov/sonnensoldner/pilot
	name = "SolGov - Exosuit Operator"
	jobtype = /datum/job/officer
	job_icon = "sonnensoldner"

	head = /obj/item/clothing/head/solgov
	glasses = /obj/item/clothing/glasses/sunglasses
	suit = /obj/item/clothing/suit/jacket/leather

//							///
//		Elysium on solgov	///
//							///

/datum/outfit/job/captain/solgov/elysium
	name = "SolGov - Elysium Musharif"
	jobtype = /datum/job/captain
	job_icon = "captain"

	head = /obj/item/clothing/head/solfed/elysium/beret
	uniform = /obj/item/clothing/under/solgov/elysium
	suit = /obj/item/clothing/suit/armor/solfed/elysium/jacket
	shoes = /obj/item/clothing/shoes/combat
	ears = /obj/item/radio/headset/solgov/alt/captain
	id = /obj/item/card/id/solgov
	backpack = /obj/item/storage/backpack/messenger/com
