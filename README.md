# FF5M zmod

> [!CAUTION]
> *Если вы хотите установить этот мод на свой AD5M (Pro), то имейте в виду, что вы рискуете потерять гарантию или повредить принтер. Действуйте на свой страх и риск, если хотите попробовать этот мод!*
> 
> Если вы не знаете что это такое, не понимаете зачем нужна веб странице клиппера или просто довольны стоком, не устанавливайте эту модификацию, для всех остальных - **пожалуйста прочтите полностью инструкцию**! 

## Поддержка moonraker и fluidd/mainsaill на родном Клиппере
Поддерживаемые функции:
1. Загрузка и печать файлов через Octoprinter/Fluidd/FlashForge/Mainsail/[Telegram Bot](https://github.com/ghzserg/zmod/wiki/Macros#telegram-bot)
2. Адаптивное снятие карты стола [KAMP](https://github.com/ghzserg/zmod/wiki/Macros#kamp)
3. [Калибровка стола](https://github.com/ghzserg/zmod/wiki/Macros#auto_full_bed_level) при любой температуре
4. [Снятие шейперов c генерацией графиков](https://github.com/ghzserg/zmod/wiki/Macros#zshaper)
5. [Регулировка винтов стола](https://github.com/ghzserg/zmod/wiki/Macros#bed_level_screws_tune)
6. Калибровка PID [экструдера](https://github.com/ghzserg/zmod/wiki/Macros#pid_tune_extruder) и [стола](https://github.com/ghzserg/zmod/wiki/Macros#pid_tune_bed).
7. [Чистка сопла, как в родной прошивке](https://github.com/ghzserg/zmod/wiki/Macros#clear_noize)
8. Работа как с родной так и с [альтернативной реализацией камеры](https://github.com/ghzserg/zmod/wiki/Macros#camera_on) (Экономит память и позволяет изменить разрешение камеры.)
9. Поддержка moonraker-telegram-bot на [внешнем хосте](https://github.com/ghzserg/zmod/wiki/Macros#telegram-bot)
10. [Воспроизведение MIDI файлов](https://github.com/ghzserg/zmod/wiki/Macros#play_midi)
11. [Контроль MD5](https://github.com/ghzserg/zmod/wiki/Macros#check_md5), при передаче файла по сети 
12. Функционал родного экранного меню не изменен
13. Автоматическое обновление fluidd/mainstail и файлов конфигурации zmod
14. Работа в [режиме без родного экрана](https://github.com/ghzserg/zmod/wiki/Macros#display_off). Экономит 20 мегабайт оперативной памяти.
15. Поддержа досупа ROOT, и mc

## Испльзуемые дополнеия

- Root основан на реализации [@darksimpson](https://t.me/darksimpson). Логин и пароль: root. [Ссылка](https://t.me/c/2000598629/12695/186253)
- Beeper основан на реализации [@drmax_gc](https://t.me/drmax_gc). M300. M356 fur Elise. [Ссылка](https://t.me/FF_5M_5M_Pro/1/333800)
- Включена проверка md5 от Igor Polunovskiy. [Ссылка](https://t.me/FF_5M_5M_Pro/12695/272417)

Мод во многом основывался на [KlipperMod](https://github.com/xblax/flashforge_ad5m_klipper_mod/)

Ставится на чистую версию не ниже 2.7.5 (2.7.5, 2.7.6)

Чистая версия лежит в папке [Stock](https://github.com/ghzserg/zmod/tree/main/Stock)

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

Конфигурация -> Файлы конфигурации -> mod_data

- Пользовательские настройки klipper необходимо вносить в файл mod_data/**user.cfg**
- Пользовательские настройки moonraker необходимо вносить в файл mod_data/**user.moonraker.cfg**
- Пользовательские мелодии хранятся в mod_data/**midi**/

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
 
## Помочь разработке

[На развитие мода](https://www.donationalerts.com/r/zmod_ghzserg)
<a href="https://www.donationalerts.com/r/zmod_ghzserg"><img src="https://static.donationalerts.ru/uploads/qr/13330552/qr_d0475887437c29c22a92f0f724d444c1.png" width="100" alt="QR"></a>

## Установка/Обновление/Удаление мода

[Установка/Обновление/Удаление мода](https://github.com/ghzserg/zmod/wiki/Setup)



## Планируется реализовать

1. Включение родного экрана
