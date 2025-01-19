//signs
/obj/structure/sign/nanotrasen
	name = "\improper Nanotrasen logo sign"
	sign_change_name = "Corporate Logo - Nanotrasen"
	desc = "A sign with the Nanotrasen logo on it. Glory to Nanotrasen!"
	icon = 'mod_celadon/_storge_icons/icons/nanotrasen/nanotrasen_logos.dmi'
	icon_state = "nanotrasen"
	is_editable = TRUE

/obj/structure/sign/nanotrasen/deforest
	name = "\improper DeForest Medical logo sign"
	sign_change_name = "Corporate Logo - DeForest Medical"
	desc = "A sign with the DeForest Medical cross on it."
	icon_state = "deforest"
	is_editable = TRUE

/obj/structure/sign/nanotrasen/nakamura
	name = "\improper Nakamura Engineering logo sign"
	sign_change_name = "Corporate Logo - Nakamura Engineering"
	desc = "A sign with the Nakamura Engineering hieroglyphs on it."
	icon_state = "nakamura"
	is_editable = TRUE

//clothing reflavor
//nakamura
/obj/item/clothing/under/nanotrasen/engineering/director
	desc = "Thick black overalls over a blue office shirt. Unlike most managerial staff, Nakamura Engineering directors still need to get hands-on with their work."

/obj/item/clothing/under/nanotrasen/engineering
	desc = "A dirty grey jumpsuit with reflective blue flashes on the limbs and a wrench icon on the back. A Nakamura Engineering logo is stitched into the collar."

/obj/item/clothing/under/nanotrasen/engineering/atmos
	desc = "A thick grey jumpsuit with black stripes and an 'O2' icon on the back. A Nakamura Engineering logo is stitched into the collar."

//deforest
/obj/item/clothing/under/nanotrasen/medical/director
	desc = "A neat blue shirt with white arm bands and comfortable black slacks. DeForest Medical logos are finely stitched into the collar and cuffs. It smells like burnt coffee and antiseptic."

/obj/item/clothing/under/nanotrasen/medical/paramedic
	desc = "Tough synthetic pants and a white uniform shirt, designed to handle all manner of scrapes and splashes in the line of duty. The tag identifies this as property of DeForest Medical."

/obj/item/clothing/under/nanotrasen/medical
	desc = "A crisp white shirt with blue stripes on the arms, identifying the owner as trained DeForest medical staff. The faint smell of antiseptic won't wash out."

//desk flag
/obj/item/desk_flag/nanotrasen
	name = "nanotrasen desk flag"
	desc = "A blue flag with a small Nanotrasen Corporation logo on it."
	icon = 'mod_celadon/_storge_icons/icons/obj/deskflags.dmi'
	icon_state = "nanotrasen"

//bureaucracy
/obj/item/folder/nanotrasen
	desc = "A dark-blue folder with a Nanotrasen logo."
	icon = 'mod_celadon/_storge_icons/icons/obj/bureaucracy.dmi'
	icon_state = "folder_nanotrasen"

/obj/item/folder/documents/nanotrasen
	icon = 'mod_celadon/_storge_icons/icons/obj/bureaucracy.dmi'
	icon_state = "folder_nanotrasen"
	name = "folder- 'TOP SECRET'"
	desc = "A folder stamped \"Top Secret - Property of Nanotrasen Corporation. Unauthorized distribution is punishable by death.\""

//posters
/obj/item/poster/random_nanotrasen
	name = "random official Nanotrasen poster"
	poster_type = /obj/structure/sign/poster/nanotrasen/random
	icon = 'mod_celadon/_storge_icons/icons/nanotrasen/posters.dmi'
	icon_state = "rolled_nt"

/obj/structure/sign/poster/nanotrasen //будет использовано в будущем когда оффы удалят НТ
	poster_item_name = "motivational poster"
	poster_item_desc = "An official Nanotrasen-issued poster to foster a compliant and obedient workforce. It comes with state-of-the-art adhesive backing, for easy pinning to any vertical surface."
	icon = 'mod_celadon/_storge_icons/icons/nanotrasen/posters.dmi'
	poster_item_icon_state = "rolled_nt"

/obj/structure/sign/poster/nanotrasen/random
	name = "random nanotrasen poster"
	random_basetype = /obj/structure/sign/poster/nanotrasen
	icon_state = "random_nanotrasen"
	never_random = TRUE
	random_type = POSTER_SUBTYPES

/obj/structure/sign/poster/nanotrasen/ns_logistics_ad
	name = "N+S Logistics Advertisment"
	desc = "A poster telling the reader about how advanced N+S Mining operations are and why YOU should join them."
	icon = 'mod_celadon/_storge_icons/icons/nanotrasen/posters.dmi'
	icon_state = "poster_ns"

/obj/structure/sign/poster/nanotrasen/vigilitas_nonlethal
	name = "VI Nonlethal Advances"
	desc = "A poster advertising VI's advances in nonlethal detainment strategies, using Sharplite's disabling tech."
	icon = 'mod_celadon/_storge_icons/icons/nanotrasen/posters.dmi'
	icon_state = "poster_vigilitas"

/obj/structure/sign/poster/nanotrasen/deforest_hypospray
	name = "DeForest Hypospray Tech Ad"
	desc = "A poster displaying DeForest's classic hypospray, a technology used everywhere in the medical field today."
	icon = 'mod_celadon/_storge_icons/icons/nanotrasen/posters.dmi'
	icon_state = "poster_deforest"

/obj/structure/sign/poster/nanotrasen/nakamura_advtools
	name = "Nakamura Engineering Tools"
	desc = "A poster displaying details on how NE 'Jaws Of Life' work."
	icon = 'mod_celadon/_storge_icons/icons/nanotrasen/posters.dmi'
	icon_state = "poster_nakamura"
