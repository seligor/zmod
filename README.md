# FF5M zmod
## Поддержка moonraker и fluidd на родном Клиппере
Поддерживаемые функции:
1. Загрузка и печать файлов через Octoprinter
2. Загрузка и печать файлов через Fluidd
3. Функцилонал родного экранного меню не изменен
4. Калибровка PID экструдера(PID_Tune_EXTRUDER) и стола(PID_Tune_BED). 
5. Регулировка винтов стола (Bed_Level_Screws_Tune) + калибровка стола(Auto_Full_Bed_Level)
5. Просмотр параметров клиппера (температуры, ускорения, PA, PA_TIME)
6. Просмотр того что запущено на печать
7. Камера работает как в родной прошивке и отображается в fluidd
8. Автоматическое обновление fluidd и файлов конфигурации zmod
9. Воспроизведение MID файлов
10. Работа в режиме без родного экрана. Экономит 20 мегабайт оперативной памяти.

## В мод включены следующие функции

- Root основан на реализации [@darksimpson](https://t.me/darksimpson). Логин и пароль: root. https://t.me/c/2000598629/12695/186253
- Beeper основан на реализации [@drmax_gc](https://t.me/drmax_gc). M300. M356 fur Elise. https://t.me/FF_5M_5M_Pro/1/333800
- Включена проверка md5 от Igor Polunovskiy https://t.me/FF_5M_5M_Pro/12695/272417
- Калибровка PID стола с экрана. Теперь зайдя в меню отладки, долгое  нажатие  на  "Информацию о машине." Перейдя на вкладку  "Manual". Надо ввести M357 - запускается калибровка на 80 градусах. Если ввести M357 E105 - запустится калибровка на 105 градусах. Далее минут 10 экран не будет реагировать не  на что, но потом  PID от калибруется и запишется в printer.cfg.

Мод во многом основывался на https://github.com/xblax/flashforge_ad5m_klipper_mod/

Ставится на чистую версию не ниже 2.7.5

Чистая версия лежит в папке Stock

## Хранение настроек
- Пользовательские настройки klipper необходимо вносить в файл mod_data/user.cfg.
- Пользовательские настройки moonraker необходимо вносить в файл mod_data/user.moonraker.cfg.
- Пользовательские мелодии хранятся в mod_data/midi/

## Известные особенности:
- Если принтер выполняет какието действия M109 (прогрев стола), калибровку PID - в общем любое  действие, которое заставляет приостановится gcod, то экран замирает
- Если перезапускается klipper, то экран замерзает
- После обновления fluidd через веб интерфес, необходимо перезагрузить принтер
- После обновления ff5m через fluidd, необходимо перезагрузить klipper
- После отмены печати, на родном экране надо нажать кнопку Ок

## Особености версии без экрана
- Необходимо в стартовом gcode заменить M104 S[nozzle_temperature_initial_layer] на M109 S[nozzle_temperature_initial_layer]
- Или удалить весь стартовый gcode и прописать START_PRINT
- Не работает камера, будет исправлено позже

## Удаление - временное отключение мода

- SKIP_ZMOD - макрос перезагрузки без запуска moonraker и fluidd
- REMOVE_ZMOD - макрос удаления мода
- SOFT_REMOVE - макрос удаляет мод, но не удаляет audio, md5, root

## Планируется реализовать

1. Очистка сопла и калибровка как в родном экране
2. Вынести настройки камеры в макрос
3. Добавить КАМП после (имеет смысл только после  очистки сопла)

## Возврат принтера к заводским установкам (необходимо для установки мода)

1. Сбросить принтер до настроек по умолчанию
2. Отформатировать USB Flash в FAT
3. Поместить файл Adventurer5M-2.7.5-2.2.3-20240911-Factory.tgz из папки Stock в корневую папку USB Flash
4. Выключить принтер
5. Вставить флэшку в принтер
6. Включить принтер
7. Дождаться установки родной прошивки
8. Настроить WiFi
9. Получить последние обновления для принтера

## Установка мода

1. Отформатировать USB Flash в FAT
2. Поместить файл Adventurer5M-zmod*.tgz для обычной версии или Adventurer5MPro-zmod*.tgz для Pro версии в корневую папку USB Flash. Файл получается путем переименования.
3. Выключить принтер
4. Вставить флэшку в принтер
5. Включить принтер
6. Дождаться установки мода
7. Вытащить флэшку
8. Выключить принтер
9. Включить принтер

## Обновление мода

1. Отформатировать USB Flash в FAT
2. Поместить файл Adventurer5M-zmod*.tgz в корневую папку USB Flash
3. Выключить принтер
4. Вставить флэшку в принтер
5. Включить принтер
6. Дождаться перезагрузки принтера (вытаскивать флэшку не надо)
7. Когда принтер напишет что установка прошла
8. Дождаться установки мода
7. Вытащить флэшку
8. Выключить принетр
9. Включить принтер

## Версия 0.1.3
- Добавлено воспроизведение MIDI. Файлы хранятся в mod_data/midi - доступ через вкладку конфигурация. Спасибо [@drmax_gc](https://t.me/drmax_gc)
- Макрос PLAY_MIDI. Играет мелодию PLAY_MIDI FILE=Pain-Shut-your-mouth.mid
- Макрос SOFT_REMOVE. Удаляет только zmod, оставляет audio, md5, root
- После обновления настройки moonraker сохраняются
- Настройки пользователя для klipper пернесены в mod_data/user.cfg
- Настройки пользователя для moonraker перенесены в mod_data/user.moonraker.cfg
- При выклчюении экрана на нем пишется текст, что экран выключен. Спасибо @drmax_gc
- Исправлена ошибка калибровки кровати через макрос. Теперь кровать греется.
- Исправлена ошибка регулировки кровати через макрос. Теперь кровать греется.

## Версия 0.1.1
- Поддержка работы с отключенным родным дисплеем. Это экономит 20 мегабайт оперативной памяти. Чтобы  включить этот режим, нужно вызвать макрос DISPLAY_OFF. Клипер перезагрузится и будет использовать альтернативные файлы конфигурации. Рекомендуется снять карту  стола  и сохранить в профиль default. После перезагрузки, экран  станет недоступен через 5 минут и загрузится карта  стола из профиля default.
- Макрос MEM - показывает сколько памяти используется и каким приложением.
- Макрос DISPLAY_ON - вернет экран в стандартный режим работы, принтоер перезагрузится
- Макрос LED - включит подсветку на 50%
- Макрос LED_ON - включит подсветку на 100%
- Макрос LED_OFF - выключить подсветку

## Версия 0.0.9-fix
- Исправлена ошибка установки.

## Версия 0.0.9

- Реализована пауза при печати, обрабатывается через родной экран
- Реализовано восстановление после паузы, обрабатывается через родной экран
- Реализована отмена печати, обрабатывается через родной экран
- REBOOT - макрос перезагружает принтер
- SHUTDOWN - макрос на отключение принтера
- SKIP_ZMOD - макрос перезагрузки без запуска moonraker и fluidd
- REMOVE_ZMOD - макрос удаления мода
- Исправлена ошибка: "После паузы из-за срабатывания датчика движения филамента восстанавливает печать, но печатает в воздухе сантиметрах в 3 над местом где надо"
