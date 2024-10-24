/obj/structure/sign/neon
	desc = "A glowing sign."
	icon = 'mod_celadon/_storge_icons/icons/structures/obj/signs.dmi'
	layer = LIGHTING_OBJS_PLANE
	light_range = 3
	light_power = 6.5
	var/emissive_state = "x"

/obj/structure/sign/neon/Initialize()
	. = ..()
	if(emissive_state)
		add_overlay(emissive_appearance(icon, emissive_state))

/obj/structure/sign/neon/item
	name = "item store"
	icon_state = "item"
	light_color = LIGHT_COLOR_COOPER

/obj/structure/sign/neon/motel
	name = "motel"
	icon_state = "motel"
	light_color = LIGHT_COLOR_GREEN

/obj/structure/sign/neon/hotel
	name = "hotel"
	icon_state = "hotel"
	light_color = LIGHT_COLOR_GREEN

/obj/structure/sign/neon/flashhotel
	name = "hotel"
	icon_state = "flashhotel"
	light_color = LIGHT_COLOR_HOTPINK

/obj/structure/sign/neon/lovehotel
	name = "hotel"
	icon_state = "lovehotel"
	light_color = LIGHT_COLOR_GREEN

/obj/structure/sign/neon/sushi
	name = "sushi"
	icon_state = "sushi"
	light_color = LIGHT_COLOR_NEONBLUE

/obj/structure/sign/neon/bakery
	name = "bakery"
	icon_state = "bakery"
	light_color = LIGHT_COLOR_HOTPINK

/obj/structure/sign/neon/beer
	name = "pub"
	icon_state = "beer"
	emissive_state = "beer"
	light_color = LIGHT_COLOR_YELLOW

/obj/structure/sign/neon/inn
	name = "inn"
	icon_state = "inn"
	light_color = LIGHT_COLOR_HOTPINK

/obj/structure/sign/neon/cafe
	name = "cafe"
	icon_state = "cafe"
	light_color = LIGHT_COLOR_PINK

/obj/structure/sign/neon/diner
	name = "diner"
	icon_state = "diner"
	light_color = LIGHT_COLOR_GREEN

/obj/structure/sign/neon/bar_alt
	name = "bar"
	icon_state = "bar_alt"
	light_color = LIGHT_COLOR_GREEN

/obj/structure/sign/neon/casino
	name = "casino"
	icon_state = "casino"
	light_color = LIGHT_COLOR_NEONGREEN

/obj/structure/sign/neon/peace
	name = "peace"
	icon_state = "peace"
	emissive_state = "peace-emissive"
	light_color = LIGHT_COLOR_LAVENDER

/obj/structure/sign/neon/sale
	name = "neon sale sign"
	icon_state = "neon_sale"
	emissive_state = "neon_sale"
	light_color = LIGHT_COLOR_NEONBLUE

/obj/structure/sign/neon/exit
	name = "exit"
	icon_state = "exit"
	light_color = "#00ff00"
	light_power = 6.5
	light_range = 3
/*
	light_color = LIGHT_COLOR_RED
*/
/obj/structure/sign/neon/close
	name = "close"
	icon_state = "close"
	light_color = LIGHT_COLOR_NEONGREEN

/obj/structure/sign/neon/open
	name = "open"
	icon_state = "open"
	light_color = LIGHT_COLOR_HALOGEN

/obj/structure/sign/neon/disco
	name = "disco"
	icon_state = "disco"

/obj/structure/sign/neon/phone
	name = "phone"
	icon_state = "phone"
	light_color = LIGHT_COLOR_GREEN

/obj/structure/sign/neon/armory
	name = "armory"
	icon_state = "armory"
	light_color = LIGHT_COLOR_GREEN

/obj/structure/sign/neon/barber
	name = "\improper barber shop sign"
	desc = "A spinning sign indicating a barbershop is near."
	icon_state = "barber"
	light_color = LIGHT_COLOR_NEONBLUE

/obj/structure/sign/neon/cocktails
	name = "cocktails sign"
	desc = "The sign has has a cocktail symbol on it."
	icon_state = "cocktails"
	emissive_state = "cocktails-emissive"
	light_color = LIGHT_COLOR_NEONBLUE

/obj/structure/sign/neon/bathrooms
	name = "bathroom sign"
	desc = "A sign that indicates a unisex bathroom is here."
	icon_state = "bathroom_unisex"
/*
	light_color = LIGHT_COLOR_NEONBLUE
*/
	light_color = "#4d4dff"
	light_power = 30
	light_range = 2.5
/obj/structure/sign/neon/cryo
	name = "cryo area sign"
	desc = "A sign that indicates a cryogenic storage area is nearby."
	icon_state = "cryo"
	light_color = LIGHT_COLOR_GREEN

/obj/structure/sign/neon/heath
	name = "hospital sign"
	desc = "A neon hospital sign"
	icon_state = "medical_on"
	emissive_state = "medical-emissive"
	light_color = LIGHT_COLOR_GREEN

/obj/structure/sign/neon/heath/red
	icon_state = "medicalred_on"
	light_color = LIGHT_COLOR_NEONRED

