# encoding: utf-8
# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnOF836



Функционал: Создание скриншота всех сеансов 1С при возникновении ошибки

Как разработчик
Я хочу чтобы при запуске сценария при возникновении ошибки были сделаны скриншоты всех окнон 1С
Чтобы потом эти скриншоты были приложены к отчету Allure

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Проверка изменения реквизита ТЧ

	Когда Я открываю VanessaBehavior в режиме TestClient
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиРаботыСкриншотов"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И     в поле каталог скриншотов я указываю путь к относительному каталогу "tools\ScreenShots"
	И     В открытой форме я изменяю флаг с заголовком "Делать скриншот при возникновении ошибки"
	И     В открытой форме в поле с заголовком "Команда сделать скриншот" я ввожу текст '"C:\Program Files (x86)\IrfanView\i_view32.exe" /capture=2 /convert='
	И В открытой форме я нажимаю на кнопку с заголовком "Перезагрузить"
	И Пауза 4
	И В открытой форме я нажимаю на кнопку с заголовком "Выполнить сценарии"
	И Пауза 8
	И в каталоге скриншотов появился хотя бы один скриншот
	