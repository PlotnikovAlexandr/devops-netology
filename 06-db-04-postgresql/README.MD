Домашняя работа к занятию "6.4. PostgreSQL"
==
Задача 1. Ответ:
-
- Поднял контейнер с помощью docker-compose:
![alt text](pictures/postgresql-up.png "PostgreSQL-13")
Список команд по заданию:
- вывода списка БД - \l
- подключения к БД - \c 'database name'
- вывода списка таблиц - \dtS - т.к. в бд есть только системные таблицы
- вывода описания содержимого таблиц - \dS+ pg_am (в нашем случае, по той же причине, что и команда выше)
- выхода из psql - \q

Задача 2. Ответ:
-
![alt text](pictures/ex2-1.png "ex2-1")

![alt text](pictures/ex2-2.png "ex2-2")

Задача 3. Ответ:
-
Пользовался статьей с Habr. https://habr.com/ru/post/273933/
![alt text](pictures/partitioning.png "partitioning")

Можно было избежать этих манипуляций, если бы при создании бд использовали секционирование по интервалу.

Задача 4. Ответ:
-
Бэкап базы данных:
![alt text](pictures/backup_db.png "backup")

Как бы вы доработали бэкап-файл, чтобы добавить уникальность значения столбца title для таблиц test_database?

Я бы исппользовал уникальное ограничение:
- CONSTRAINT constraint_titles UNIQUE (title)