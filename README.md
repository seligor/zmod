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

## В мод включены следующие функции

- Root основан на реализации [@darksimpson](https://t.me/darksimpson). Логин и парроль: root. https://t.me/c/2000598629/12695/186253
- Beeper основан на реализации [@drmax_gc](https://t.me/drmax_gc). M300. M356 fur Elise. https://t.me/FF_5M_5M_Pro/1/333800
- Включена проверка md5 от Igor Polunovskiy https://t.me/FF_5M_5M_Pro/12695/272417
- Калибровка PID стола с экрана. Теперь зайдя в меню отладки, долгое  нажатие  на  "Информацию о машине." Перейдя на вкладку  "Manual". Надо ввести M357 - запускается калибровка на 80 градусах. Если ввести M357 E105 - запустится калибровка на 105 градусах. Далее минут 10 экран не будет реагировать не  на что, но потом  PID от калибруется и запишется в printer.cfg.

Мод во многом основывался на https://github.com/xblax/flashforge_ad5m_klipper_mod/

Ставится на чистую версию не ниже 2.7.5

Чистая версия лежит в папке Stock

Пользовательские настройки klipper необходимо вносить в файл mod.user.cfg.

## Известные особенности:
- После обновления fluidd через веб интерфес, необходимо перезагрузить принтер
- После отмены печати, на родном экране надо нажать кнопку Ок

## Удаление - временное отключение мода

Вставить флэшку и создать файл
- SKIP_ZMOD - не  запуститься moonraker и fluidd
- REMOVE - удалится мод
- SKIP_ZMOD - макрос перезагрузки без запуска moonraker и fluidd
- REMOVE_ZMOD - макрос удаления мода

## Планируется реализовать

1. Очистка сопла и калибровка как в родном экране
2. Вынести настройки камеры в макрос

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
2. Поместить файл Adventurer5M-zmod*.tgz в корневую папку USB Flash
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


## Версия 0.0.9

- Реализована пауза при печати, обрабатывается через родной экран
- Реализовано восстановление после паузы, обрабатывается через родной экран
- Реализована отмена печати, обрабатывается через родной экран
- REBOOT - макрос перезагружает принтер
- SHUTDOWN - макрос на отключение принтера
- SKIP_ZMOD - макрос перезагрузки без запуска moonraker и fluidd
- REMOVE_ZMOD - макрос удаления мода
- Исправлена ошибка: "После паузы из-за срабатывания датчика движения филамента восстанавливает печать, но печатает в воздухе сантиметрах в 3 над местом где надо"
