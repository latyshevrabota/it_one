# language: ru
# encoding: utf-8
#parent ua:
@UA24_Макеты_для_условий
#parent uf:
@UF9_Вспомогательные_фичи

@IgnoreOnCIMainBuild


Функциональность: ДляПроверкаРаботыУсловий36

Сценарий: ДляПроверкаРаботыУсловий36

	Если "1=1" тогда
		И Я запоминаю значение выражения '1' в переменную "ИмяПеременной"
	ИначеЕсли "2=2" тогда
		И Я запоминаю значение выражения '2' в переменную "ИмяПеременной"
	Иначе			
		И Я запоминаю значение выражения '3' в переменную "ИмяПеременной"

	Если "1 > 2" тогда
		И Я запоминаю значение выражения '4' в переменную "ИмяПеременной"
	ИначеЕсли "3=3" тогда
		И Я запоминаю значение выражения '5' в переменную "ИмяПеременной"
	Иначе			
		И Я запоминаю значение выражения '6' в переменную "ИмяПеременной"
	
	Если "2 > 3" тогда
		И Я запоминаю значение выражения '7' в переменную "ИмяПеременной"
	ИначеЕсли "3 > 4" тогда
		И Я запоминаю значение выражения '8' в переменную "ИмяПеременной"
	Иначе			
		И Я запоминаю значение выражения '9' в переменную "ИмяПеременной"
	
	И Я запоминаю значение выражения '10' в переменную "ИмяПеременной"
		
