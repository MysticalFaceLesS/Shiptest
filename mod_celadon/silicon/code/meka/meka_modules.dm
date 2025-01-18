/obj/item/robot_module/meka
	name = "Default"
	icon = 'icons/obj/module.dmi'
	icon_state = "std_mod"
	w_class = WEIGHT_CLASS_GIGANTIC
	item_state = "electronic"
	flags_1 = CONDUCT_1
	cyborg_icon_override = 'mod_celadon/_storge_icons/icons/mekaborg.dmi'
	hasrest = TRUE

/obj/item/robot_module/meka/medical
	name = "Meka Medical"
	basic_modules = list(
		/obj/item/assembly/flash/cyborg,
		/obj/item/healthanalyzer,
		/obj/item/reagent_containers/borghypo,
		/obj/item/borg/apparatus/beaker,
		/obj/item/reagent_containers/dropper,
		/obj/item/reagent_containers/syringe,
		/obj/item/retractor,
		/obj/item/hemostat,
		/obj/item/cautery,
		/obj/item/surgicaldrill,
		/obj/item/scalpel,
		/obj/item/circular_saw,
		/obj/item/extinguisher/mini,
		/obj/item/roller/robo,
		/obj/item/borg/cyborghug/medical,
		/obj/item/stack/medical/gauze/cyborg,
		/obj/item/organ_storage,
		/obj/item/borg/lollipop,
		/obj/item/extinguisher/mini,
		/obj/item/gps/cyborg,
		/obj/item/crowbar/cyborg,
		/obj/item/weldingtool/mini)
	emag_modules = list(/obj/item/reagent_containers/borghypo/hacked)
	cyborg_base_icon = "mmekamed"
	hat_offset = 3

/obj/item/robot_module/meka/medical/be_transformed_to(obj/item/robot_module/old_module)
	var/mob/living/silicon/robot/R = loc
	var/static/list/meka_medical_icons
	if(!meka_medical_icons)
		meka_medical_icons = list(
		"Niko" = image(icon = 'mod_celadon/_storge_icons/icons/mekaborg.dmi', icon_state = "mmekamed"),
		"Nika" = image(icon = 'mod_celadon/_storge_icons/icons/mekaborg.dmi', icon_state = "fmekamed")
		)
		meka_medical_icons = sortList(meka_medical_icons)
	var/meka_medical_robot_icon = show_radial_menu(R, R , meka_medical_icons, custom_check = CALLBACK(src, PROC_REF(check_menu), R), radius = 42, require_near = TRUE)
	switch(meka_medical_robot_icon)
		if("Niko")
			cyborg_base_icon = "mmekamed"
			cyborg_icon_override = 'mod_celadon/_storge_icons/icons/mekaborg.dmi'
			hat_offset = 3
			special_light_key = "mmekamed"
		if("Nika")
			cyborg_base_icon = "fmekamed"
			cyborg_icon_override = 'mod_celadon/_storge_icons/icons/mekaborg.dmi'
			hat_offset = 3
			special_light_key = "fmekamed"
		else
			return FALSE
	return ..()

/obj/item/robot_module/meka/engineering
	name = "Meka Engineering"
	basic_modules = list(
		/obj/item/assembly/flash/cyborg,
		/obj/item/borg/sight/meson,
		/obj/item/construction/rcd/borg,
		/obj/item/pipe_dispenser,
		/obj/item/extinguisher,
		/obj/item/weldingtool/largetank/cyborg,
		/obj/item/screwdriver/cyborg,
		/obj/item/wrench/cyborg,
		/obj/item/crowbar/cyborg,
		/obj/item/wirecutters/cyborg,
		/obj/item/multitool/cyborg,
		/obj/item/t_scanner,
		/obj/item/analyzer,
		/obj/item/geiger_counter/cyborg,
		/obj/item/assembly/signaler/cyborg,
		/obj/item/areaeditor/shuttle/cyborg,
		/obj/item/electroadaptive_pseudocircuit,
		/obj/item/stack/sheet/metal/cyborg,
		/obj/item/stack/sheet/glass/cyborg,
		/obj/item/stack/sheet/rglass/cyborg,
		/obj/item/stack/rods/cyborg,
		/obj/item/stack/tile/plasteel/cyborg,
		/obj/item/stack/cable_coil/cyborg,
		/obj/item/gps/cyborg)
	emag_modules = list(/obj/item/borg/stun)
	cyborg_base_icon = "mekaeng"
	moduleselect_icon = "engineer"
	magpulsing = TRUE
	hat_offset = -4

