// СПРАВОЧНИК ПО АТРИБУТАМ МОБОВ
/*
	faction = list("hostile")
	stop_automated_movement_when_pulled = 0
	obj_damage = 40
	environment_smash = ENVIRONMENT_SMASH_STRUCTURES //Bitflags. Set to ENVIRONMENT_SMASH_STRUCTURES to break closets,tables,racks, etc; ENVIRONMENT_SMASH_WALLS for walls; ENVIRONMENT_SMASH_RWALLS for rwalls
	///The current target of our attacks, use GiveTarget and LoseTarget to set this var
	atom/target
	ranged = FALSE
	rapid = 0 //How many shots per volley.
	rapid_fire_delay = 2 //Time between rapid fire shots

	dodging = FALSE
	approaching_target = FALSE //We should dodge now
	in_melee = FALSE	//We should sidestep now
	dodge_prob = 30
	sidestep_per_cycle = 1 //How many sidesteps per npcpool cycle when in melee

	projectiletype	//set ONLY it and NULLIFY casingtype var, if we have ONLY projectile
	projectilesound
	casingtype		//set ONLY it and NULLIFY projectiletype, if we have projectile IN CASING
	move_to_delay = 3 //delay for the automated movement.
	friends = list()
	emote_taunt = list()
	taunt_chance = 0

	rapid_melee = 1			 //Number of melee attacks between each npc pool tick. Spread evenly.
	melee_queue_distance = 4 //If target is close enough start preparing to hit them if we have rapid_melee enabled

	ranged_message = "fires" //Fluff text for ranged mobs
	ranged_cooldown = 0 //What the current cooldown on ranged attacks is, generally world.time + ranged_cooldown_time
	ranged_cooldown_time = 30 //How long, in deciseconds, the cooldown of ranged attacks is
	ranged_ignores_vision = FALSE //if it'll fire ranged attacks even if it lacks vision on its target, only works with environment smash
	check_friendly_fire = FALSE // Should the ranged mob check for friendlies when shooting
	retreat_distance = null //If our mob runs from players when they're too close, set in tile distance. By default, mobs do not retreat.
	minimum_distance = 1 //Minimum approach distance, so ranged mobs chase targets down, but still keep their distance set in tiles to the target, set higher to make mobs keep distance


//These vars are related to how mobs locate and target
	robust_searching = 0 //By default, mobs have a simple searching method, set this to 1 for the more scrutinous searching (stat_attack, stat_exclusive, etc), should be disabled on most mobs
	vision_range = 9 //How big of an area to search for targets in, a vision of 9 attempts to find targets as soon as they walk into screen view
	aggro_vision_range = 9 //If a mob is aggro, we search in this radius. Defaults to 9 to keep in line with original simple mob aggro radius
	search_objects = 0 //If we want to consider objects when searching around, set this to 1. If you want to search for objects while also ignoring mobs until hurt, set it to 2. To completely ignore mobs, even when attacked, set it to 3
	search_objects_timer_id //Timer for regaining our old search_objects value after being attacked
	search_objects_regain_time = 30 //the delay between being attacked and gaining our old search_objects value back
	wanted_objects = list() //A typecache of objects types that will be checked against to attack, should we have search_objects enabled
	///Mobs ignore mob/living targets with a stat lower than that of stat_attack. If set to DEAD, then they'll include corpses in their targets, if to HARD_CRIT they'll keep attacking until they kill, and so on.
	stat_attack = CONSCIOUS
	stat_exclusive = FALSE //Mobs with this set to TRUE will exclusively attack things defined by stat_attack, stat_attack DEAD means they will only attack corpses
	attack_same = 0 //Set us to 1 to allow us to attack our own faction
	//Use GET_TARGETS_FROM(mob) to access this
	//Attempting to call GET_TARGETS_FROM(mob) when this var is null will just return mob as a base
	datum/weakref/targets_from //all range/attack/etc. calculations should be done from the atom this weakrefs, useful for Vehicles and such.
	attack_all_objects = FALSE //if true, equivalent to having a wanted_objects list containing ALL objects.

	lose_patience_timer_id //id for a timer to call LoseTarget(), used to stop mobs fixating on a target they can't reach
	lose_patience_timeout = 300 //30 seconds by default, so there's no major changes to AI behaviour, beyond actually bailing if stuck forever

///When a target is found, will the mob attempt to charge at it's target?
	charger = FALSE
	///Tracks if the target is actively charging.
	charge_state = FALSE
	///In a charge, how many tiles will the charger travel?
	charge_distance = 3
	///How often can the charging mob actually charge? Effects the cooldown between charges.
	charge_frequency = 6 SECONDS
	///If the mob is charging, how long will it stun it's target on success, and itself on failure?
	knockdown_time = 3 SECONDS
	///Declares a cooldown for potential charges right off the bat.
*/

