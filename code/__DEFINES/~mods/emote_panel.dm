var/last_emote_time = 0
var/timer = 20

/proc/emote_with_delay(emote, delay)
    if (world.time - last_emote_time < delay)
        return
    usr.emote(emote)
    last_emote_time = world.time
