# FF5M zmod
## Поддержка moonraker и fluidd/mainsaill на родном Клиппере
Поддерживаемые функции:
1. Загрузка и печать файлов через Octoprinter
2. Загрузка и печать файлов через Fluidd
3. Функционал родного экранного меню не изменен
4. Калибровка PID экструдера(PID_Tune_EXTRUDER) и стола(PID_Tune_BED). 
5. Регулировка винтов стола (Bed_Level_Screws_Tune) + калибровка стола(Auto_Full_Bed_Level)
5. Просмотр параметров клиппера (температуры, ускорения, PA, PA_TIME)
6. Просмотр того что запущено на печать
7. Камера работает как в родной прошивке и отображается в fluidd
8. Альтернативная реализация работы камеры. Экономит память и позволяет изменить разрешение камеры.
9. Автоматическое обновление fluidd и файлов конфигурации zmod
10. Воспроизведение MID файлов
11. Работа в режиме без родного экрана. Экономит 20 мегабайт оперативной памяти.
12. Снятие шейперов с легкой выгрузкой файлов csv
13. Калибровка стола при любой температуре

## В мод включены следующие функции

- Root основан на реализации [@darksimpson](https://t.me/darksimpson). Логин и пароль: root. https://t.me/c/2000598629/12695/186253
- Beeper основан на реализации [@drmax_gc](https://t.me/drmax_gc). M300. M356 fur Elise. https://t.me/FF_5M_5M_Pro/1/333800
- Включена проверка md5 от Igor Polunovskiy https://t.me/FF_5M_5M_Pro/12695/272417
- Калибровка PID стола с экрана. Теперь зайдя в меню отладки, долгое  нажатие  на  "Информацию о машине." Перейдя на вкладку  "Manual". Надо ввести M357 - запускается калибровка на 80 градусах. Если ввести M357 E105 - запустится калибровка на 105 градусах. Далее минут 10 экран не будет реагировать не  на что, но потом  PID от калибруется и запишется в printer.cfg.

Мод во многом основывался на https://github.com/xblax/flashforge_ad5m_klipper_mod/

Ставится на чистую версию не ниже 2.7.5 (2.7.5, 2.7.6)

Чистая версия лежит в папке Stock

## Список макросов
(https://github.com/ghzserg/zmod/wiki/Macros)

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
- Необходимо удалить весь стартовый gcode и прописать START_PRINT
- Не работает камера, необходимо запустить альтернативную камеру через макрос CAMERA_ON

## Планируется реализовать

1. Телеграм бот
2. Включение родного экрана

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

## Версия 0.1.8
- Поддержка подключения телеграм бота
- Макрос ZSSH_ON - ZSSH_ON SSH_SERVER SSH_PORT SSH_USER VIDEO_PORT MOON_PORT
- Макрос ZSSH_OFF - выключить SSH клиента
- Макрос ZSSH_RESTART - перезапуск SSH клиента

## Версия 0.1.7
- Множество исправлений макросов
- Макрос STOP_ZMOD - временно отключает fluidd/mainstaill и moonraker

## Версия 0.1.6
- Исправлено место нахождение логов
- Исправлен макрос LOAD_CELL_TARE
- Исправлен макрос  калибровки PID экструдера и стола
- Макрос CLEAR_NOIZE - очистка сопла как в родной прошивке
- Макрос KAMP extruder_temp=[nozzle_temperature_initial_layer] bed_temp=[bed_temperature_initial_layer_single]. Адаптивная карта  стола с очисткой сопла.
- AUTO_FULL_BED_LEVEL - полностью переписан макрос

## Версия 0.1.5
- Добавлен mainsail. Переключение через макрос WEB
- Макрос STOP - отключает моторы, прописывается в конечный gcod
- Макрос ZSHAPER - калибровка шейперов и выгрузка файлов csv в /mod_data в конфигурации. Дальнейший анализ через (https://github.com/theycallmek/Klipper-Input-Shaping-Assistant/releases)
- Макрос LOAD_CELL_TARE - сброс тензодатчиков
- Исправлена калибровка стола. Теперь можно установить температуру стола и экструдера для калибровки. по умолчанию 120/80
- Исправлено отключение экрана в режиме без экрана. Он отключатся через 4 минуты.

## Версия 0.1.4
- Добавлено управление камерой из мода. Позволяет съэкономить память. И работать с камерой с отключенным экраном. Также можно изменить разрешение камеры. (Реализация подсмотрена у Павла Миронова)
- Исправлена ошибка установщика, который в прошлой версии мог удалить [heater_bed] из файлов конфигурации
- Изменены картинки при установке. Реализовано [@drmax_gc](https://t.me/drmax_gc)
- Макросы разделены по категориям и переведены на русский язык
- Макрос DATE_GET - посмотреть текущее время
- Макрос DATE_SET - установить текущее время
- Макрос CAMERA_ON - Использовать альтернативную реализацию камеры
- Макрос CAMERA_OFF - Отключить альтернативную реализацию камеры

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
- Макрос DISPLAY_ON - вернет экран в стандартный режим работы, принтер перезагрузится
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

## Удаление - временное отключение мода

- SKIP_ZMOD - макрос перезагрузки без запуска moonraker и fluidd
- REMOVE_ZMOD - макрос удаления мода
- SOFT_REMOVE - макрос удаляет мод, но не удаляет audio, md5, root