// Поднимаем разнообразие мобам
GLOBAL_LIST_INIT(onecardinalnorth, NORTH) // Патерн атаки для одного щупальца голиафам
GLOBAL_LIST_INIT(onecardinalsouth, SOUTH)
GLOBAL_LIST_INIT(onecardinaleast, EAST)
GLOBAL_LIST_INIT(onecardinalwest, WEST)

/mob/living/simple_animal/hostile/asteroid
	vision_range = 15
	aggro_vision_range = 15
	see_in_dark = 15
	armor = list("melee" = 10, "bullet" = 10, "laser" = 10, "energy" = 10, "bomb" = 10, "bio" = 10, "rad" = 10, "fire" = 10, "acid" = 10)

/mob/living/simple_animal/hostile/asteroid/goliath
	move_to_delay = 20
	ranged_cooldown_time = 60

/mob/living/simple_animal/hostile/asteroid/goliath/pup

/mob/living/simple_animal/hostile/asteroid/goliath/beast

/mob/living/simple_animal/hostile/asteroid/goliath/beast/ancient

/mob/living/simple_animal/hostile/asteroid/goliath/beast/ancient/crystal

/obj/effect/temp_visual/goliath_tentacle
	difficulty = rand(3, 4)

/obj/effect/temp_visual/goliath_tentacle/crystal

/mob/living/simple_animal/hostile/asteroid/goliath/beast/rockplanet


/mob/living/simple_animal/hostile/asteroid/basilisk
	move_to_delay = 10
	ranged_cooldown_time = 15
	armor = list("melee" = 10, "bullet" = 35, "laser" = 35, "energy" = 35, "bomb" = 50, "bio" = 10, "rad" = 10, "fire" = 10, "acid" = 10)

/mob/living/simple_animal/hostile/asteroid/basilisk/whitesands

/mob/living/simple_animal/hostile/asteroid/basilisk/watcher

/mob/living/simple_animal/hostile/asteroid/basilisk/watcher/magmawing
	armor = list("melee" = 10, "bullet" = 35, "laser" = 35, "energy" = 35, "bomb" = 50, "bio" = 10, "rad" = 10, "fire" = 100, "acid" = 10)

/mob/living/simple_animal/hostile/asteroid/basilisk/watcher/icewing
	armor = list("melee" = 10, "bullet" = 35, "laser" = 35, "energy" = 35, "bomb" = 50, "bio" = 100, "rad" = 10, "fire" = 0, "acid" = 10)

/mob/living/simple_animal/hostile/asteroid/basilisk/watcher/nest

/mob/living/simple_animal/hostile/asteroid/basilisk/watcher/forgotten
	armor = list("melee" = 30, "bullet" = 25, "laser" = 25, "energy" = 25, "bomb" = 50, "bio" = 50, "rad" = 50, "fire" = 50, "acid" = 50)


/mob/living/simple_animal/hostile/asteroid/brimdemon
	armor = list("melee" = 10, "bullet" = 30, "laser" = 30, "energy" = 10, "bomb" = 10, "bio" = 10, "rad" = 10, "fire" = 60, "acid" = 10)


/mob/living/simple_animal/hostile/asteroid/curseblob


/mob/living/simple_animal/hostile/asteroid/goldgrub


/mob/living/simple_animal/hostile/asteroid/gutlunch


/mob/living/simple_animal/hostile/asteroid/hivelord
	move_to_delay = 7

/mob/living/simple_animal/hostile/asteroid/hivelord/legion

