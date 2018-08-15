# Chirpy
Тестовое задание для Mail.ru


Написать приложение под iOS, которое должно отвечать следующим требованиям:

* В таблице должны отображаться твиты из результатов search или timeline любого пользователя в twitter. Авторизация по OAuth не входит в задачу, токены можно вшить в приложение. 
* Рядом с твитом должен быть аватар и имя пользователя.
* Обновление содержимого должно происходить сразу при запуске и каждые 60 секунд. В углу страницы отображается таймер времени до следующего обновления. 
* Полученные твиты и аватарки должны кешироваться локально, т.о. при перезапуске приложения можно будет сразу увидеть уже подгруженные твиты. 
* Работает на iOS >= 10.0. 
* Гордый отказ от использование различных Social Framework'ов, парсинг JSON ленты твиттера производим самостоятельно, любыми средствами SBJSON/json-framework/SomethingJSON.
* Нужна страница настроек с 1 настройкой – отображать или не отображать аватарки. Настройка должна сохраняться между запусками приложения. 

Не выполнен пункт с взаимодействием API Twitter, так как досих пор не получил от них токенов:( 