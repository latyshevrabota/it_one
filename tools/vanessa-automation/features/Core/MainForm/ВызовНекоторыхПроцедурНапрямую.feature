﻿# language: ru
# encoding: utf-8
#parent uf:
@UF11_Прочее
#parent ua:
@UA45_Прочая_активность_вообще

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@tree



Функционал: Вызов некоторых процедур напрямую.
 
Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка существования файла
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой

	И я перехожу к закладке с именем "ГруппаНастройки"


	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	//Проверка существования файла
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'ЗапрещеныСинхронныеВызовы = Истина;'|
		|'ВозможнаОптимизацияРаботыСФайлами = Ложь;'|
		|'ИмяФайла = ДополнитьСлешВПуть(Объект.КаталогИнструментов) + "features\Support\Templates\VanessaExt\VanessaExt01.feature";'|
		|'Если НЕ ФайлСуществуетКомандаСистемы(ИмяФайла) Тогда'|
		|'    ВызватьИсключение "Файл не существует, хотя он есть. " + ИмяФайла;'|
		|'КонецЕсли;'|
		|'Если ЭтоКаталогКомандаСистемы(ИмяФайла) Тогда'|
		|'    ВызватьИсключение "Ошибка определения файла как каталога. " + ИмяФайла;'|
		|'КонецЕсли;'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 3
	Тогда не появилось окно предупреждения системы

	//Проверка существования каталога
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'ЗапрещеныСинхронныеВызовы = Истина;'|
		|'ВозможнаОптимизацияРаботыСФайлами = Ложь;'|
		|'ИмяФайла = ДополнитьСлешВПуть(Объект.КаталогИнструментов) + "features\Support\Templates\VanessaExt";'|
		|'Если НЕ ФайлСуществуетКомандаСистемы(ИмяФайла) Тогда'|
		|'    ВызватьИсключение "Файл не существует, хотя он есть. " + ИмяФайла;'|
		|'КонецЕсли;'|
		|'Если НЕ ЭтоКаталогКомандаСистемы(ИмяФайла) Тогда'|
		|'    ВызватьИсключение "Ошибка определения файла как каталога. " + ИмяФайла;'|
		|'КонецЕсли;'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 3
	Тогда не появилось окно предупреждения системы

Сценарий: Вызов некоторых процедур напрямую. Вычисление даты.
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой

	И я перехожу к закладке с именем "ГруппаНастройки"


	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'Если ДатаИзСтрокиКомандыСистемы("01.02.2020 03:04:05") <> Дата(2020,2,1,3,4,5) Тогда'|
		|'	ВызватьИсключение "Ошибка вычисления даты."'|
		|'КонецЕсли;'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы



	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'Если ДатаИзСтрокиКомандыСистемы("4/22/2020 10:11:12") <> Дата(2020,4,22,10,11,12) Тогда'|
		|'	ВызватьИсключение "Ошибка вычисления даты."'|
		|'КонецЕсли;'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы



	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'Если ДатаИзСтрокиКомандыСистемы("4/22/2020 10:11 AM") <> Дата(2020,4,22,10,11,0) Тогда'|
		|'	ВызватьИсключение "Ошибка вычисления даты."'|
		|'КонецЕсли;'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы

	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'Если ДатаИзСтрокиКомандыСистемы("4/11/2020:9:48:42:AM") <> Дата(2020,4,11,9,48,42) Тогда'|
		|'	ВызватьИсключение "Ошибка вычисления даты."'|
		|'КонецЕсли;'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы


	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'Если ДатаИзСтрокиКомандыСистемы("4/22/2020 10:11 PM") <> Дата(2020,4,22,10,11,0) Тогда'|
		|'	ВызватьИсключение "Ошибка вычисления даты."'|
		|'КонецЕсли;'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы





Сценарий: Вызов некоторых процедур напрямую. ОбработкаОповещения. СТекущегоШага.
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой

	И я перехожу к закладке с именем "ГруппаНастройки"


	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'ДанныеОповещения = Новый Структура;'|
		|'ДанныеОповещения.Вставить("ОстановкаПриВозникновенииОшибки",Истина);'|
		|'ДанныеОповещения.Вставить("СТекущегоШага",Истина);'|
		|'ДанныеОповещения.Вставить("НомерСтрокиДляЗапускаСТекущегоШагаСценария",20);'|
		|'ДанныеОповещения.Вставить("ИдОповещения",ТекущаяДата());'|
		|'ДанныеОповещения.Вставить("КаталогПроекта",Объект.КаталогПроекта);'|
		|'ДанныеОповещения.Вставить("ПутьКСценариям",Объект.КаталогИнструментов + "\features\Support\Templates\ВызовПроцедур\ВызовПроцедур03.feature");'|
		|'ОбработкаОповещения("ВыполнитьСценарий",ДанныеОповещения, Неопределено);'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы

	И у элемента с именем "ФлагСценарииВыполнены" я жду значения "Да" в течение 60 секунд
	И я перехожу к закладке "Служебная"
	И я перехожу к закладке "Служебное основное"
	И я нажимаю на кнопку 'Развернуть все строки дерева служебный'
	И я перехожу к закладке "Запуск сценариев"

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                         | 'Статус'  |
		| 'ВызовПроцедур03.feature'                                              | ''        |
		| 'ВызовПроцедур03'                                                      | ''        |
		| 'ВызовПроцедур03'                                                      | 'Success' |
		| 'И Я запоминаю значение выражения \'1\' в переменную "ИмяПеременной1"' | ''        |
		| 'И Я запоминаю значение выражения \'2\' в переменную "ИмяПеременной2"' | ''        |
		| 'И Я запоминаю значение выражения \'3\' в переменную "ИмяПеременной3"' | ''        |
		| 'И Я запоминаю значение выражения \'4\' в переменную "ИмяПеременной4"' | 'Success' |
		| 'И Я запоминаю значение выражения \'5\' в переменную "ИмяПеременной5"' | 'Success' |



	


@IgnoreOnServer
@IgnoreOnUFSovm82Builds
Сценарий: Вызов некоторых процедур напрямую. ЗаполнитьКаталогИнструментовЕслиОнПустой.
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой

	И я перехожу к закладке с именем "ГруппаНастройки"
	И я нажимаю кнопку очистить у поля с именем "КаталогИнструментов"


	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'ЗаполнитьКаталогИнструментовЕслиОнПустой();'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы

	И я перехожу к закладке с именем "ГруппаНастройки"
	
	Если поле с именем "ВерсияПоставки" имеет значение "standart" тогда
		И я жду, что поле с именем "КаталогИнструментов" перестанет быть пустым в течение 2 секунд




@IgnoreOnServer
@IgnoreOnUFSovm82Builds
Сценарий: Вызов некоторых процедур напрямую. ПодключитьБиблиотекуРаботыСВидео.
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой

	И я перехожу к закладке с именем "ГруппаНастройки"
	И я нажимаю кнопку очистить у поля с именем "КаталогИнструментов"


	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'МодульРаботыСВидео = Неопределено;'|
		|'ПодключитьБиблиотекуРаботыСВидео();'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы

	И я перехожу к закладке с именем "ГруппаНастройки"
	
	Если поле с именем "ВерсияПоставки" имеет значение "standart" тогда
		И я жду, что поле с именем "КаталогИнструментов" перестанет быть пустым в течение 2 секунд




Сценарий: Вызов некоторых процедур напрямую. ЗаполнитьПолеВерсияПлатформыДляГенерацииEPFЕслиЭтоВозможно.
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой


	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'Версия8310ИлиВыше = Ложь;'|
		|'Объект.ВерсияПлатформыДляГенерацииEPF = "";'|
		|'ЗаполнитьПолеВерсияПлатформыДляГенерацииEPFЕслиЭтоВозможно();'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 3
	Тогда не появилось окно предупреждения системы