/mob/living/simple_animal/hostile/asteroid/hivelord/legion/dwarf

/mob/living/simple_animal/hostile/asteroid/hivelord/legion/nest

/mob/living/simple_animal/hostile/asteroid/hivelord/legion/dwarf/nest

//Legion skull
/mob/living/simple_animal/hostile/asteroid/hivelordbrood/legion
	armor = list("melee" = 0, "bullet" = 70, "laser" = 70, "energy" = 70, "bomb" = 0, "bio" = 100, "rad" = 100, "fire" = 100, "acid" = 0)

/mob/living/simple_animal/hostile/asteroid/hivelordbrood

/mob/living/simple_animal/hostile/asteroid/hivelordbrood/legion/staff

/mob/living/simple_animal/hostile/asteroid/hivelord/legion/advanced

/mob/living/simple_animal/hostile/asteroid/hivelordbrood/legion/advanced

/mob/living/simple_animal/hostile/big_legion

/mob/living/simple_animal/hostile/asteroid/hivelord/legion/snow

// Snow Legion skull
/mob/living/simple_animal/hostile/asteroid/hivelordbrood/legion/snow
	armor = list("melee" = 0, "bullet" = 70, "laser" = 70, "energy" = 70, "bomb" = 0, "bio" = 100, "rad" = 100, "fire" = 0, "acid" = 0)

/mob/living/simple_animal/hostile/asteroid/hivelord/legion/snow/nest

/mob/living/simple_animal/hostile/asteroid/hivelord/legion/crystal

/mob/living/simple_animal/hostile/asteroid/hivelordbrood/legion/crystal


/mob/living/simple_animal/hostile/asteroid/ice_demon
	move_to_delay = 4
	ranged_cooldown_time = 15
	armor = list("melee" = 20, "bullet" = 25, "laser" = 25, "energy" = 25, "bomb" = 50, "bio" = 50, "rad" = 50, "fire" = 10, "acid" = 50)


/mob/living/simple_animal/hostile/asteroid/old_demon
	ranged_cooldown_time = 7
	armor = list("melee" = 35, "bullet" = 35, "laser" = 35, "energy" = 35, "bomb" = 70, "bio" = 70, "rad" = 70, "fire" = 20, "acid" = 70)


/mob/living/simple_animal/hostile/asteroid/ice_whelp
	move_to_delay = 10
	ranged_cooldown_time = 100
	armor = list("melee" = 20, "bullet" = 25, "laser" = 25, "energy" = 25, "bomb" = 50, "bio" = 50, "rad" = 50, "fire" = 10, "acid" = 50)


/mob/living/simple_animal/hostile/asteroid/lobstrosity
	move_to_delay = 5
	armor = list("melee" = 50, "bullet" = 40, "laser" = 40, "energy" = 25, "bomb" = 50, "bio" = 50, "rad" = 50, "fire" = 10, "acid" = 50)

/mob/living/simple_animal/hostile/asteroid/lobstrosity/beach


/mob/living/simple_animal/hostile/asteroid/polarbear
	move_to_delay = 6

/mob/living/simple_animal/hostile/asteroid/polarbear/lesser

/mob/living/simple_animal/hostile/asteroid/polarbear/warrior
	move_to_delay = 4
	armor = list("melee" = 30, "bullet" = 30, "laser" = 30, "energy" = 30, "bomb" = 20, "bio" = 20, "rad" = 10, "fire" = 20, "acid" = 0)


/mob/living/simple_animal/hostile/asteroid/wolf
	move_to_delay = 13
	ranged_cooldown_time = 45
	armor = list("melee" = 10, "bullet" = 10, "laser" = 10, "energy" = 10, "bomb" = 50, "bio" = 50, "rad" = 50, "fire" = 10, "acid" = 50)

/mob/living/simple_animal/hostile/asteroid/wolf/alpha


/mob/living/simple_animal/hostile/retaliate

/mob/living/simple_animal/hostile/retaliate/bat

/mob/living/simple_animal/hostile/retaliate/clown

/mob/living/simple_animal/hostile/retaliate/clown/lube

/mob/living/simple_animal/hostile/retaliate/clown/banana

