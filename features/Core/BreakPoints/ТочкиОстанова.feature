# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839

@tree

Функционал: Точки останова
 
Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Точки останова
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ТочкиОстанова/ДляПроверкиТочкиОстанова01"
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                        | 'Статус'  |
		| 'ДляПроверкиТочкиОстанова01.feature'                                  | ''        |
		| 'ДляПроверкиТочкиОстанова01'                                          | ''        |
		| 'ДляПроверкиТочкиОстанова01'                                          | 'Failed'  |
		| 'И Я запоминаю значение выражения \'1\' в переменную "ИмяПеременной"' | 'Success' |
		| 'И я вызываю исключение "Тест."'                                      | 'Failed'  |



	И в таблице "ДеревоТестов" я перехожу к строке:
		| 'Наименование'                   |
		| 'И я вызываю исключение "Тест."' |
	И я выбираю пункт контекстного меню с именем 'ДеревоТестовКонтекстноеМенюБрейкпоинт' на элементе формы с именем "ДеревоТестов"
	
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                        | 'Статус'  |
		| 'ДляПроверкиТочкиОстанова01.feature'                                  | ''        |
		| 'ДляПроверкиТочкиОстанова01'                                          | ''        |
		| 'ДляПроверкиТочкиОстанова01'                                          | ''        |
		| 'И Я запоминаю значение выражения \'1\' в переменную "ИмяПеременной"' | 'Success' |
		| 'И я вызываю исключение "Тест."'                                      | ''        |


	И в таблице "ДеревоТестов" я перехожу к строке:
		| 'Наименование'                   |
		| 'И я вызываю исключение "Тест."' |
	И я выбираю пункт контекстного меню с именем 'ДеревоТестовКонтекстноеМенюБрейпоинтУбратьВсе' на элементе формы с именем "ДеревоТестов"
	
	
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                        | 'Статус'  |
		| 'ДляПроверкиТочкиОстанова01.feature'                                  | ''        |
		| 'ДляПроверкиТочкиОстанова01'                                          | ''        |
		| 'ДляПроверкиТочкиОстанова01'                                          | 'Failed'  |
		| 'И Я запоминаю значение выражения \'1\' в переменную "ИмяПеременной"' | 'Success' |
		| 'И я вызываю исключение "Тест."'                                      | 'Failed'  |


	И в таблице "ДеревоТестов" я перехожу к строке:
		| 'Наименование'                                                      |
		| 'И Я запоминаю значение выражения '1' в переменную "ИмяПеременной"' |
	И я выбираю пункт контекстного меню с именем 'ДеревоТестовКонтекстноеМенюБрейкпоинт' на элементе формы с именем "ДеревоТестов"


	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ТочкиОстанова/ДляПроверкиТочкиОстанова02"
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
