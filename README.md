# FF5M zmod

> [!CAUTION]
> *Если вы хотите установить этот мод на свой AD5M (Pro), то имейте в виду, что вы рискуете потерять гарантию или повредить принтер. Действуйте на свой страх и риск, если хотите попробовать этот мод!*
> 
> Если вы не знаете что это такое, не понимаете зачем нужна веб странице клиппера или просто довольны стоком, не устанавливайте эту модификацию, для всех остальных - **пожалуйста прочтите полностью инструкцию**! 

## Поддержка moonraker и fluidd/mainsaill на родном Клиппере
Поддерживаемые функции:
1. Загрузка и печать файлов через Octoprinter/Fluidd/FlashForge/Mainsail/Telegram Bot
2. Адаптивное снятие карты стола [KAMP](https://github.com/ghzserg/zmod/wiki/Macros#kamp)
3. Чистка сопла, как в родной прошивке. [CLEAR_NOIZE](https://github.com/ghzserg/zmod/wiki/Macros#clear_noize)
4. Калибровка PID экструдера [PID_TUNE_EXTRUDER](https://github.com/ghzserg/zmod/wiki/Macros#pid_tune_extruder) и стола [PID_TUNE_BED](https://github.com/ghzserg/zmod/wiki/Macros#pid_tune_bed).
5. Регулировка винтов стола [BED_LEVEL_SCREWS_TUNE](https://github.com/ghzserg/zmod/wiki/Macros#bed_level_screws_tune)
6. Снятие шейперов с легкой выгрузкой файлов csv. [ZSHAPER](https://github.com/ghzserg/zmod/wiki/Macros#zshaper)
7. Работа как с родной так и с альтернативной реализацией камеры (Экономит память и позволяет изменить разрешение камеры.) [CAMERA_ON](https://github.com/ghzserg/zmod/wiki/Macros#camera_on)
8. Поддержка moonraker-telegram-bot на [внешнем хосте](https://github.com/ghzserg/zmod/wiki/Macros#telegram-bot)
9. Функционал родного экранного меню не изменен
10. Автоматическое обновление fluidd/mainstail и файлов конфигурации zmod
11. Воспроизведение MIDI файлов [PLAY_MIDI](https://github.com/ghzserg/zmod/wiki/Macros#play_midi)
12. Работа в режиме без родного экрана. Экономит 20 мегабайт оперативной памяти. [DISPLAY_OFF](https://github.com/ghzserg/zmod/wiki/Macros#display_off)
13. Калибровка стола при любой температуре. [AUTO_FULL_BED_LEVEL](https://github.com/ghzserg/zmod/wiki/Macros#auto_full_bed_level)
14. Контроль MD5, при передаче файла по сети [CHECK_MD5](https://github.com/ghzserg/zmod/wiki/Macros#check_md5)

## В мод включены следующие функции

- Root основан на реализации [@darksimpson](https://t.me/darksimpson). Логин и пароль: root. https://t.me/c/2000598629/12695/186253
- Beeper основан на реализации [@drmax_gc](https://t.me/drmax_gc). M300. M356 fur Elise. https://t.me/FF_5M_5M_Pro/1/333800
- Включена проверка md5 от Igor Polunovskiy https://t.me/FF_5M_5M_Pro/12695/272417

Мод во многом основывался на https://github.com/xblax/flashforge_ad5m_klipper_mod/

Ставится на чистую версию не ниже 2.7.5 (2.7.5, 2.7.6)

Чистая версия лежит в папке Stock

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
Доступ к папке mod_data через веб интерфейс fluidd. 

Конфигурация -> Файлы конфигурации -> mod_data

- Пользовательские настройки klipper необходимо вносить в файл mod_data/user.cfg.
- Пользовательские настройки moonraker необходимо вносить в файл mod_data/user.moonraker.cfg.
- Пользовательские мелодии хранятся в mod_data/midi/

## Известные особенности:
- Если принтер выполняет какието действия M109 (прогрев стола), калибровку PID - в общем любое  действие, которое заставляет приостановится gcod, то экран замирает
- После обновления fluidd через веб интерфес, необходимо перезагрузить принтер
- Если перезапускается klipper, то экран замерзает (используйте перезапуск через [NEW_SAVE_CONFIG](https://github.com/ghzserg/zmod/wiki/Macros#new_save_config))
- После обновления ff5m через fluidd, необходимо перезагрузить klipper (используйте перезапуск через [NEW_SAVE_CONFIG](https://github.com/ghzserg/zmod/wiki/Macros#new_save_config))
- После отмены печати, на родном экране надо нажать кнопку Ок (используйте макрос [CLOSE_DIALOGS](https://github.com/ghzserg/zmod/wiki/Macros#close_dialogs))

## Особености версии без экрана
- Необходимо удалить весь стартовый gcode и прописать [START_PRINT](https://github.com/ghzserg/zmod/wiki/Macros#start_print) в конечный код прописать [END_PRINT](https://github.com/ghzserg/zmod/wiki/Macros#end_print)
- Не работает камера, необходимо запустить альтернативную камеру через макрос [CAMERA_ON](https://github.com/ghzserg/zmod/wiki/Macros#camera_on)
- Не работает отправка через протокол FlashForge, т.к. его обрабатывает экран.

  Необходимо переключиться на протокол "Octo/Klipper":
  - Протокол: Octo/Klipper
  - Имя хоста: IP_принтера:7125
  - Url-адрес хоста: IP_принтера

## Установка/Обновление/Удаление мода

[Установка/Обновление/Удаление мода](https://github.com/ghzserg/zmod/wiki/Setup)

## Планируется реализовать

1. Включение родного экрана
