Домашняя работа к занятию "3.5. Файловые системы"
=

1. Узнайте о sparse (разряженных) файлах.
Ознакомился, не подозревал, что разреженные файлы используются в виртуальных машинах при создании образов дисков. Интересная информация!

2. Могут ли файлы, являющиеся жесткой ссылкой на один объект, иметь разные права доступа и владельца? Почему?
Нет, так как hard link, в отличие от symbolyc link, являются одним и тем же объектом файловой системы и ссылается на один и тот же индексный номер(inode) имеет тот же набор прав дсотупа как и у исходного файла:
![alt text](pictures/03-sysadmin-05-fs-1.PNG "hardlink")  
Напротив, symbolyc link указывает не на сам файл, а на его имя(путь), а при создании symbolyc link создается новый объект файловой системы с новыйм inode с новыми правами доступа:  
![alt text](pictures/03-sysadmin-05-fs-2.PNG "symlink")  

3. Сделайте vagrant destroy на имеющийся инстанс Ubuntu. Замените содержимое Vagrantfile следующим:
![alt text](pictures/03-sysadmin-05-fs-3.PNG "vagrantfile")  
Виртуальная машина создана.
![alt text](pictures/03-sysadmin-05-fs-4.PNG "VM")  

4. Используя fdisk, разбейте первый диск на 2 раздела: 2 Гб, оставшееся пространство.  
   * Выполнено:  
![alt text](pictures/03-sysadmin-05-fs-5.PNG "fdisk")  

5. Используя sfdisk, перенесите данную таблицу разделов на второй диск.
   * Выполнено:  
![alt text](pictures/03-sysadmin-05-fs-6.PNG "fdisk")  

6. Соберите mdadm RAID1 на паре разделов 2 Гб.  
   * Выполнено:
![alt text](pictures/03-sysadmin-05-fs-7.PNG "mdadm RAID1")

7. Соберите mdadm RAID0 на второй паре маленьких разделов.  
   * Выполнено:
![alt text](pictures/03-sysadmin-05-fs-8.PNG "mdadm RAID0")

8. Создайте 2 независимых PV на получившихся md-устройствах.  
   * Выполенено:  
![alt text](pictures/03-sysadmin-05-fs-9.PNG "pvcreate")  

9. Создайте общую volume-group на этих двух PV.  
   * Выполнено:  
![alt text](pictures/03-sysadmin-05-fs-10.PNG "vgcreate")  

10. Создайте LV размером 100 Мб, указав его расположение на PV с RAID0.  
    * Выполенено:  
![alt text](pictures/03-sysadmin-05-fs-12.PNG "lvcreate")  
![alt text](pictures/03-sysadmin-05-fs-11.PNG "list lv")  

11. Создайте mkfs.ext4 ФС на получившемся LV.  
    * Выполнено:  
![alt text](pictures/03-sysadmin-05-fs-14.PNG "mkfs")  

12. Смонтируйте этот раздел в любую директорию, например, /tmp/new.  
    * Выполнено:  
![alt text](pictures/03-sysadmin-05-fs-15.PNG "mount")  

13. Поместите туда тестовый файл, например wget https://mirror.yandex.ru/ubuntu/ls-lR.gz -O /tmp/new/test.gz.  
    * Выполенено:
![alt text](pictures/03-sysadmin-05-fs-16.PNG "test.gz")  

14. Прикрепите вывод lsblk.  
    * Выполнено:  
![alt text](pictures/03-sysadmin-05-fs-17.PNG "lsblk")  

15. Протестируйте целостность файла:  
    * Выполнено:  
![alt text](pictures/03-sysadmin-05-fs-18.PNG "test file")  

16. Используя pvmove, переместите содержимое PV с RAID0 на RAID1.  
    * Выполнено:  
![alt text](pictures/03-sysadmin-05-fs-19.PNG "pvmove")  

17. Сделайте --fail на устройство в вашем RAID1 md.  
    * Выполнено:  
![alt text](pictures/03-sysadmin-05-fs-20.PNG "set fail")  

18. Подтвердите выводом dmesg, что RAID1 работает в деградированном состоянии.  
    * Выполнено:
![alt text](pictures/03-sysadmin-05-fs-21.PNG "dmesg")  

19. Протестируйте целостность файла, несмотря на "сбойный" диск он должен продолжать быть доступен:  
    * Выполнено:  
![alt text](pictures/03-sysadmin-05-fs-22.PNG "test file again")  

20. Погасите тестовый хост, vagrant destroy.
    * Выполнено.  