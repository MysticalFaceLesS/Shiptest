/atom/movable/screen/devil
	icon = 'icons/hud/screen_devil.dmi'
	invisibility = INVISIBILITY_ABSTRACT

/atom/movable/screen/devil/soul_counter
	name = "souls owned"
	icon_state = "Devil-6"
	screen_loc = ui_devilsouldisplay

// /atom/movable/screen/devil/soul_counter/proc/update_counter(souls = 0)
// 	invisibility = 0
// 	maptext = "<div align='center' valign='middle' style='position:relative; top:0px; left:6px'><font color='#FF0000'>[souls]</font></div>"
// 	switch(souls)
// 		if(0,null)
// 			icon_state = "Devil-1"
// 		if(1,2)
// 			icon_state = "Devil-2"
// 		if(3 to 5)
// 			icon_state = "Devil-3"
// 		if(6 to 8)
// 			icon_state = "Devil-4"
// 		if(9 to INFINITY)
// 			icon_state = "Devil-5"
// 		else
// 			icon_state = "Devil-6"

// /atom/movable/screen/devil/soul_counter/proc/clear()
// 	invisibility = INVISIBILITY_ABSTRACT
