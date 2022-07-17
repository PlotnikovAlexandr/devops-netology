Домашнее задание к занятию "5.3. Введение. Экосистема. Архитектура. Жизненный цикл Docker контейнера"
==
Задача 1
--
Сценарий выполения задачи:
создайте свой репозиторий на https://hub.docker.com;
выберете любой образ, который содержит веб-сервер Nginx;
создайте свой fork образа;
реализуйте функциональность: запуск веб-сервера в фоне с индекс-страницей, содержащей HTML-код ниже:

    <html>
     <head>
      Hey, Netology
     </head>
      <body>
       <h1>I’m DevOps Engineer!</h1>
      </body>
    </html>

Опубликуйте созданный форк в своем репозитории и предоставьте ответ в виде ссылки на https://hub.docker.com/username_repo.

Ответ:
-
https://hub.docker.com/r/alexcarpenters/myhub

Задача 2
--
Посмотрите на сценарий ниже и ответьте на вопрос: "Подходит ли в этом сценарии использование Docker контейнеров или лучше подойдет виртуальная машина, физическая машина? Может быть возможны разные варианты?"

Детально опишите и обоснуйте свой выбор.

Сценарий:
- Высоконагруженное монолитное java веб-приложение;
- Nodejs веб-приложение;
- Мобильное приложение c версиями для Android и iOS;
- Шина данных на базе Apache Kafka;
- Elasticsearch кластер для реализации логирования продуктивного веб-приложения - три ноды elasticsearch, два logstash и две ноды kibana;
- Мониторинг-стек на базе Prometheus и Grafana;
- MongoDB, как основное хранилище данных для java-приложения;
- Gitlab сервер для реализации CI/CD процессов и приватный (закрытый) Docker Registry.

Ответ:
--
- Высоконагруженное монолитное java веб-приложение: физический сервер, либо очень "жирная" виртуалка. Физический сервер предпочтительнее, т.к. монолит высоконагружен и требуется доступ ко всем ресурсам сервера.
- Nodejs веб-приложение: здесь достаточно системы контейнеризации, например Dokcer, так как это вэб-приложение.
- Мобильное приложение c версиями для Android и iOS: виртуальные машины с графическим интерфейсом, так как это мобильные приложения и они нуждаются в gui.
- Шина данных на базе Apache Kafka: здесь можно использовать как контейнеризацию так и виртуальную машину, в зависимости от задачи и требований к отказоустойчивости.
- Elasticsearch кластер для реализации логирования продуктивного веб-приложения - три ноды elasticsearch, два logstash и две ноды kibana: я бы использовал виртуальные машины для каждой ноды.Так же подобный кластер реализуем в k8s. Второй вариант мне кажется более приемлемым, т.к. есть такие плюсы как Auto Healing, это решает, порой много проблем и скорость реализации такой схемы выше, чем на виртуальных машинах.
- Мониторинг-стек на базе Prometheus и Grafana: здесь так же достатчно системы контейниризации, так как система долго не хранит данные и не требует прямого доступа к железу.
- MongoDB, как основное хранилище данных для java-приложения: можно использовать как ВМ так и контейнеры с подключенным хранилищем для самой базы. Т.к. не указано, что это высоконагруженная БД.
- Gitlab сервер для реализации CI/CD процессов и приватный (закрытый) Docker Registry: так же достаточно контейнеров, я уже применял этот метод развертывания в компании из 25 человек(разработчиков). Самая большая нагрузка ложится на системы где установлен runner, Gitlab не очень требователен к ресурсам. Главное много бэкапов))

Задача 3
--
- Запустите первый контейнер из образа centos c любым тэгом в фоновом режиме, подключив папку /data из текущей рабочей директории на хостовой машине в /data контейнера;
- Запустите второй контейнер из образа debian в фоновом режиме, подключив папку /data из текущей рабочей директории на хостовой машине в /data контейнера;
- Подключитесь к первому контейнеру с помощью docker exec и создайте текстовый файл любого содержания в /data;
- Добавьте еще один файл в папку /data на хостовой машине;
- Подключитесь во второй контейнер и отобразите листинг и содержание файлов в /data контейнера.

