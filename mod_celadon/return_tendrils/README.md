
#### Список PRов

- https://github.com/CeladonSS13/Shiptest/pulls/#####
<!--
  Ссылки на PRы, связанные с модом:
  - Создание
  - Большие изменения
-->

<!-- Название мода. Не важно на русском или на английском. -->
## Возвращение спавнов и тендрилов

ID мода: RETURN_TENDRILS
<!--
  Название модпака прописными буквами, СОЕДИНЁННЫМИ_ПОДЧЁРКИВАНИЕМ,
  которое ты будешь использовать для обозначения файлов.
  При запуске скрипта выставляется автоматически.
-->

### Описание мода

Этот мод возвращает вырезаные спавнеры, хайвботов, тендрилов в игру, а также ачивки связаные с ними.
<!--
  Что он делает, что добавляет: что, куда, зачем и почему - всё здесь.
  А также любая полезная информация.
-->

### Изменения *кор кода*

- `code/datums/components/chasm.dm`
- `code/datums/mapgen/planetary/AsteroidGenerator.dm`
- `code/datums/mapgen/planetary/JungleGenerator.dm`
- `code/datums/mapgen/planetary/LavaGenerator.dm`
- `code/datums/mapgen/planetary/RockGenerator.dm`
- `code/datums/mapgen/planetary/SandGenerator.dm`
- `code/datums/mapgen/planetary/SnowGenerator.dm`
- `code/datums/mapgen/planetary/WasteGenerator.dm`
- `code/modules/mining/ore_veins.dm`
- `code/modules/mob/living/simple_animal/hostile/mining_mobs/hivelord.dm`
- `code/modules/mob/living/simple_animal/hostile/mining_mobs/mining_mobs.dm`
- `code/modules/ruins/objects_and_mobs/ash_walker_den.dm`

<!--
  Если вы редактировали какие-либо процедуры или переменные в кор коде,
  они должны быть указаны здесь.
  Нужно указать и файл, и процедуры/переменные.

  Изменений нет - напиши "Отсутствуют"
  Примеры: `code/modules/mob/living.dm`: `proc/overriden_proc`, `var/overriden_var`
-->

### Оверрайды

- Отсутствуют
<!--
  Если ты добавлял новый модульный оверрайд, его нужно указать здесь.
  Здесь указываются оверрайды в твоём моде и папке `_master_files`

  Изменений нет - напиши "Отсутствуют"
  Примеры: 
  - `mods/_master_files/sound/my_cool_sound.ogg`
  - `mods/_master_files/code/my_modular_override.dm`: `proc/overriden_proc`, `var/overriden_var`
-->

### Дефайны

- `code/__DEFINES/achievements.dm`
  - `SWARMER_BEACON_SCORE`
  - `TENDRIL_CLEAR_SCORE`
  - `BOSS_MEDAL_SWARMERS_CRUSHER`
  - `BOSS_MEDAL_KINGGOAT_CRUSHER`
  - `BOSS_MEDAL_TENDRIL`
  - `BOSS_MEDAL_SWARMERS`
  - `BOSS_MEDAL_KINGGOAT`

<!--
  Если требовалось добавить какие-либо дефайны, укажи файлы,
  в которые ты их добавил, а также перечисли имена.
  И то же самое, если ты используешь дефайны, определённые другим модом.

  Не используешь - напиши "Отсутствуют"
  Примеры: `code/__defines/~mod_celadon/return_tendrils.dm`: `RETURN_TENDRILS_SPEED_MULTIPLIER`, `RETURN_TENDRILS_SPEED_BASE`
-->

### Используемые файлы, не содержащиеся в модпаке

- Отсутствуют
<!--
  Будь то немодульный файл или модульный файл, который не содержится в папке,
  принадлежащей этому конкретному моду, он должен быть упомянут здесь.
  Хорошими примерами являются иконки или звуки, которые используются одновременно
  несколькими модулями, или что-либо подобное.
  Примеры: `mods/_master_files/icons/obj/alien.dmi`
-->

### Авторы

MrCat15352
<!--
  Здесь находится твой никнейм
  Если работал совместно - никнеймы тех, кто помогал.
  В случае порта чего-либо должна быть ссылка на источник.
-->
