# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

@tree


Функциональность: Копирование профиля TestClient

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Копирование профиля TestClient

	Когда Я открываю VanessaBehavior в режиме TestClient со стандартной библиотекой
	И я загружаю служебную фичу и устанавливаю настройки и выполняю сценарий
			И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиКопированияПрофиляTestClient"
			И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Behavior TestClient
			И Я нажимаю на кнопку выполнить сценарии в Vanessa-Behavior TestClient
	Тогда таблица "ДанныеКлиентовТестирования" содержит строки
		| 'Имя'           | 'Доп.параметры'                                                                                         |
		| 'Этот клиент'   | ''                                                                                                      |
		| 'ДоКопирования' | '/N"Акакий Ататаевич" /P"1Aa А а >!<"  /C"ПараметрыЗапускаИзВнешнейОперации=/TestClient -TPort 48050"' |


