

#### Список PRов:

- https://github.com/MysticalFaceLesS/Shiptest/pulls/#####
<!--
  Ссылки на PRы, связанные с модом:
  - Создание
  - Большие изменения
-->

<!-- Название мода. Не важно на русском или на английском. -->
## QoL - Улучшения всего и вся

ID мода: CELADON_QOL
<!--
  Название модпака прописными буквами, СОЕДИНЁННЫМИ_ПОДЧЁРКИВАНИЕМ,
  которое ты будешь использовать для обозначения файлов.
-->

### Описание мода

Этот мод служит для внесения изменений связаных с улучшением различных вещей, для удобства в общем.
Добавляется: 
- прическа ziegler -> `mod_celadon\qol\code\hair.dm`
- мезонные очки двух видов -> `mod_celadon\qol\code\glasses.dm`
- бинокль -> `mod_celadon\qol\code\binoculars.dm`
- переведены законы ИИ, см.ниже
<!--
  Что он делает, что добавляет: что, куда, зачем и почему - всё здесь.
  А также любая полезная информация.
-->

### Изменения *кор кода*

- ADD `code\game\objects\items\storage\wallets.dm`: `/obj/item/storage/wallet/ComponentInitialize()`: `STR.set_holdable`: `/obj/item/kitchen/knife/letter_opener,`, `/obj/item/key`
- EDIT `code\modules\mob\dead\new_player\sprite_accessories\hair.dm`: `/datum/sprite_accessory/hair`: `icon` = `mod_celadon/qol/icons/human_face.dmi`
- EDIT `code\game\objects\items\binoculars.dm`: `/obj/item/binoculars`: `slot_flags` = `ITEM_SLOT_NECK`
- EDIT `code\modules\mob\living\silicon\silicon.dm`: `/mob/living/silicon/proc/checklaws()`
- EDIT `code\game\objects\items\AI_modules.dm`: `/obj/item/aiModule/core/full/asimov/attack_self(mob/user as mob)`
- EDIT `code\modules\ruins\spaceruin_code\forgottenship.dm`: `/datum/ai_laws/cybersun`
Законы ИИ
- EDIT `code\datums\ai_laws.dm`: `/datum/ai_laws/default/asimov`
- EDIT `code\datums\ai_laws.dm`: `/datum/ai_laws/default/paladin`
- EDIT `code\datums\ai_laws.dm`: `/datum/ai_laws/paladin5`
- EDIT `code\datums\ai_laws.dm`: `/datum/ai_laws/tyrant`
- EDIT `code\datums\ai_laws.dm`: `/datum/ai_laws/default/corporate`
- EDIT `code\datums\ai_laws.dm`: `/datum/ai_laws/robocop`
- EDIT `code\datums\ai_laws.dm`: `/datum/ai_laws/syndicate_override`
- EDIT `code\datums\ai_laws.dm`: `/datum/ai_laws/syndproto_override`
- EDIT `code\datums\ai_laws.dm`: `/datum/ai_laws/ninja_override`
- EDIT `code\datums\ai_laws.dm`: `/datum/ai_laws/antimov`
- EDIT `code\datums\ai_laws.dm`: `/datum/ai_laws/asimovpp`
- EDIT `code\datums\ai_laws.dm`: `/datum/ai_laws/thermodynamic`
- EDIT `code\datums\ai_laws.dm`: `/datum/ai_laws/hippocratic`
- EDIT `code\datums\ai_laws.dm`: `/datum/ai_laws/maintain`
- EDIT `code\datums\ai_laws.dm`: `/datum/ai_laws/drone`
- EDIT `code\datums\ai_laws.dm`: `/datum/ai_laws/liveandletlive`
- EDIT `code\datums\ai_laws.dm`: `/datum/ai_laws/peacekeeper`
- EDIT `code\datums\ai_laws.dm`: `/datum/ai_laws/reporter`
- EDIT `code\datums\ai_laws.dm`: `/datum/ai_laws/balance`
- EDIT `code\datums\ai_laws.dm`: `/datum/ai_laws/toupee`
- EDIT `code\datums\ai_laws.dm`: `/datum/ai_laws/hulkamania`
- EDIT `code\datums\ai_laws.dm`: `/datum/ai_laws/overlord`
- EDIT `code\datums\ai_laws.dm`: `/datum/ai_laws/custom`
- EDIT `code\datums\ai_laws.dm`: `/datum/ai_laws/custom/New()`
- EDIT `code\datums\ai_laws.dm`: `/datum/ai_laws/proc/set_laws_config()`
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

- EDIT `code\__DEFINES\species_clothing_defines.dm`: `DEFAULT_NECK_PATH`
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

RalseiDreemuurr
<!--
  Здесь находится твой никнейм
  Если работал совместно - никнеймы тех, кто помогал.
  В случае порта чего-либо должна быть ссылка на источник.
-->