Ответ:
-
    rookie@ubuntu-pc:~/devops-netology/05-virt-03-docker$ sudo docker run -dit -v '/home/rookie/devops-netology/05-virt-03-docker/data:/mnt/data' centos:centos7
    Unable to find image 'centos:centos7' locally
    centos7: Pulling from library/centos
    2d473b07cdd5: Pull complete 
    Digest: sha256:c73f515d06b0fa07bb18d8202035e739a494ce760aa73129f60f4bf2bd22b407
    Status: Downloaded newer image for centos:centos7
    8748ccd064d0dca0f96b33b3da2b7df40d079383bf8ee3444344c8f884943fb7
    rookie@ubuntu-pc:~/devops-netology/05-virt-03-docker$ sudo docker ps -a
    CONTAINER ID   IMAGE            COMMAND       CREATED         STATUS         PORTS     NAMES
    8748ccd064d0   centos:centos7   "/bin/bash"   4 seconds ago   Up 3 seconds             keen_bell
    rookie@ubuntu-pc:~/devops-netology/05-virt-03-docker$ sudo docker ps -a
    CONTAINER ID   IMAGE            COMMAND       CREATED         STATUS         PORTS     NAMES
    8748ccd064d0   centos:centos7   "/bin/bash"   7 seconds ago   Up 5 seconds             keen_bell
    rookie@ubuntu-pc:~/devops-netology/05-virt-03-docker$ sudo docker run -dit -v '/home/rookie/devops-netology/05-virt-03-docker/data:/mnt/data' debian:bullseye
    Unable to find image 'debian:bullseye' locally
    bullseye: Pulling from library/debian
    d836772a1c1f: Pull complete 
    Digest: sha256:2ce44bbc00a79113c296d9d25524e15d423b23303fdbbe20190d2f96e0aeb251
    Status: Downloaded newer image for debian:bullseye
    01ef406ffefedd7446bbf2bd73d99e797dd2bfa8a0022735b3e434b69eee12a5
    rookie@ubuntu-pc:~/devops-netology/05-virt-03-docker$ sudo docker ps -a
    CONTAINER ID   IMAGE             COMMAND       CREATED          STATUS          PORTS     NAMES
    01ef406ffefe   debian:bullseye   "bash"        7 seconds ago    Up 6 seconds              gracious_brown
    8748ccd064d0   centos:centos7    "/bin/bash"   47 seconds ago   Up 46 seconds             keen_bell
    rookie@ubuntu-pc:~/devops-netology/05-virt-03-docker$ sudo docker exec -it gracious_brown /bin/bash
    root@01ef406ffefe:/# cd     
    .dockerenv  boot/       etc/        lib/        media/      opt/        root/       sbin/       sys/        usr/        
    bin/        dev/        home/       lib64/      mnt/        proc/       run/        srv/        tmp/        var/        
    root@01ef406ffefe:/# cd home/
    root@01ef406ffefe:/home# ls
    root@01ef406ffefe:/home# cd ..
    root@01ef406ffefe:/# cd mnt/
    root@01ef406ffefe:/mnt# ls
    data
    root@01ef406ffefe:/mnt# cd  data/
    root@01ef406ffefe:/mnt/data# echo "this is added text from container cmd" >> testfile-1
    root@01ef406ffefe:/mnt/data# exit
    exit
    rookie@ubuntu-pc:~/devops-netology/05-virt-03-docker$ sudo docker exec -it keen_bell /bin/bash
    [root@8748ccd064d0 /]# ls /mnt/data/
    testfile-1  testfile-2
    [root@8748ccd064d0 /]# exit
    exit