/obj/item/robot_module/meka/engineering/be_transformed_to(obj/item/robot_module/old_module)
	var/mob/living/silicon/robot/R = loc
	var/static/list/meka_engineering_icons
	if(!meka_engineering_icons)
		meka_engineering_icons = list(
		"Niko" = image(icon = 'mod_celadon/_storge_icons/icons/mekaborg.dmi', icon_state = "mmekaeng"),
		"Nika" = image(icon = 'mod_celadon/_storge_icons/icons/mekaborg.dmi', icon_state = "fmekaeng")
		)
		meka_engineering_icons = sortList(meka_engineering_icons)
	var/meka_engineering_robot_icon = show_radial_menu(R, R , meka_engineering_icons, custom_check = CALLBACK(src, PROC_REF(check_menu), R), radius = 42, require_near = TRUE)
	switch(meka_engineering_robot_icon)
		if("Niko")
			cyborg_base_icon = "mmekaeng"
			cyborg_icon_override = 'mod_celadon/_storge_icons/icons/mekaborg.dmi'
			hat_offset = 3
			special_light_key = "mmekaeng"
		if("Nika")
			cyborg_base_icon = "fmekaeng"
			cyborg_icon_override = 'mod_celadon/_storge_icons/icons/mekaborg.dmi'
			hat_offset = 3
			special_light_key = "fmekaeng"
		else
			return FALSE
	return ..()


/obj/item/robot_module/meka/security
	name = "Meka Security"
	basic_modules = list(
		/obj/item/assembly/flash/cyborg,
		/obj/item/restraints/handcuffs/cable/zipties,
		/obj/item/melee/baton/loaded,
		/obj/item/gun/energy/disabler/cyborg,
		/obj/item/extinguisher/mini,
		/obj/item/gps/cyborg,
		/obj/item/crowbar/cyborg,
		/obj/item/weldingtool/mini)
	emag_modules = list(/obj/item/gun/energy/laser/cyborg)
	cyborg_base_icon = "mekasec"
	moduleselect_icon = "security"
	can_be_pushed = FALSE
	hat_offset = 3

/obj/item/robot_module/meka/security/be_transformed_to(obj/item/robot_module/old_module)
	var/mob/living/silicon/robot/R = loc
	var/static/list/meka_security_icons
	if(!meka_security_icons)
		meka_security_icons = list(
		"Niko" = image(icon = 'mod_celadon/_storge_icons/icons/mekaborg.dmi', icon_state = "mmekasec"),
		"Nika" = image(icon = 'mod_celadon/_storge_icons/icons/mekaborg.dmi', icon_state = "fmekasec")
		)
		meka_security_icons = sortList(meka_security_icons)
	var/meka_security_robot_icon = show_radial_menu(R, R , meka_security_icons, custom_check = CALLBACK(src, PROC_REF(check_menu), R), radius = 42, require_near = TRUE)
	switch(meka_security_robot_icon)
		if("Niko")
			cyborg_base_icon = "mmekasec"
			cyborg_icon_override = 'mod_celadon/_storge_icons/icons/mekaborg.dmi'
			hat_offset = 3
			special_light_key = "mmekasec"
		if("Nika")
			cyborg_base_icon = "fmekasec"
			cyborg_icon_override = 'mod_celadon/_storge_icons/icons/mekaborg.dmi'
			hat_offset = 3
			special_light_key = "fmekasec"
		else
			return FALSE
	return ..()

/obj/item/robot_module/meka/peace
	name = "Meka Peacekeeper"
	basic_modules = list(
		/obj/item/assembly/flash/cyborg,
		/obj/item/rsf/cookiesynth,
		/obj/item/harmalarm,
		/obj/item/reagent_containers/borghypo/peace,
		/obj/item/holosign_creator/cyborg,
		/obj/item/borg/cyborghug/peacekeeper,
		/obj/item/extinguisher,
		/obj/item/borg/projectile_dampen,
		/obj/item/extinguisher/mini,
		/obj/item/gps/cyborg,
		/obj/item/crowbar/cyborg,
		/obj/item/weldingtool/mini)
	emag_modules = list(/obj/item/reagent_containers/borghypo/peace/hacked)
	cyborg_base_icon = "mekapeace"
	moduleselect_icon = "standard"
	can_be_pushed = FALSE
	hat_offset = -2

/obj/item/robot_module/meka/peace/be_transformed_to(obj/item/robot_module/old_module)
	var/mob/living/silicon/robot/R = loc
	var/static/list/meka_peace_icons
	if(!meka_peace_icons)
		meka_peace_icons = list(
		"Niko" = image(icon = 'mod_celadon/_storge_icons/icons/mekaborg.dmi', icon_state = "mmekapeace"),
		"Nika" = image(icon = 'mod_celadon/_storge_icons/icons/mekaborg.dmi', icon_state = "fmekapeace")
		)
		meka_peace_icons = sortList(meka_peace_icons)
	var/meka_peace_robot_icon = show_radial_menu(R, R , meka_peace_icons, custom_check = CALLBACK(src, PROC_REF(check_menu), R), radius = 42, require_near = TRUE)
	switch(meka_peace_robot_icon)
		if("Niko")
			cyborg_base_icon = "mmekapeace"
			cyborg_icon_override = 'mod_celadon/_storge_icons/icons/mekaborg.dmi'
			hat_offset = 3
			special_light_key = "mmekapeace"
		if("Nika")
			cyborg_base_icon = "fmekapeace"
			cyborg_icon_override = 'mod_celadon/_storge_icons/icons/mekaborg.dmi'
			hat_offset = 3
			special_light_key = "fmekapeace"
		else
			return FALSE
	return ..()