/mob/living/simple_animal/hostile/retaliate/clown/honkling

/mob/living/simple_animal/hostile/retaliate/clown/fleshclown

/mob/living/simple_animal/hostile/retaliate/clown/longface

/mob/living/simple_animal/hostile/retaliate/clown/clownhulk

/mob/living/simple_animal/hostile/retaliate/clown/clownhulk/chlown

/mob/living/simple_animal/hostile/retaliate/clown/clownhulk/honcmunculus

/mob/living/simple_animal/hostile/retaliate/clown/clownhulk/destroyer

/mob/living/simple_animal/hostile/retaliate/clown/mutant

/mob/living/simple_animal/hostile/retaliate/clown/mutant/blob

/mob/living/simple_animal/hostile/retaliate/frog

/mob/living/simple_animal/hostile/retaliate/ghost

/mob/living/simple_animal/hostile/retaliate/spaceman

/mob/living/simple_animal/hostile/retaliate/nanotrasenpeace

/mob/living/simple_animal/hostile/retaliate/nanotrasenpeace/ranged


// Custom
/mob/living/simple_animal/hostile/abandoned_minebot


/mob/living/simple_animal/hostile/alien

/mob/living/simple_animal/hostile/alien/asteroid

/mob/living/simple_animal/hostile/alien/drone

/mob/living/simple_animal/hostile/alien/sentinel

/mob/living/simple_animal/hostile/alien/queen

/mob/living/simple_animal/hostile/alien/queen/large

/mob/living/simple_animal/hostile/alien/maid


/mob/living/simple_animal/hostile/bear

/mob/living/simple_animal/hostile/bear/Hudson

/mob/living/simple_animal/hostile/bear/snow

/mob/living/simple_animal/hostile/bear/frontier

/mob/living/simple_animal/hostile/bear/cave

/mob/living/simple_animal/hostile/bear/butter


/mob/living/simple_animal/hostile/poison/bees

/mob/living/simple_animal/hostile/poison/bees/queen

/mob/living/simple_animal/hostile/poison/bees/short


/mob/living/simple_animal/hostile/carp

/mob/living/simple_animal/hostile/carp/holocarp

/mob/living/simple_animal/hostile/carp/megacarp

/mob/living/simple_animal/hostile/carp/cayenne


/mob/living/simple_animal/hostile/clown

/mob/living/simple_animal/hostile/clown/lube

/mob/living/simple_animal/hostile/clown/banana

/mob/living/simple_animal/hostile/clown/honkling

/mob/living/simple_animal/hostile/clown/fleshclown

/mob/living/simple_animal/hostile/clown/longface

/mob/living/simple_animal/hostile/clown/clownhulk

/mob/living/simple_animal/hostile/clown/clownhulk/chlown

/mob/living/simple_animal/hostile/clown/clownhulk/honcmunculus

/mob/living/simple_animal/hostile/clown/clownhulk/destroyer

/mob/living/simple_animal/hostile/clown/mutant

/mob/living/simple_animal/hostile/clown/mutant/blob

/mob/living/simple_animal/hostile/clown/stacked


/mob/living/simple_animal/hostile/cockroach

/mob/living/simple_animal/hostile/cockroach/glockroach


/mob/living/simple_animal/hostile/eyeball


/mob/living/simple_animal/hostile/faithless


/mob/living/simple_animal/hostile/poison/giant_spider

/mob/living/simple_animal/hostile/poison/giant_spider/nurse

/mob/living/simple_animal/hostile/poison/giant_spider/nurse/midwife

/mob/living/simple_animal/hostile/poison/giant_spider/hunter

/mob/living/simple_animal/hostile/poison/giant_spider/hunter/viper

/mob/living/simple_animal/hostile/poison/giant_spider/tarantula

/mob/living/simple_animal/hostile/poison/giant_spider/ice

/mob/living/simple_animal/hostile/poison/giant_spider/nurse/ice

/mob/living/simple_animal/hostile/poison/giant_spider/hunter/ice


/mob/living/simple_animal/hostile/retaliate/goose

/mob/living/simple_animal/hostile/retaliate/goose/vomit


/mob/living/simple_animal/hostile/headcrab


