#define TIME_OFFSET GLOB.config.time_offset

var/roundstart_hour = 0
var/round_start_time

//Returns the world time in english
/proc/worldtime2text(time = world.time, timeshift = 1)
	if(!roundstart_hour) roundstart_hour = REALTIMEOFDAY - (TIMEZONE_CST HOURS)
	return timeshift ? time2text(time+roundstart_hour, "hh:mm") : time2text(time, "hh:mm")