/obj/item/robot_module/meka/janitor
	name = "Meka Janitor"
	basic_modules = list(
		/obj/item/assembly/flash/cyborg,
		/obj/item/screwdriver/cyborg,
		/obj/item/crowbar/cyborg,
		/obj/item/stack/tile/plasteel/cyborg,
		/obj/item/soap/nanotrasen,
		/obj/item/storage/bag/trash/cyborg,
		/obj/item/melee/flyswatter,
		/obj/item/extinguisher/mini,
		/obj/item/mop/cyborg,
		/obj/item/reagent_containers/glass/bucket,
		/obj/item/paint/paint_remover,
		/obj/item/lightreplacer/cyborg,
		/obj/item/holosign_creator/janibarrier,
		/obj/item/reagent_containers/spray/cyborg_drying,
		/obj/item/gps/cyborg,
		/obj/item/weldingtool/mini)
	emag_modules = list(/obj/item/reagent_containers/spray/cyborg_lube)
	cyborg_base_icon = "mekajani"
	moduleselect_icon = "janitor"
	hat_offset = -5

/obj/item/robot_module/meka/janitor/be_transformed_to(obj/item/robot_module/old_module)
	var/mob/living/silicon/robot/R = loc
	var/static/list/meka_janitor_icons
	if(!meka_janitor_icons)
		meka_janitor_icons = list(
		"Niko" = image(icon = 'mod_celadon/_storge_icons/icons/mekaborg.dmi', icon_state = "mmekajani"),
		"Nika" = image(icon = 'mod_celadon/_storge_icons/icons/mekaborg.dmi', icon_state = "fmekajani")
		)
		meka_janitor_icons = sortList(meka_janitor_icons)
	var/meka_janitor_robot_icon = show_radial_menu(R, R , meka_janitor_icons, custom_check = CALLBACK(src, PROC_REF(check_menu), R), radius = 42, require_near = TRUE)
	switch(meka_janitor_robot_icon)
		if("Niko")
			cyborg_base_icon = "mmekajani"
			cyborg_icon_override = 'mod_celadon/_storge_icons/icons/mekaborg.dmi'
			hat_offset = 3
			special_light_key = "mmekajani"
		if("Nika")
			cyborg_base_icon = "fmekajani"
			cyborg_icon_override = 'mod_celadon/_storge_icons/icons/mekaborg.dmi'
			hat_offset = 3
			special_light_key = "fmekajani"
		else
			return FALSE
	return ..()

/obj/item/robot_module/meka/miner
	name = "Meka Miner"
	basic_modules = list(
		/obj/item/assembly/flash/cyborg,
		/obj/item/borg/sight/meson,
		/obj/item/storage/bag/ore/cyborg,
		/obj/item/pickaxe/drill/cyborg,
		/obj/item/shovel,
		/obj/item/crowbar/cyborg,
		/obj/item/weldingtool/mini,
		/obj/item/extinguisher/mini,
		/obj/item/storage/bag/sheetsnatcher/borg,
		/obj/item/gun/energy/kinetic_accelerator/cyborg,
		/obj/item/gps/cyborg,
		/obj/item/stack/marker_beacon)
	emag_modules = list(/obj/item/borg/stun)
	cyborg_base_icon = "mekamine"
	moduleselect_icon = "miner"
	hat_offset = 0
	var/obj/item/t_scanner/adv_mining_scanner/cyborg/mining_scanner

/obj/item/robot_module/mining/be_transformed_to(obj/item/robot_module/old_module)
	var/mob/living/silicon/robot/R = loc
	var/static/list/meka_mining_icons
	if(meka_mining_icons)
		meka_mining_icons = list(
		"Niko" = image(icon = 'mod_celadon/_storge_icons/icons/mekaborg.dmi', icon_state = "mmekamine"),
		"Nika" = image(icon = 'mod_celadon/_storge_icons/icons/mekaborg.dmi', icon_state = "fmekamine")
		)
		meka_mining_icons = sortList(meka_mining_icons)
	var/meka_mining_borg_icon = show_radial_menu(R, R , meka_mining_icons, custom_check = CALLBACK(src, PROC_REF(check_menu), R), radius = 42, require_near = TRUE)
	switch(meka_mining_borg_icon)
		if("Niko")
			cyborg_base_icon = "mmekamine"
			cyborg_icon_override = 'mod_celadon/_storge_icons/icons/mekaborg.dmi'
			hat_offset = 3
			special_light_key = "mmekamine"
		if("Nika")
			cyborg_base_icon = "fmekamed"
			cyborg_icon_override = 'mod_celadon/_storge_icons/icons/mekaborg.dmi'
			hat_offset = 3
			special_light_key = "fmekamine"
		else
			return FALSE
	return ..()