/mob/living/simple_animal/hostile/hivebot

/mob/living/simple_animal/hostile/hivebot/range

/mob/living/simple_animal/hostile/hivebot/range/rockplanet

/mob/living/simple_animal/hostile/hivebot/rapid

/mob/living/simple_animal/hostile/hivebot/rapid/rockplanet

/mob/living/simple_animal/hostile/hivebot/strong

/mob/living/simple_animal/hostile/hivebot/strong/rockplanet

/mob/living/simple_animal/hostile/hivebot/mechanic

/mob/living/simple_animal/hostile/hivebot/wasteplanet

/mob/living/simple_animal/hostile/hivebot/wasteplanet/ranged

/mob/living/simple_animal/hostile/hivebot/wasteplanet/ranged/rapid

/mob/living/simple_animal/hostile/hivebot/wasteplanet/strong


/mob/living/simple_animal/hostile/illusion

/mob/living/simple_animal/hostile/illusion/escape


/mob/living/simple_animal/hostile/killertomato


/mob/living/simple_animal/hostile/human/syndicate/mecha_pilot

/mob/living/simple_animal/hostile/human/syndicate/mecha_pilot/no_mech

/mob/living/simple_animal/hostile/human/syndicate/mecha_pilot/nanotrasen

/mob/living/simple_animal/hostile/human/syndicate/mecha_pilot/no_mech/nanotrasen


/mob/living/simple_animal/hostile/mimic

/mob/living/simple_animal/hostile/mimic/crate

/mob/living/simple_animal/hostile/mimic/copy

/mob/living/simple_animal/hostile/mimic/copy/machine

/mob/living/simple_animal/hostile/mimic/copy/ranged

/mob/living/simple_animal/hostile/mimic/xenobio


/mob/living/simple_animal/hostile/mushroom


/mob/living/simple_animal/hostile/netherworld

/mob/living/simple_animal/hostile/netherworld/asteroid

/mob/living/simple_animal/hostile/netherworld/migo

/mob/living/simple_animal/hostile/netherworld/migo/asteroid

/mob/living/simple_animal/hostile/netherworld/blankbody


/mob/living/simple_animal/hostile/regalrat


/mob/living/simple_animal/hostile/rat


/mob/living/simple_animal/hostile/space_dragon


/mob/living/simple_animal/hostile/statue


/mob/living/simple_animal/hostile/tree

/mob/living/simple_animal/hostile/tree/festivus


/mob/living/simple_animal/hostile/venus_human_trap


/mob/living/simple_animal/hostile/asteroid/fugu


/mob/living/simple_animal/hostile/construct

/mob/living/simple_animal/hostile/construct/juggernaut

/mob/living/simple_animal/hostile/construct/juggernaut/hostile

/mob/living/simple_animal/hostile/construct/juggernaut/angelic

/mob/living/simple_animal/hostile/construct/wraith

/mob/living/simple_animal/hostile/construct/wraith/hostile

/mob/living/simple_animal/hostile/construct/wraith/angelic

/mob/living/simple_animal/hostile/construct/artificer

/mob/living/simple_animal/hostile/construct/artificer/hostile

/mob/living/simple_animal/hostile/construct/artificer/angelic

/mob/living/simple_animal/hostile/construct/artificer/noncult

/mob/living/simple_animal/hostile/construct/harvester


/mob/living/simple_animal/hostile/asteroid/elite

/mob/living/simple_animal/hostile/asteroid/elite/broodmother

/mob/living/simple_animal/hostile/asteroid/elite/broodmother_child

/mob/living/simple_animal/hostile/asteroid/elite/broodmother_child/rockplanet

/mob/living/simple_animal/hostile/asteroid/elite/herald

/mob/living/simple_animal/hostile/asteroid/elite/herald/mirror

/mob/living/simple_animal/hostile/asteroid/elite/legionnaire

/mob/living/simple_animal/hostile/asteroid/elite/legionnairehead

/mob/living/simple_animal/hostile/asteroid/elite/pandora

/mob/living/simple_animal/hostile/asteroid/elite/pandora/dungeon