/obj/structure/sign/neon/airbus
	name = "airbus sign"
	desc = "A neon yellow airbus sign that indicates this is an airbus area."
	icon_state = "bus"
	emissive_state = "bus-emissive"
	light_color = COLOR_YELLOW
	light_range = 5
	light_power = 15

/obj/structure/sign/neon/cubed
	name = "cubed"
	desc = "That's the official emblem of the science labs run by NT."
	icon_state = "cubed"
	light_color = COLOR_LIGHTING_PURPLE_BRIGHT

/obj/structure/sign/neon/vip
	name = "vip sign"
	desc = "A sign showing this is the way to the VIP room."
	icon_state = "vip"
	light_color = COLOR_YELLOW

/obj/structure/sign/neon/mayoroffice
	name = "mayor office sign"
	desc = "A sign for the city hall."
	icon_state = "mayoroffice"
	light_color = COLOR_YELLOW

/obj/structure/sign/neon/cityhall
	name = "city hall sign"
	desc = "A sign for the city hall."
	icon_state = "cityhall"
	light_color = COLOR_YELLOW

/obj/structure/sign/neon/courts
	name = "courts"
	desc = "A sign for the courts."
	icon_state = "courts"
	light_color = COLOR_YELLOW

/obj/structure/sign/neon/meetingroom
	name = "meetingroom"
	desc = "A sign for the meeting room."
	icon_state = "meetingroom"
	light_color = COLOR_YELLOW

/obj/structure/sign/neon/carpark
	name = "carpark"
	desc = "A sign for the car park."
	icon_state = "carpark"
	light_color = COLOR_YELLOW

/obj/structure/sign/neon/trafficsign
	name = "stop traffic sign"
	desc = "A sign to regulate road traffic."
	icon = 'mod_celadon/_storge_icons/icons/structures/obj/road_signs.dmi'
	icon_state = "base"
	var/overlay_state = "stop"
	light_color = LIGHT_COLOR_NEONLIGHTBLUE
	density = TRUE

/obj/structure/sign/neon/trafficsign/Initialize()
	. = ..()
	add_overlay(overlay_state)
	add_overlay(emissive_appearance(icon, overlay_state))

/obj/structure/sign/neon/trafficsign/emergency_stop
	name = "secondary road traffic sign"
	overlay_state = "emergency_stop"

/obj/structure/sign/neon/trafficsign/stop
	name = "stop traffic sign"
	overlay_state = "stop"

/obj/structure/sign/neon/trafficsign/pedestrian_crossing
	name = "pedestrian crossing traffic sign"
	overlay_state = "pedestrian_crossing"

/obj/structure/sign/neon/trafficsign/circle_move
	name = "roundabout traffic sign"
	overlay_state = "circle_move"

/obj/structure/sign/neon/trafficsign/main_road
	name = "main road traffic sign"
	overlay_state = "main_road"

/*|	                                             */
/*| Big Neon Signs
	----------------------------------------------*/

/obj/structure/sign/neon/big
	icon = 'mod_celadon/_storge_icons/icons/structures/obj/signs_large.dmi'
	light_range = 6
	light_power = 8

/obj/structure/sign/neon/big/casino
	name = "casino sign"
	desc = "A neon yellow airbus sign that says CASINO in big letters."
	icon_state = "casino"
	light_color = LIGHT_COLOR_NEONYELLOW

/obj/structure/sign/neon/big/aeoiu
	name = "large blue sign"
	desc = "A neon blue sign in cryptic letters."
	icon_state = "aeoiu"
	emissive_state = "aeoiu-emissive"
	light_color = LIGHT_COLOR_NEONDARKBLUE
	light_power = 20
	light_range = 2
	//alpha = 155
	pixel_x = 8
	pixel_y = 10

/obj/structure/sign/neon/big/luckystar
	name = "luckystar sign"
	desc = "A luckystar sign in cryptic letters."
	icon_state = "luckystar"
	emissive_state = "luckystar-emissive"
/*
	light_color = LIGHT_COLOR_NEONRED
	light_power = 8
	light_range = 3
*/
	light_color = "#ff2119"
	light_power = 20
	light_range = 3
	pixel_x = -8
	pixel_y = 14
	alpha = 200

/obj/structure/sign/neon/big/ianhi
	name = "cryptic wall sign"
	desc = "A luckystar sign in cryptic letters that is pinned to a wall."
	icon_state = "ianhi"
	emissive_state = "ianhi-emissive"
	light_color = "#aa22ff" //LIGHT_COLOR_PURPLE
	light_power = 10
	light_range = 3
	pixel_x = -8
	pixel_y = 14
	//alpha = 200
// light_color = "#aa22ff"

/obj/structure/sign/neon/big/inn
	name = "inn sign"
	desc = "A neon yellow airbus sign that says INN in big letters."
	icon_state = "inn"
	light_color = COLOR_YELLOW


/obj/structure/sign/neon/big/labs
	name = "laboratory sign"
	desc = "A neony purple sign with the word laboratory on it."
	icon_state = "labs"
	light_color = LIGHT_COLOR_PINK

