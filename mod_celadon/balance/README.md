

#### Список PRов:

- https://github.com/MysticalFaceLesS/Shiptest/pulls/#####
<!--
  Ссылки на PRы, связанные с модом:
  - Создание
  - Большие изменения
-->

<!-- Название мода. Не важно на русском или на английском. -->
## Balance - изменение баланса

ID мода: CELADON_BALANCE
	// [CELADON-EDIT] - CELADON_BALANCE - Трогаем РнД
	// CELADON-EDIT - ORIGINAL
	// [/CELADON-EDIT]
<!--
  Название модпака прописными буквами, СОЕДИНЁННЫМИ_ПОДЧЁРКИВАНИЕМ,
  которое ты будешь использовать для обозначения файлов.
-->

### Описание мода

Этот мод вносит различные изменения в балансе. 

<!--
  Что он делает, что добавляет: что, куда, зачем и почему - всё здесь.
  А также любая полезная информация.
-->

### Изменения *кор кода*
- Снаряжение шахтеров:
EDIT: `code\modules\mining\equipment\explorer_gear.dm`: `/obj/item/clothing/suit/hooded/explorer` -> `allowed = list`
- Изменены рад коллекторы:
EDIT: `code\modules\power\singularity\collector.dm`: `#define RAD_COLLECTOR_EFFICIENCY`, `#define RAD_COLLECTOR_COEFFICIENT`, `#define RAD_COLLECTOR_OUTPUT`
- Изменения части шатлов:
EDIT: `code\game\machinery\shuttle\custom_shuttle.dm`: `/obj/machinery/power/shuttle` -> icon
EDIT: `code\game\machinery\shuttle\custom_shuttle.dm`: `/obj/machinery/atmospherics/components/unary/shuttle` -> icon
- Двигатели:
EDIT: `code\game\machinery\shuttle\shuttle_engine_types.dm`: `fuel_use`, `thrust`
- РнД:
EDIT: `code\modules\research\techweb\all_nodes.dm`: `research_costs`, `export_price`, `prereq_ids`
- Универсальная плата вендоров:
ADD: `code\game\objects\items\circuitboards\machine_circuitboards.dm` : `/obj/item/circuitboard/machine/vendor`
- Уменьшение цены еды в карго:
EDIT: `code\modules\cargo\packs\food.dm` : `/datum/supply_pack/food/`
<!--
  Если вы редактировали какие-либо процедуры или переменные в кор коде,
  они должны быть указаны здесь.
  Нужно указать и файл, и процедуры/переменные.

  Изменений нет - напиши "Отсутствуют"
-->

### Оверрайды

- Отсутствуют
<!--
  Если ты добавлял новый модульный оверрайд, его нужно указать здесь.
  Здесь указываются оверрайды в твоём моде и папке `_master_files`

  Изменений нет - напиши "Отсутствуют"
-->

### Дефайны

- Отсутствуют
<!--
  Если требовалось добавить какие-либо дефайны, укажи файлы,
  в которые ты их добавил, а также перечисли имена.
  И то же самое, если ты используешь дефайны, определённые другим модом.

  Не используешь - напиши "Отсутствуют"
-->

### Используемые файлы, не содержащиеся в модпаке

- Отсутствуют
<!--
  Будь то немодульный файл или модульный файл, который не содержится в папке,
  принадлежащей этому конкретному моду, он должен быть упомянут здесь.
  Хорошими примерами являются иконки или звуки, которые используются одновременно
  несколькими модулями, или что-либо подобное.
-->

### Авторы:

- Кинетик Крашер, универасльная вендор плата, цены карго, одежда с ЦК - Yata9arasu, двигатели, рад. коллекторы - RalseiDreemuurr
<!--
  Здесь находится твой никнейм
  Если работал совместно - никнеймы тех, кто помогал.
  В случае порта чего-либо должна быть ссылка на источник.
-->
