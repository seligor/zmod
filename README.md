# FF5M ZMOD

> [!CAUTION]
> *Если вы хотите установить этот мод на свой AD5M (Pro), то имейте в виду, что вы рискуете потерять гарантию или повредить принтер. Действуйте на свой страх и риск, если хотите попробовать этот мод!*
> 
> Если вы не знаете что это такое, не понимаете зачем нужна веб страница klipper или просто довольны стоком, не устанавливайте эту модификацию, для всех остальных - **пожалуйста прочтите полностью инструкцию**!
>
> Поставили мод. Ни хотите ни в чем разбираться - печатаете как и печатали. Вообще ничего нигде настраивать и менять не надо. Решили, что готовы двигаться дальше - двигаетесь - читая документацию.




Последняя версия: **1.1.0**

MD5 сумма `1563b39c3282b549997b5ce7c12b2f24  Adventurer5M-zmod-1.1.0.tgz`

Как проверить:
- перейти в папку где лежит файл Adventurer5MPro-zmod-1.1.0.tgz
- Правой кнопкой мыши по свободному месту -> `Открыть в терминале`
- `certutil -hashfile Adventurer5M-zmod-1.1.0.tgz md5`
- Сумма должна совпасть

Ставится на чистую версию **не ниже 2.7.5** (2.7.5, 2.7.6, 2.7.7, 2.7.8, 2.7.9, 3.1.3, 3.1.4)