/obj/structure/sign/neon/big/gym
	name = "yeka gym sign"
	desc = "A sign that represents the yekarina institute of wellness first erected by president Katya Petrovna."
	icon_state = "gym"
	light_color = LIGHT_COLOR_LIGHT_CYAN

/obj/structure/sign/neon/big/police_dept
	name = "police department sign"
	desc = "A sign for the police department of Geminus City. It glows blue."
	icon_state = "police_dept"
	emissive_state = "police_dept-emissive"
	light_color = LIGHT_COLOR_LIGHT_CYAN


/obj/structure/sign/neon/big/mall
	name = "shopping mallsign"
	desc = "A sign for the local city shopping mall."
	icon_state = "mall"
	light_color = COLOR_YELLOW

/obj/structure/sign/neon/big/court
	name = "court sign"
	desc = "A sign for the courtroom."
	icon_state = "court"
	light_color = LIGHT_COLOR_LIGHT_CYAN

/obj/structure/sign/neon/big/city_hall
	name = "city hall sign"
	desc = "A sign for the city hall."
	icon_state = "city_hall"
	density = 1
	bound_width = 64
	light_color = LIGHT_COLOR_LIGHT_CYAN


/*|	                                             */
/*| Double Signs
   ----------------------------------------------*/

/obj/structure/sign/double/city/
	name = "sign"
	desc = "A sign."
	pixel_y = 25
	icon = 'mod_celadon/_storge_icons/icons/structures/obj/signs.dmi'

/obj/structure/sign/double/city/gamecenter/
	name = "Game Center"
	desc = "A flashing sign which reads 'Game Center'."
	light_color = "#FFA851" //orange
	light_range = 4
	light_power = 2

/obj/structure/sign/double/city/gamecenter/right
	icon_state = "gamecenter-right"

/obj/structure/sign/double/city/gamecenter/left
	icon_state = "gamecenter-left"

/obj/structure/sign/double/city/maltesefalcon	//The sign is 64x32, so it needs two tiles. ;3
	name = "The Maltese Falcon"
	desc = "The Maltese Falcon, Space Bar and Grill."

/obj/structure/sign/double/city/maltesefalcon/left
	icon_state = "maltesefalcon-left"

/obj/structure/sign/double/city/maltesefalcon/right
	icon_state = "maltesefalcon-right"

//Making area mapping simpler since 2240//

/obj/structure/sign/neon/drivethru
	name = "drivethru sign"
	icon_state = "drivethru1"
	light_color = LIGHT_COLOR_NEONGREEN

/obj/structure/sign/neon/drivethru/right
	icon_state = "drivethru2"

/obj/structure/sign/double/city/teleporter/left
	name = "teleporter"
	icon_state = "teleporter1"
/obj/structure/sign/double/city/teleporter/right
	name = "teleporter"
	icon_state = "teleporter2"

/obj/structure/sign/double/city/museum/left
	icon_state = "museum1"
/obj/structure/sign/double/museum/right
	icon_state = "museum2"


/obj/structure/sign/double/city/warden/left
	icon_state = "warden1"
/obj/structure/sign/double/city/warden/right
	icon_state = "warden2"

/obj/structure/sign/double/city/copoffice/left
	icon_state = "copoffice1"
/obj/structure/sign/double/city/copoffice/right
	icon_state = "copoffice2"

/obj/structure/sign/double/city/visit/left
	icon_state = "visit1"
/obj/structure/sign/double/city/visit/right
	icon_state = "visit2"

/obj/structure/sign/double/city/prosecution/left
	icon_state = "prosecution1"
/obj/structure/sign/double/city/prosecution/right
	icon_state = "prosecution2"

/obj/structure/sign/double/city/defense/left
	icon_state = "defense1"
/obj/structure/sign/double/city/defense/right
	icon_state = "defense2"

/obj/structure/sign/double/city/courtyard/left
	icon_state = "courtyard1"
/obj/structure/sign/double/city/courtyard/right
	icon_state = "courtyard2"

/obj/structure/sign/double/city/training/left
	icon_state = "train1"
/obj/structure/sign/double/city/training/right
	icon_state = "train2"


/obj/structure/sign/double/city/hospital/left
	icon_state = "hospital1"
/obj/structure/sign/double/city/hospital/right
	icon_state = "hospital2"





/*|	                                             */
/*| Normal Signs
   ----------------------------------------------*/

/obj/structure/sign/city/
	desc = "A sign."
	icon = 'mod_celadon/_storge_icons/icons/structures/obj/signs.dmi'

/obj/structure/sign/city/rent
	name = "Rent sign"
	icon_state = "rent"
	desc = "A sign that says 'For Rent' on it. This house might be vacant."

/obj/structure/sign/city/coffee
	name = "Coffee And Sweets"
	desc = "A sign which reads 'Coffee and Sweets'."
	icon_state = "coffee-left"

/obj/structure/sign/city/techshop
	name = "\improper techshop"
	desc = "A sign which reads 'tech shop'."
	icon_state = "techshop"