/mob/living/simple_animal/hostile/gorilla
	armor = list("melee" = 50, "bullet" = 50, "laser" = 10, "energy" = 10, "bomb" = 50, "bio" = 50, "rad" = 0, "fire" = 20, "acid" = 10)


/mob/living/simple_animal/hostile/human

/mob/living/simple_animal/hostile/human/cat_butcherer

/mob/living/simple_animal/hostile/human/frontier

/mob/living/simple_animal/hostile/human/frontier/internals

/mob/living/simple_animal/hostile/human/frontier/ranged

/mob/living/simple_animal/hostile/human/frontier/ranged/internals

/mob/living/simple_animal/hostile/human/frontier/ranged/internals/neutered

/mob/living/simple_animal/hostile/human/frontier/ranged/neutered

/mob/living/simple_animal/hostile/human/frontier/ranged/mosin

/mob/living/simple_animal/hostile/human/frontier/ranged/mosin/internals

/mob/living/simple_animal/hostile/human/frontier/ranged/mosin/internals/neutered

/mob/living/simple_animal/hostile/human/frontier/ranged/mosin/neutered

/mob/living/simple_animal/hostile/human/frontier/ranged/trooper

/mob/living/simple_animal/hostile/human/frontier/ranged/trooper/internals

/mob/living/simple_animal/hostile/human/frontier/ranged/trooper/internals/neutered

/mob/living/simple_animal/hostile/human/frontier/ranged/trooper/neutered

/mob/living/simple_animal/hostile/human/frontier/ranged/trooper/skm

/mob/living/simple_animal/hostile/human/frontier/ranged/trooper/internals

/mob/living/simple_animal/hostile/human/frontier/ranged/trooper/internals/neutered

/mob/living/simple_animal/hostile/human/frontier/ranged/trooper/skm/neutured

/mob/living/simple_animal/hostile/human/frontier/ranged/trooper/rifle

/mob/living/simple_animal/hostile/human/frontier/ranged/trooper/rifle/internals

/mob/living/simple_animal/hostile/human/frontier/ranged/trooper/rifle/internals/neutered

/mob/living/simple_animal/hostile/human/frontier/ranged/trooper/rifle/neutered

/mob/living/simple_animal/hostile/human/frontier/ranged/trooper/heavy

/mob/living/simple_animal/hostile/human/frontier/ranged/trooper/heavy/internals

/mob/living/simple_animal/hostile/human/frontier/ranged/trooper/heavy/neutered

/mob/living/simple_animal/hostile/human/frontier/ranged/officer

/mob/living/simple_animal/hostile/human/frontier/ranged/officer/internals

/mob/living/simple_animal/hostile/human/frontier/ranged/officer/internals/neutered

/mob/living/simple_animal/hostile/human/nanotrasen

/mob/living/simple_animal/hostile/human/nanotrasen/screaming

/mob/living/simple_animal/hostile/human/nanotrasen/ranged

/mob/living/simple_animal/hostile/human/nanotrasen/ranged/smg

/mob/living/simple_animal/hostile/human/nanotrasen/ranged/assault

/mob/living/simple_animal/hostile/human/nanotrasen/elite

/mob/living/simple_animal/hostile/human/pirate

/mob/living/simple_animal/hostile/human/pirate/melee

/mob/living/simple_animal/hostile/human/pirate/melee/space

/mob/living/simple_animal/hostile/human/pirate/ranged

/mob/living/simple_animal/hostile/human/pirate/ranged/space

/mob/living/simple_animal/hostile/human/skeleton

/mob/living/simple_animal/hostile/human/skeleton/templar

/mob/living/simple_animal/hostile/human/skeleton/ice

/mob/living/simple_animal/hostile/human/skeleton/plasmaminer

/mob/living/simple_animal/hostile/human/skeleton/plasmaminer/jackhammer

/mob/living/simple_animal/hostile/human/hermit

/mob/living/simple_animal/hostile/human/hermit/survivor

/mob/living/simple_animal/hostile/human/hermit/ranged

/mob/living/simple_animal/hostile/human/hermit/ranged/hunter

/mob/living/simple_animal/hostile/human/hermit/ranged/gunslinger

/mob/living/simple_animal/hostile/human/syndicate

