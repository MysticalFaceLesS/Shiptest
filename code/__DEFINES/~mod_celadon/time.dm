#define TIME_OFFSET GLOB.config.time_offset

// Добавляем год для игры
GLOBAL_VAR_INIT(game_year, (text2num(time2text(world.realtime, "YYYY")) + 554))
