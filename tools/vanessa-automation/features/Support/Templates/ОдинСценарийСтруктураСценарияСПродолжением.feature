# language: ru
# encoding: utf-8
#parent uf:
@UF11_Прочее
#parent ua:
@UA45_Прочая_активность_вообще

@IgnoreOnCIMainBuild


Функционал: Структура сценария с продолжением
	Как Разработчик
	Я Хочу чтобы чтобы у меня была возможность выполнить один сценарий структуры сценария
 
 

Структура сценария: Загрузка тестовой фичи проверка с выбранного шага часть
	Когда это шаг служебного экспортного сценария
	Когда Я увеличил значение <ИмяПараметра> в КонтекстСохраняемый на 1
	И я увеличил значение <ИмяПараметра> в КонтекстСохраняемый на 1
	И я увеличил значение <ИмяПараметра> в КонтекстСохраняемый на 1
	И я могу продолжить выполнение шагов в хост системе если СлужебныйПараметр больше 4

	Примеры:
		| ИмяПараметра      |
		| СлужебныйПараметр |
		| СлужебныйПараметр |
		
Сценарий: Тестовый сценарий. Структура сценария с продолжением
	И я увеличил значение "СлужебныйПараметр" в КонтекстСохраняемый на 1