/mob/living/simple_animal/hostile/human/syndicate/space

/mob/living/simple_animal/hostile/human/syndicate/space/stormtrooper

/mob/living/simple_animal/hostile/human/syndicate/melee

/mob/living/simple_animal/hostile/human/syndicate/melee/space

/mob/living/simple_animal/hostile/human/syndicate/melee/space/stormtrooper

/mob/living/simple_animal/hostile/human/syndicate/melee/sword

/mob/living/simple_animal/hostile/human/syndicate/melee/sword/space

/mob/living/simple_animal/hostile/human/syndicate/melee/sword/space/stormtrooper

/mob/living/simple_animal/hostile/human/syndicate/ranged

/mob/living/simple_animal/hostile/human/syndicate/ranged/infiltrator

/mob/living/simple_animal/hostile/human/syndicate/ranged/space

/mob/living/simple_animal/hostile/human/syndicate/ranged/space/stormtrooper

/mob/living/simple_animal/hostile/human/syndicate/ranged/smg

/mob/living/simple_animal/hostile/human/syndicate/ranged/smg/space

/mob/living/simple_animal/hostile/human/syndicate/ranged/smg/space/stormtrooper

/mob/living/simple_animal/hostile/human/syndicate/ranged/shotgun

/mob/living/simple_animal/hostile/human/syndicate/ranged/shotgun/space

/mob/living/simple_animal/hostile/human/syndicate/ranged/shotgun/space/stormtrooper

/mob/living/simple_animal/hostile/human/syndicate/civilian

/mob/living/simple_animal/hostile/viscerator

/mob/living/simple_animal/hostile/human/zombie

/mob/living/simple_animal/hostile/human/zombie/kudzu

/mob/living/simple_animal/hostile/jungle

/mob/living/simple_animal/hostile/jungle/leaper

/mob/living/simple_animal/hostile/jungle/mega_arachnid

/mob/living/simple_animal/hostile/jungle/mook

/mob/living/simple_animal/hostile/jungle/seedling


/mob/living/simple_animal/hostile/boss


/mob/living/simple_animal/hostile/megafauna
	vision_range = 20
	aggro_vision_range = 20
	see_in_dark = 20
	armor = list("melee" = 20, "bullet" = 20, "laser" = 20, "energy" = 100, "bomb" = 50, "bio" = 50, "rad" = 50, "fire" = 100, "acid" = 20)

/mob/living/simple_animal/hostile/megafauna/blood_drunk_miner
	health = 1750
	maxHealth = 1750
	speed = 1
	move_to_delay = 2
	armor = list("melee" = 10, "bullet" = 20, "laser" = 20, "energy" = 20, "bomb" = 50, "bio" = 50, "rad" = 50, "fire" = 20, "acid" = 20)
	crusher_loot = crusher_loot = list(/obj/item/melee/transforming/cleaving_saw,
										/obj/item/gun/energy/kinetic_accelerator,
										/obj/item/crusher_trophy/miner_eye,
										/obj/item/disk/design_disk/modkit_disc/mob_and_turf_aoe,
										/obj/item/disk/design_disk/modkit_disc/bounty,
										/obj/item/disk/design_disk/modkit_disc/resonator_blast,
										/obj/item/disk/design_disk/modkit_disc/rapid_repeater)
	loot = list(/obj/item/melee/transforming/cleaving_saw,
				/obj/item/gun/energy/kinetic_accelerator,
				/obj/item/disk/design_disk/modkit_disc/mob_and_turf_aoe,
				/obj/item/disk/design_disk/modkit_disc/bounty,
				/obj/item/disk/design_disk/modkit_disc/resonator_blast,
				/obj/item/disk/design_disk/modkit_disc/rapid_repeater)

/mob/living/simple_animal/hostile/megafauna/blood_drunk_miner/guidance

/mob/living/simple_animal/hostile/megafauna/blood_drunk_miner/doom
	ranged_cooldown_time = 8
	dash_cooldown = 8

