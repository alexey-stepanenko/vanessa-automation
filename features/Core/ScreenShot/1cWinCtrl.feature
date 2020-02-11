# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@IgnoreOnWeb



Функционал: Проверка снятие скриншотов с помощью компоненты 1cWinCtrl



Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой

	

Сценарий: Установка компоненты 1cWinCtrl
	И я перехожу к закладке с именем "ГруппаНастройки"
	И я устанавливаю флаг с именем 'ИспользоватьКомпоненту1cWinCtrl'
	И пауза 1
	Если появилось окно с заголовком "Установка внешней компоненты" Тогда
		Тогда открылось окно 'Установка внешней компоненты'
		И я нажимаю на кнопку 'Установить'
		И пауза 20
		И я выполняю код встроенного языка
			| 'Ванесса.ЗавершитьСеансыTestClientПринудительно()' |
	
	

Сценарий: Закрыть TestClient
	И я закрываю TestClient "Этот клиент"	
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'

	
Сценарий: Проверка снятия скриншота компонентой
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиСнятияСкриншотаШагом"
	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "ГруппаНастройки"
	И я устанавливаю флаг с именем 'ИспользоватьКомпоненту1cWinCtrl'
	И я устанавливаю флаг с именем 'ИспользоватьВнешнююКомпонентуДляСкриншотов'
	
	И в поле с именем "КаталогПроекта" я ввожу текст "$КаталогИнструментов$"
	
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

	И я перехожу к закладке "Служебная"
	И я нажимаю на кнопку 'Развернуть все строки дерева служебный'
	И я перехожу к закладке "Запуск сценариев"


	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                                                                   | 'Статус'  |
		| 'ФичаДляПроверкиСнятияСкриншотаШагом.feature'                                                                    | ''        |
		| 'ФичаДляПроверкиСнятияСкриншотаШагом'                                                                            | ''        |
		| 'ФичаДляПроверкиСнятияСкриншотаШагом'                                                                            | 'Success' |
		| 'Если Файл "$КаталогПроекта$\tools\ScreenShotsTest" существует тогда'                                            | 'Success' |
		| 'Иначе'                                                                                                          | ''        |
		| 'И я создаю каталог "$КаталогПроекта$\tools\ScreenShotsTest"'                                                    | ''        |
		| 'И я очищаю каталог "$КаталогПроекта$\tools\ScreenShotsTest"'                                                    | 'Success' |
		| 'Затем количество файлов в каталоге "$КаталогПроекта$\tools\ScreenShotsTest" я запоминаю как "КоличествоФайлов"' | 'Success' |
		| 'Тогда переменная "КоличествоФайлов" имеет значение 0'                                                           | 'Success' |
		| 'И я сохраняю скриншот "$КаталогПроекта$\tools\ScreenShotsTest\Test.png"'                                        | 'Success' |