Сценарий: Вызов некоторых процедур напрямую. Прочие процедуры.
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой


	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'SleepOnServer(1);'
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 3
	Тогда не появилось окно предупреждения системы
	

	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'ПосмотретьЗначение("Тест",Ложь);'
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы

	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'ПосмотретьЗначение("Тест",Истина);'
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы

	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'ОбработатьОткрытьКаталогФичи(0, Неопределено);'
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы

	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'Массив = Новый Массив;'|
		|'Массив.Добавить("_ИмяКолонки");'|
		|'УбратьИзИмениКолонокСпецСимволы(Массив);'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы


	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'ЗаписатьЛогВЖРОшибка("Тест", "Тестовый комментарий");'
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы

	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'ЗаписатьЛогВЖРИнформация("Тест", "Тестовый комментарий");'
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы

	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'ДеталиОшибки("Тест");'|
		|'ДеталиОшибки("ДеталиОшибки:111");'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы

	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'ДанныеСлужебногоКешаСтрокой(Новый Массив);'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы

	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'КаталогИнструментовИзПутиКФреймворку();'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы

	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'ОбработатьОткрытьКаталогСозданнойEPF(0,Неопределено);'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы

	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'ПреобразоватьСтрокуКДатеИзДанныхXML("08.04.1981");'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы

	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'ПроверитьВалидностьЗапросаСКД("Выбрать Ссылка Из Справочник.Справочник1");'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы

	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'Текст = Новый ТекстовыйДокумент;'|
		|'Текст.ДобавитьСтроку("111");'|
		|'Текст.ДобавитьСтроку("222");'|
		|'УдалитьПредыдущуюСтрокуЕслиЕстьСовпадения(Текст, "222", "22");'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы


	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'ДобавитьСтрокуИзменения("","Данные");'|
		|'ДобавитьСтрокуИзменения("111","Данные");'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы


	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'Стр = ПреобразоватьПараметрДляWeb("111");'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы


	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'Данные = Новый Структура;'|
		|'Данные.Вставить("Имя","Client");'|
		|'Данные.Вставить("ПутьКИнфобазе","C:\temp\111");'|
		|'Данные.Вставить("ДопПараметры","/NUser /PPassword /Len /Vlen");'|
		|'ПолучитьСтрокуЗапускаWebКлиент(Данные);'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы


	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'ПроверитьСтрокуRegExpLinux("111", "1*1");'|
		|'ПроверитьСтрокуRegExpLinux("222", "1*1");'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 2
	Тогда не появилось окно предупреждения системы


	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'ЭтоLinux = Истина;'|
		|'СтрокаСоответствуетШаблону("<111>", "<*>");'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 2
	Тогда не появилось окно предупреждения системы


	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'СтруктураПараметров = Новый Структура;'|
		|'ПолучитьЗначениеДляПередачиВМетодСервер("111", "Строка", СтруктураПараметров);'|
		|'ПолучитьЗначениеДляПередачиВМетодСервер(111, "Число", СтруктураПараметров);'|
		|'ПолучитьЗначениеДляПередачиВМетодСервер("08.04.1981", "Дата", СтруктураПараметров);'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 2
	Тогда не появилось окно предупреждения системы


	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'УдалитьСозданныеДанные(Новый Массив);'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 2
	Тогда не появилось окно предупреждения системы


	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'Массив = Новый Массив;'|
		|'Структура = Новый Структура;'|
		|'Структура.Вставить("Вид",Неопределено);'|
		|'Массив.Добавить(Структура);'|
		|'ОставитьВМассивеТолькоПоляГиперссылок(Массив);'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы


	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'AssertTrue(Истина);'|
		|'AssertFalse(Ложь);'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы


	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'AssertDate(Дата(1,1,1),Неопределено);'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку 'OK'

	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'AssertDateWithin2Seconds(Дата(1,1,1),Неопределено);'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку 'OK'


	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'AssertEqual(Истина,Истина);'|
		|'AssertNotEqual(Истина,Ложь);'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы


	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'AssertGreater(1,2);'|
		|'AssertGreaterOrEqual(1,2);'|
		|'AssertLess(2,1);'|
		|'AssertLessOrEqual(2,1);'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы


	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'AssertExecuted("1+1",Неопределено);'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку 'OK'
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'AssertMethodExecuted(Неопределено,Неопределено,Неопределено);'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку 'OK'

	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'AssertNotExecuted("1+1",Неопределено);'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы
	
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'AssertMethodNotExecuted(Неопределено,Неопределено,Неопределено);'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы

	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'AssertFilled("111");'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы
	
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'AssertNotFilled(Неопределено);'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы
	
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'AssertType(1,Тип("Число"));'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы
	
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'AssertStringContains("111","11");'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы
	
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'Массив = Новый Массив;'|
		|'Массив.Добавить(1);'|
		|'AssertCollectionContains(1,Массив);'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы
	
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'Массив = Новый Массив;'|
		|'Массив.Добавить(1);'|
		|'AssertEqualValueTable(1,Массив,,);'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку 'OK'
	

	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'GetVanessaAutomationState();'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы
	

	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'StopRunning();'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы

	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'ContinueRunning();'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы
	

	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'AddError("111");'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы
	
	//Оставлено для совместимости.
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'ОбъектКонтекст = Новый Структура;'|
		|'ОбъектКонтекст.Вставить("ЗначениеИзКонтекста",1);'|
		|'ТабПарам = Новый Массив;'|
		|'СтрокаТабПарам = Новый Структура;'|
		|'СтрокаТабПарам.Вставить("Кол1","$ЗначениеИзКонтекста$");'|
		|'ТабПарам.Добавить(СтрокаТабПарам);'|
		|'ПолучитьЗначенияТаблицыGherkinИзКонтекста(ТабПарам);'|
		|'Если СтрокаТабПарам.Кол1 <> 1 Тогда ВызватьИсключение "Не получено значение из контекста." КонецЕсли;'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы
	
	

		
	

Сценарий: Вызов некоторых процедур напрямую. Справка по гиперссылке
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой

	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'ИспользоватьSikuliXСерверРасширеннаяПодсказкаОбработкаНавигационнойСсылки(Неопределено, Неопределено, Истина);'
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 10
	Тогда открылось окно 'Справка'
	Тогда не появилось окно предупреждения системы
	И я закрываю окно "Справка"
	

