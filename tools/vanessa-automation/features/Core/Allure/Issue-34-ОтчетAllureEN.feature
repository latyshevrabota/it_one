﻿# language: ru
#parent uf:
@UF5_формирование_результатов_выполнения_сценариев
#parent ua:
@UA18_формировать_отчёт_Allure

@IgnoreOn82Builds
@IgnoreOnUFSovm82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

# т.к. на 8.3.9 не работает нажатие на кнопку Контекстного Меню
@IgnoreOn839



Функционал: Проверка формирования отчета Allure




Сценарий: Проверка прикрепления ЖР сценария к отчету en
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	
	Когда в базе есть пользователь "VanessaUserEN" с паролем "1" с языком "English"
	Когда Я копирую текущий профиль TestClient с установкой параметров:
		| 'Имя подключения' | 'Порт' | 'Логин'         | 'Пароль' |  'Дополнительные параметры строки запуска'  |
		| 'VanessaUserEN'   | '1'    | 'VanessaUserEN' | '1'      |   '/Len /Vlen'                              |	
	
	И Я подключаю клиент тестирования "VanessaUserEN" из таблицы клиентов тестирования

	
	И В командном интерфейсе я выбираю 'Main' 'Open vanessa automation'
	
	И я перехожу к закладке с именем "ГруппаКаталогиБиблиотек"
	И я нажимаю на кнопку с именем 'ФормаРазвернутьВсеГруппыВНастройках'
	И Пауза 1
		
	Если поле с именем "ВерсияПоставки" имеет значение "standart" тогда
		И В открытой форме я нажимаю на кнопку с именем "КаталогиБиблиотекДобавить"
		И я добавляю в библиотеки строку с стандартной библиотекой "Libraries"

	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "СтраницаСервисОсновные"
	И я устанавливаю флаг с именем 'ПроверкаРаботыVanessaAutomationВРежимеTestClient'
	И в таблице "ДеревоТестов" я активизирую поле с именем "ДеревоТестовИмя"
	И я перехожу к закладке с именем "ГруппаСлужебная"

	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "Allure/ФичаДляПроверкиОтчетаAllure10"
	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "СтраницаОтчетыОЗапуске"
	
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеАллюр'
	И я устанавливаю флаг с именем 'ПрикладыватьФайлыMxlКОтчетуAllure'
		
	И в поле каталог отчета аллюр я указываю путь к относительному каталогу "tools\Allure"
	И я устанавливаю флаг с именем 'ПрикладыватьКОтчетуAllureЖурналРегистрацииВыполненияСценария'	
	И я запоминаю значение поля с именем "КаталогВыгрузкиAllure" как "КаталогВыгрузкиAllure"
	И я перехожу к закладке с именем "СтраницаСервисОсновные"
	И я устанавливаю флаг с именем 'ДелатьЛогВыполненияСценариевВЖР'
	
	
	И я снимаю флаг с именем 'ФлагСценарииЗагружены'
	И я нажимаю на кнопку с именем 'Перезагрузить'

	//Проверка на Да, тоже должна работать
	И у элемента с именем "ФлагСценарииЗагружены" я жду значения "Да" в течение 150 секунд
	И у элемента с именем "ФлагСценарииЗагружены" я жду значения "Yes" в течение 150 секунд
	И флаг с именем 'ФлагСценарииЗагружены' равен 'Да'
	И флаг с именем 'ФлагСценарииЗагружены' равен 'Yes'
	
	И я снимаю флаг с именем 'ФлагСценарииВыполнены'
	И я нажимаю на кнопку с именем 'ВыполнитьСценарии'
	И у элемента с именем "ФлагСценарииВыполнены" я жду значения "Yes" в течение 150 секунд
	
	И в каталоге аллюр появился 1 файл json
	
	И файл "$НайденноеИмяФайлаjson$" содержит строки
		|'"name": "EventLog.mxl",'|
		|'"type": "mxl"'|
	
	И Я запоминаю значение выражения '0' в переменную "НашлиФайлЖР"
	И для каждого файла "ТекФайл" из каталога "$КаталогВыгрузкиAllure$"
		Если 'Нрег($_Расширение$) = ".mxl"' Тогда
			И Я запоминаю значение выражения '1' в переменную "НашлиФайлЖР"
			Тогда табличный документ "$_ПолноеИмя$" содержит значения:
				|'VanessaUserEN'|
				|'Error'|
				|'Thin client'|
				|'Исключение прикрепление ЖР к шагу'|
				
	Тогда переменная "НашлиФайлЖР" имеет значение 1


Сценарий: Активизация основного клиента
	Когда Я удаляю пользователя "VanessaUserEN"
	И я закрываю TestClient "VanessaUserEN"
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'