/mob/living/simple_animal/hostile/megafauna/bubblegum
	armor = list("melee" = 20, "bullet" = 20, "laser" = 20, "energy" = 100, "bomb" = 50, "bio" = 50, "rad" = 50, "fire" = 100, "acid" = 20)
	armour_penetration = 75
	speed = 1
	move_to_delay = 10
	crusher_loot = list(/obj/structure/closet/crate/necropolis/bubblegum/crusher)
	loot = list(/obj/structure/closet/crate/necropolis/bubblegum)

/mob/living/simple_animal/hostile/megafauna/bubblegum/hallucination
	crusher_loot = null

/mob/living/simple_animal/hostile/megafauna/claw
	crusher_loot = list(/obj/item/card/id/ert/deathsquad,
						/obj/item/documents/nanotrasen)

/mob/living/simple_animal/hostile/megafauna/claw/phase2 //75% of the health this thing has is here
	crusher_loot = list(/obj/effect/spawner/clawloot)
	loot = list(/obj/effect/spawner/clawloot/crusher)

/mob/living/simple_animal/hostile/megafauna/colossus
	armor = list("melee" = 0, "bullet" = 30, "laser" = 30, "energy" = 100, "bomb" = 50, "bio" = 50, "rad" = 50, "fire" = 100, "acid" = 20)
	speed = 1
	crusher_loot = list(/obj/structure/closet/crate/necropolis/colossus/crusher)
	loot = list(/obj/structure/closet/crate/necropolis/colossus)

/mob/living/simple_animal/hostile/lightgeist

/mob/living/simple_animal/hostile/megafauna/cult_templar

/mob/living/simple_animal/hostile/cult_demon

/mob/living/simple_animal/hostile/cult_demon/greater

/mob/living/simple_animal/hostile/megafauna/demonic_frost_miner
	crusher_loot = list(/obj/effect/decal/remains/plasma,
						/obj/item/crusher_trophy/ice_block_talisman,
						/obj/item/disk/design_disk/modkit_disc/mob_and_turf_aoe,
						/obj/item/disk/design_disk/modkit_disc/bounty,
						/obj/item/disk/design_disk/modkit_disc/resonator_blast,
						/obj/item/disk/design_disk/modkit_disc/rapid_repeater)
	loot = list(/obj/effect/decal/remains/plasma,
				/obj/item/disk/design_disk/modkit_disc/mob_and_turf_aoe,
				/obj/item/disk/design_disk/modkit_disc/bounty,
				/obj/item/disk/design_disk/modkit_disc/resonator_blast,
				/obj/item/disk/design_disk/modkit_disc/rapid_repeater)


/mob/living/simple_animal/hostile/megafauna/dragon
	armor = list("melee" = 30, "bullet" = 30, "laser" = 30, "energy" = 100, "bomb" = 50, "bio" = 50, "rad" = 90, "fire" = 100, "acid" = 100)
	speed = 1
	crusher_loot = list(/obj/structure/closet/crate/necropolis/dragon/crusher)
	loot = list(/obj/structure/closet/crate/necropolis/dragon)


/mob/living/simple_animal/hostile/megafauna/dragon/lesser
	maxHealth = 800
	health = 800
	crusher_loot = list()

/mob/living/simple_animal/hostile/megafauna/dragon/icemoon // Отсутствует

/mob/living/simple_animal/hostile/megafauna/hierophant
	armour_penetration = 75
	melee_damage_lower = 25
	melee_damage_upper = 50
	speed = 1
	move_to_delay = 11
	loot = list(/obj/item/hierophant_club)
	crusher_loot = list(/obj/item/hierophant_club, /obj/item/crusher_trophy/vortex_talisman)

/mob/living/simple_animal/hostile/megafauna/legion
	speed = 1
	move_to_delay = 2

/mob/living/simple_animal/hostile/megafauna/swarmer_swarm_beacon

/mob/living/simple_animal/hostile/megafauna/wendigo
	loot = list(/obj/item/wendigo_blood)
	crusher_loot = list(/obj/item/wendigo_blood, /obj/item/crusher_trophy/demon_claws)


/mob/living/simple_animal

/mob/living/simple_animal/parrot

/mob/living/simple_animal/parrot/Polly

/mob/living/simple_animal/slime

/mob/living/simple_animal/slime/pet

/mob/living/simple_animal/shade
