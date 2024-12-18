/obj/machinery/plantgenes/Topic(href, list/href_list)
	if(..())
		return
	usr.set_machine(src)

	if(href_list["eject_seed"] && !operation)
		var/obj/item/I = usr.get_active_held_item()
		if(istype(I, /obj/item/seeds))
			if(!usr.transferItemToLoc(I, src))
				return
			eject_seed()
			insert_seed(I)
			to_chat(usr, "<span class='notice'>You add [I] to the machine.</span>")
		else
			eject_seed()
	else if(href_list["eject_disk"] && !operation)
		var/obj/item/I = usr.get_active_held_item()
		if(istype(I, /obj/item/disk/plantgene))
			if(!usr.transferItemToLoc(I, src))
				return
			eject_disk()
			disk = I
			to_chat(usr, "<span class='notice'>You add [I] to the machine.</span>")
		else
			eject_disk()
	else if(href_list["op"] == "insert" && disk && disk.gene && seed)
		if(!operation) // Wait for confirmation
			operation = "insert"
		else
			if(!istype(disk.gene, /datum/plant_gene/core) && disk.gene.can_add(seed))
				seed.genes += disk.gene.Copy()
				if(istype(disk.gene, /datum/plant_gene/reagent))
					seed.reagents_from_genes()
			update_genes()
			repaint_seed()
			operation = ""
			target = null

	else if(href_list["gene"] && seed)
		var/datum/plant_gene/G = seed.get_gene(href_list["gene"])
		if(!G || !href_list["op"] || !(href_list["op"] in list("remove", "extract", "replace")))
			interact(usr)
			return

		if(!operation || target != G) // Wait for confirmation
			target = G
			operation = href_list["op"]

		else if(operation == href_list["op"] && target == G)
			switch(href_list["op"])
				if("remove")
					if(!istype(G, /datum/plant_gene/core))
						seed.genes -= G
						if(istype(G, /datum/plant_gene/reagent))
							seed.reagents_from_genes()
					repaint_seed()
				if("extract")
					if(disk && !disk.read_only)
						disk.gene = G
						if(istype(G, /datum/plant_gene/core))
							var/datum/plant_gene/core/gene = G
							if(istype(G, /datum/plant_gene/core/potency))
								gene.value = min(gene.value, max_potency)
							else if(istype(G, /datum/plant_gene/core/lifespan))
								gene.value = min(gene.value, max_endurance) //INTENDED
							else if(istype(G, /datum/plant_gene/core/endurance))
								gene.value = min(gene.value, max_endurance)
							else if(istype(G, /datum/plant_gene/core/production))
								gene.value = max(gene.value, min_production)
							else if(istype(G, /datum/plant_gene/core/yield))
								gene.value = min(gene.value, max_yield)
							else if(istype(G, /datum/plant_gene/core/weed_rate))
								gene.value = max(gene.value, min_wrate)
							else if(istype(G, /datum/plant_gene/core/weed_chance))
								gene.value = max(gene.value, min_wchance)
						disk.update_disk_name()
						del(seed)
						seed = null
						update_appearance()
				if("replace")
					if(disk && disk.gene && istype(disk.gene, G.type) && istype(G, /datum/plant_gene/core))
						seed.genes -= G
						var/datum/plant_gene/core/C = disk.gene.Copy()
						seed.genes += C
						C.apply_stat(seed)
						repaint_seed()
				if("insert")
					if(disk && disk.gene && !istype(disk.gene, /datum/plant_gene/core) && disk.gene.can_add(seed))
						seed.genes += disk.gene.Copy()
						if(istype(disk.gene, /datum/plant_gene/reagent))
							seed.reagents_from_genes()
						repaint_seed()


			update_genes()
			operation = ""
			target = null
	else if(href_list["abort"])
		operation = ""
		target = null

	interact(usr)

