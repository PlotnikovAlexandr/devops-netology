Домашняя работа к занятию "6.2. SQL"
==
Задача 1. Ответ:
--
![alt text](pictures/docker-compose.PNG "Docker-compose")

Задача 2, 3. Ответ:
--
Я взял на себя смелость добавить выполнение задач в Init скрипт, примонтированный к контейнеру:
![alt text](pictures/initdb.PNG "InitDB")
Количество записей каждой таблицы:
![alt text](pictures/counts.PNG "Counts")

Задача 4. Ответ:
--
Связи, согласно ДЗ
![alt text](pictures/foreign_keys.PNG "Update")

SQL-запрос для выдачи всех пользователей, которые совершили заказ
![alt text](pictures/zakaz_not_null.PNG "Zakaz list")

Задача 5. Ответ:

![alt text](pictures/explain.PNG "Explain")
 Этот запрос выполняет последовательное чтение данных из таблицы clients с фильтром по стране клиента, показывая затрантность операции(cost), количество возвращаемых строк(rows) и средний размер строки в байтах(width).

 Задача 6. Ответ:
 Создаем бэкап
 ![alt text](pictures/backup.PNG "Backup")
 Останавливаем первый контейнер и:
 ![alt text](pictures/restore.PNG "Restore")