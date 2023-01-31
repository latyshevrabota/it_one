﻿

///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////

// контекст фреймворка Vanessa-Behavior
Перем Ванесса;
//Перем ФормаТаймера;

// Делает отключение модуля
&НаКлиенте
Функция ОтключениеМодуля() Экспорт

	Ванесса = Неопределено;
	Контекст = Неопределено;
	КонтекстСохраняемый = Неопределено;

КонецФункции

// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"Пауза(Парам01)","Пауза","Когда Пауза 1");

	Возврат ВсеТесты;
КонецФункции
	
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакет(ИмяМакета);
КонецФункции



///////////////////////////////////////////////////
//Работа со сценариями
///////////////////////////////////////////////////

// Функция выполняется перед началом каждого сценария
Функция ПередНачаломСценария() Экспорт
	
КонецФункции

// Функция выполняется перед окончанием каждого сценария
Функция ПередОкончаниемСценария() Экспорт
	
КонецФункции



///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

//Когда Пауза 1
//@Пауза(Парам01)
Функция Пауза(КолСек) Экспорт
	Ванесса.ЗапретитьВыполнениеШагов();
	//ПодключитьОбработчикОжидания(ИмяОбработчика,1,Истина);
	ФормаТаймера1 = ПолучитьФорму("ФормаТаймера",,Ложь);
	ФормаТаймера1.ПодключитьТаймер(Ванесса,КолСек);
	ФормаТаймера1.Открыть();
КонецФункции