Чистая версия лежит в папке [Родная_прошивка](https://github.com/ghzserg/zmod/tree/main/%D0%A0%D0%BE%D0%B4%D0%BD%D0%B0%D1%8F_%D0%BF%D1%80%D0%BE%D1%88%D0%B8%D0%B2%D0%BA%D0%B0)

## Поддержка moonraker и fluidd/mainsaill на родном Клиппере
Поддерживаемые функции:
1. Веб интрефейс на базе Fluidd или Mainsail
2. Загрузка и печать файлов через Octoprinter/Fluidd/FlashForge/Mainsail/[Telegram Bot](https://github.com/ghzserg/zmod/wiki/Macros#telegram-bot)
3. Адаптивное снятие карты стола [KAMP](https://github.com/ghzserg/zmod/wiki/Macros#kamp)
4. [Калибровка стола](https://github.com/ghzserg/zmod/wiki/Macros#auto_full_bed_level) при любой температуре и возможен запуск при начале печати
5. [Снятие шейперов c генерацией графиков](https://github.com/ghzserg/zmod/wiki/Macros#zshaper)
6. [Регулировка винтов стола](https://github.com/ghzserg/zmod/wiki/Macros#bed_level_screws_tune)
7. Калибровка PID [экструдера](https://github.com/ghzserg/zmod/wiki/Macros#pid_tune_extruder) и [стола](https://github.com/ghzserg/zmod/wiki/Macros#pid_tune_bed).
8. [Чистка сопла, как в родной прошивке](https://github.com/ghzserg/zmod/wiki/Macros#clear_noize)
9. Работа как с родной так и с [альтернативной реализацией камеры](https://github.com/ghzserg/zmod/wiki/Macros#camera_on) (экономит память и позволяет менять разрешение камеры.)
10. Поддержка moonraker-telegram-bot на [внешнем хосте](https://github.com/ghzserg/zmod/wiki/Macros#telegram-bot)
11. [Воспроизведение MIDI файлов](https://github.com/ghzserg/zmod/wiki/Macros#play_midi)
12. [Контроль MD5](https://github.com/ghzserg/zmod/wiki/Macros#check_md5), при передаче файла по сети 
13. Функционал родного экранного меню не изменен
14. Автоматическое обновление fluidd/mainstail/moonraker и ZMOD по сети
15. Работа в [режиме без родного экрана](https://github.com/ghzserg/zmod/wiki/Macros#display_off). Экономит 20 мегабайт оперативной памяти.
16. Поддержа досупа ROOT, и mc
17. Реализован [COLDPULL/Колдпул](https://github.com/ghzserg/zmod/wiki/Macros#coldpull) (очистка сопла) без насилия. Реализация [этого алгоритма](https://t.me/FF_5M_5M_Pro/2836/447172)
18. [Entware](https://github.com/ghzserg/zmod/wiki/FAQ#%D0%B2-zmod-%D0%B2%D1%85%D0%BE%D0%B4%D0%B8%D1%82-entware---%D0%BA%D0%B0%D0%BA-%D0%B8%D0%BC-%D0%B2%D0%BE%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%D1%81%D1%8F)
19. Исправлена ошибка [E0017](https://github.com/ghzserg/zmod/wiki/Macros#fix_e0017)
20. [Поддержка отката из прошивки](https://github.com/ghzserg/zmod/wiki/FAQ#%D1%87%D1%82%D0%BE-%D1%82%D0%B0%D0%BA%D0%BE%D0%B5-%D0%BE%D1%82%D0%BA%D0%B0%D1%82-%D0%B8%D0%B7-%D0%BF%D1%80%D0%BE%D1%88%D0%B8%D0%B2%D0%BA%D0%B8)

## История версий
[История версий](https://github.com/ghzserg/zmod/wiki/Changelog)

## Частые вопросы

[Обязательно к прочтению](https://github.com/ghzserg/zmod/wiki/FAQ)

## Рекомендации по повышению стабильности работы принтера

[Читать - если что-то работает не так](https://github.com/ghzserg/zmod/wiki/Recomendations)

## Список Макросов

Весь функционал работает через макросы

[Список Макросов](https://github.com/ghzserg/zmod/wiki/Macros)

## Хранение настроек
Доступ к папке **mod_data** через веб интерфейс fluidd. 

`Конфигурация` -> `Файлы конфигурации` -> `mod_data`

- Пользовательские настройки klipper необходимо вносить в файл `mod_data/user.cfg`
- Пользовательские настройки moonraker необходимо вносить в файл `mod_data/user.moonraker.cfg`
- Пользовательские мелодии хранятся в `mod_data/midi/`
- Глобальные настройки мода хранятся через макрос [SAVE_ZMOD_DATA](https://github.com/ghzserg/zmod/wiki/Macros#save_zmod_data) *нюхлер*

## Известные особенности:
- Если принтер выполняет какието действия M109 (прогрев стола), калибровку PID - в общем любое  действие, которое заставляет приостановится gcod, то экран замирает
- Если перезапускается klipper, то экран замерзает (используйте перезапуск через [NEW_SAVE_CONFIG](https://github.com/ghzserg/zmod/wiki/Macros#new_save_config))
- После отмены печати, на родном экране надо нажать кнопку Ок (используйте макрос [CLOSE_DIALOGS](https://github.com/ghzserg/zmod/wiki/Macros#close_dialogs) или [FAST_CLOSE_DIALOGS](https://github.com/ghzserg/zmod/wiki/Macros#fast_close_dialogs))
- Родной экран при загрузки печати всегда грузит профиль `DEFAULT_MESH` и после окончания печати всегда удаляет профиль `Default`

## Особености версии без экрана
- Необходимо удалить весь стартовый gcode и прописать [START_PRINT](https://github.com/ghzserg/zmod/wiki/Macros#start_print), а в конечный [END_PRINT](https://github.com/ghzserg/zmod/wiki/Macros#end_print)
- Не работает камера, необходимо запустить альтернативную камеру через макрос [CAMERA_ON](https://github.com/ghzserg/zmod/wiki/Macros#camera_on)
- При необходимости, надо вручную прописать параметр [Z_OFFSET](https://github.com/ghzserg/zmod/wiki/Macros#%D1%8D%D1%82%D0%BE-%D0%BD%D0%B5-%D0%BF%D0%B0%D1%80%D0%B0%D0%BC%D0%B5%D1%82%D1%80%D1%8B-start_print-%D1%8D%D1%82%D0%BE-%D0%B3%D0%BB%D0%BE%D0%B1%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B5-%D1%84%D0%BB%D0%B0%D0%B3%D0%B8%D0%BF%D0%B0%D1%80%D0%B0%D0%BC%D0%B5%D1%82%D1%80%D1%8B-%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D0%B5-%D1%81%D1%82%D0%B0%D0%B2%D0%B8%D1%82%D1%81%D1%8F-%D1%87%D0%B5%D1%80%D0%B5%D0%B7-save_zmod_data) в макросе [START_PRINT](https://github.com/ghzserg/zmod/wiki/Macros#start_print) или использовать глобальный параметр [LOAD_ZOFFSET](https://github.com/ghzserg/zmod/wiki/Macros#load_zoffset) который загружает Z-offset из глобальных параметров, сохраненных ранее через SET_GCODE_OFFSET. *крот*
- При включении принтера автоматически загружается карта стола `auto`
- Не работает отправка через протокол FlashForge, т.к. его обрабатывает экран.
  Необходимо переключиться на протокол "Octo/Klipper":
  - Протокол: `Octo/Klipper`
  - Имя хоста: `IP_принтера:7125`
  - Url-адрес хоста: `IP_принтера`
 
## Используемые дополнения

- Root основан на реализации [@darksimpson](https://t.me/darksimpson). Логин и пароль: root. [Ссылка](https://t.me/c/2000598629/12695/186253)
- Beeper основан на реализации [@drmax_gc](https://t.me/drmax_gc). M300. M356 fur Elise. [Ссылка](https://t.me/FF_5M_5M_Pro/1/333800)
- Включена проверка md5 от Igor Polunovskiy. [Ссылка](https://t.me/FF_5M_5M_Pro/12695/272417)

Мод во многом основывался на [KlipperMod](https://github.com/xblax/flashforge_ad5m_klipper_mod/)

## Установка/Обновление/Удаление мода

[Установка/Обновление/Удаление мода](https://github.com/ghzserg/zmod/wiki/Setup)
