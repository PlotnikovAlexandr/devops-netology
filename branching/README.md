(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology$ git init
Инициализирован пустой репозиторий Git в /home/rookie/PycharmProjects/Netology/devops-netology/.git/
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology$ git clone git@github.com:PlotnikovAlexandr/devops-netology.git
Клонирование в «devops-netology»…
remote: Enumerating objects: 36, done.
remote: Counting objects: 100% (36/36), done.
remote: Compressing objects: 100% (22/22), done.
remote: Total 36 (delta 5), reused 32 (delta 4), pack-reused 0
Получение объектов: 100% (36/36), 4.43 КиБ | 4.43 МиБ/с, готово.
Определение изменений: 100% (5/5), готово.
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology$ ls -lh
итого 4,0K
drwxrwxr-x 4 rookie rookie 4,0K дек 12 11:47 devops-netology
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology$ cd ..
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology$ git init
Инициализирован пустой репозиторий Git в /home/rookie/PycharmProjects/Netology/.git/
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology$ git clone git@github.com:PlotnikovAlexandr/devops-netology.git
Клонирование в «devops-netology»…
remote: Enumerating objects: 36, done.
remote: Counting objects: 100% (36/36), done.
remote: Compressing objects: 100% (22/22), done.
remote: Total 36 (delta 5), reused 32 (delta 4), pack-reused 0
Получение объектов: 100% (36/36), 4.43 КиБ | 2.21 МиБ/с, готово.
Определение изменений: 100% (5/5), готово.
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology$ ls -lh
итого 12K
drwxrwxr-x 4 rookie rookie 4,0K дек 12 11:49 devops-netology
-rw-rw-r-- 1 rookie rookie  528 ноя 29 18:04 main.py
drwxrwxr-x 4 rookie rookie 4,0K ноя 29 18:04 venv
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology$ cd devops-netology/
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology$ git remote -v
origin  git@github.com:PlotnikovAlexandr/devops-netology.git (fetch)
origin  git@github.com:PlotnikovAlexandr/devops-netology.git (push)
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology$ mkdir branching
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology$ cd branching/
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ touch merge.sh
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ touch rebase.sh
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ nano merge.sh 
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ nano rebase.sh
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git add .
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git status
На ветке main
Ваша ветка обновлена в соответствии с «origin/main».

Изменения, которые будут включены в коммит:
  (используйте «git restore --staged <файл>…», чтобы убрать из индекса)
        новый файл:    merge.sh
        новый файл:    rebase.sh

(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git commit -m "prepare for merge and rebase"
[main f8f444c] prepare for merge and rebase
 2 files changed, 16 insertions(+)
 create mode 100644 branching/merge.sh
 create mode 100644 branching/rebase.sh
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git push origin main
Перечисление объектов: 5, готово.
Подсчет объектов: 100% (5/5), готово.
При сжатии изменений используется до 8 потоков
Сжатие объектов: 100% (4/4), готово.
Запись объектов: 100% (4/4), 542 байта | 542.00 КиБ/с, готово.
Всего 4 (изменения 0), повторно использовано 0 (изменения 0)
To github.com:PlotnikovAlexandr/devops-netology.git
   414b7d6..f8f444c  main -> main
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git branch git-merge
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git status
На ветке main
Ваша ветка обновлена в соответствии с «origin/main».

нечего коммитить, нет изменений в рабочем каталоге
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git checkout git-merge
Переключено на ветку «git-merge»
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ nano merge.sh 
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git commit -m "merge: @ instead *"
На ветке git-merge
Изменения, которые не в индексе для коммита:
  (используйте «git add <файл>…», чтобы добавить файл в индекс)
  (используйте «git restore <файл>…», чтобы отменить изменения в рабочем каталоге)
        изменено:      merge.sh

нет изменений добавленных для коммита
(используйте «git add» и/или «git commit -a»)
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git add .
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git commit -m "merge: @ instead *"
[git-merge 1ff5c1d] merge: @ instead *
 1 file changed, 1 insertion(+), 1 deletion(-)
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git push origin git-merge
Перечисление объектов: 7, готово.
Подсчет объектов: 100% (7/7), готово.
При сжатии изменений используется до 8 потоков
Сжатие объектов: 100% (4/4), готово.
Запись объектов: 100% (4/4), 379 байтов | 379.00 КиБ/с, готово.
Всего 4 (изменения 2), повторно использовано 0 (изменения 0)
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
remote: 
remote: Create a pull request for 'git-merge' on GitHub by visiting:
remote:      https://github.com/PlotnikovAlexandr/devops-netology/pull/new/git-merge
remote: 
To github.com:PlotnikovAlexandr/devops-netology.git
 * [new branch]      git-merge -> git-merge
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ nano merge.sh 
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git add .
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git commit -m "merge: use shift"
[git-merge da44b80] merge: use shift
 1 file changed, 1 insertion(+), 1 deletion(-)
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git push origin git-merge
Перечисление объектов: 7, готово.
Подсчет объектов: 100% (7/7), готово.
При сжатии изменений используется до 8 потоков
Сжатие объектов: 100% (4/4), готово.
Запись объектов: 100% (4/4), 375 байтов | 375.00 КиБ/с, готово.
Всего 4 (изменения 2), повторно использовано 0 (изменения 0)
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
To github.com:PlotnikovAlexandr/devops-netology.git
   1ff5c1d..da44b80  git-merge -> git-merge
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git checkout origin/main
Note: switching to 'origin/main'.

You are in 'detached HEAD' state. You can look around, make experimental
changes and commit them, and you can discard any commits you make in this
state without impacting any branches by switching back to a branch.

If you want to create a new branch to retain commits you create, you may
do so (now or later) by using -c with the switch command. Example:

  git switch -c <new-branch-name>

Or undo this operation with:

  git switch -

Turn off this advice by setting config variable advice.detachedHead to false

HEAD сейчас на f8f444c prepare for merge and rebase
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ nano rebase.sh
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git add rebase.sh
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git co
commit   config   
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git commit
[отделённый HEAD 9d9c1ed] Change rebase.sh
 1 file changed, 4 insertions(+), 2 deletions(-)
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git log
commit 9d9c1edf00b61cf94cb74431dbd0c9a7eb77438d (HEAD)
Author: Alexandr.Plotnikov <a.plotnikov@itwebnet.ru>
Date:   Sun Dec 12 12:01:42 2021 +0300

    Change rebase.sh

commit f8f444c87055ff3a842b60cc990b4e27f8e39e70 (origin/main, origin/HEAD, main)
Author: Alexandr.Plotnikov <a.plotnikov@itwebnet.ru>
Date:   Sun Dec 12 11:51:44 2021 +0300

    prepare for merge and rebase

commit 414b7d64058b6f70feaa0eae1f8008925d7a8112 (tag: v0.1, tag: v0.0)
Author: Alexandr.Plotnikov <a.plotnikov@itwebnet.ru>
Date:   Sat Dec 4 19:20:41 2021 +0300

    Was Added description of file .gitignore

commit 15d56aa4ac908cbb2aed5f844b69b7e4c16f57ef
Author: Alexandr.Plotnikov <a.plotnikov@itwebnet.ru>
Date:   Sat Dec 4 19:14:32 2021 +0300

    Moved and deleted

commit 28bf2ea86f84e96b9d3666d5582d9be531579d6f
Author: Alexandr.Plotnikov <a.plotnikov@itwebnet.ru>
commit 9d9c1edf00b61cf94cb74431dbd0c9a7eb77438d (HEAD)
Author: Alexandr.Plotnikov <a.plotnikov@itwebnet.ru>
Date:   Sun Dec 12 12:01:42 2021 +0300

    Change rebase.sh

commit f8f444c87055ff3a842b60cc990b4e27f8e39e70 (origin/main, origin/HEAD, main)
Author: Alexandr.Plotnikov <a.plotnikov@itwebnet.ru>
Date:   Sun Dec 12 11:51:44 2021 +0300

    prepare for merge and rebase

commit 414b7d64058b6f70feaa0eae1f8008925d7a8112 (tag: v0.1, tag: v0.0)
Author: Alexandr.Plotnikov <a.plotnikov@itwebnet.ru>
Date:   Sat Dec 4 19:20:41 2021 +0300

    Was Added description of file .gitignore

commit 15d56aa4ac908cbb2aed5f844b69b7e4c16f57ef
Author: Alexandr.Plotnikov <a.plotnikov@itwebnet.ru>
Date:   Sat Dec 4 19:14:32 2021 +0300
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git checkout f8f444c87055ff3a842b60cc990b4e27f8e39e70
Предупреждение: вы оставляете позади 1 коммит не соединенную ни с одной из ваших веток:

  9d9c1ed Change rebase.sh

Если вы хотите сохранить их с помощью создания новой ветки, то сейчас самое время
сделать это с помощью:

 git branch <имя-новой-ветки> 9d9c1ed

HEAD сейчас на f8f444c prepare for merge and rebase
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git branch git-rebase
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ nano rebase.sh
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git add rebase.sh
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git commit
[отделённый HEAD 2419566] git-rebase 1
 1 file changed, 4 insertions(+), 2 deletions(-)
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ nano rebase.sh
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git add rebase.sh
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git commit
[отделённый HEAD 4bb4e39] git-rebase 2
 1 file changed, 1 insertion(+), 1 deletion(-)
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git push
fatal: Вы сейчас не находитесь ни на одной из веток.
Чтобы отправить историю, ведущую к текущему (отделённый HEAD) состоянию, используйте

    git push origin HEAD:<имя-внешней-ветки>

(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git reset HEAD~
Непроиндексированные изменения после сброса:
M       branching/rebase.sh
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git status
HEAD отделён начиная с f8f444c
Изменения, которые не в индексе для коммита:
  (используйте «git add <файл>…», чтобы добавить файл в индекс)
  (используйте «git restore <файл>…», чтобы отменить изменения в рабочем каталоге)
        изменено:      rebase.sh

нет изменений добавленных для коммита
(используйте «git add» и/или «git commit -a»)
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git push origin git-rebase
Всего 0 (изменения 0), повторно использовано 0 (изменения 0)
remote: 
remote: Create a pull request for 'git-rebase' on GitHub by visiting:
remote:      https://github.com/PlotnikovAlexandr/devops-netology/pull/new/git-rebase
remote: 
To github.com:PlotnikovAlexandr/devops-netology.git
 * [new branch]      git-rebase -> git-rebase
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git add rebase.sh
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git commit
[отделённый HEAD da55888] git-rebase 2
 1 file changed, 1 insertion(+), 1 deletion(-)
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git push origin git-rebase
Everything up-to-date
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git commit
HEAD отделён начиная с f8f444c
нечего коммитить, нет изменений в рабочем каталоге
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git status
HEAD отделён начиная с f8f444c
нечего коммитить, нет изменений в рабочем каталоге
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git pull
Вы сейчас ни на одной из веток.
Пожалуйста, укажите с какой веткой вы хотите слить изменения.
Для дополнительной информации, смотрите git-pull(1).

    git pull <внешний-репозиторий> <ветка>

(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git pull origin git-rebase
Из github.com:PlotnikovAlexandr/devops-netology
 * branch            git-rebase -> FETCH_HEAD
Уже обновлено.
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git log
commit da558883d6d9106acf443d281e07924080168215 (HEAD)
Author: Alexandr.Plotnikov <a.plotnikov@itwebnet.ru>
Date:   Sun Dec 12 12:10:33 2021 +0300

    git-rebase 2

commit 24195665120809270ad28523f6d863435af42de5
Author: Alexandr.Plotnikov <a.plotnikov@itwebnet.ru>
Date:   Sun Dec 12 12:06:41 2021 +0300

    git-rebase 1

commit f8f444c87055ff3a842b60cc990b4e27f8e39e70 (origin/main, origin/git-rebase, origin/HEAD, main, git-rebase)
Author: Alexandr.Plotnikov <a.plotnikov@itwebnet.ru>
Date:   Sun Dec 12 11:51:44 2021 +0300

    prepare for merge and rebase

commit 414b7d64058b6f70feaa0eae1f8008925d7a8112 (tag: v0.1, tag: v0.0)
Author: Alexandr.Plotnikov <a.plotnikov@itwebnet.ru>
Date:   Sat Dec 4 19:20:41 2021 +0300
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git checkout git-rebase
Предупреждение: вы оставляете позади 2 коммита не соединенные ни с одной из ваших веток:

  da55888 git-rebase 2
  2419566 git-rebase 1

Если вы хотите сохранить их с помощью создания новой ветки, то сейчас самое время
сделать это с помощью:

 git branch <имя-новой-ветки> da55888

Переключено на ветку «git-rebase»
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git log
commit f8f444c87055ff3a842b60cc990b4e27f8e39e70 (HEAD -> git-rebase, origin/main, origin/git-rebase, origin/HEAD, main)
Author: Alexandr.Plotnikov <a.plotnikov@itwebnet.ru>
Date:   Sun Dec 12 11:51:44 2021 +0300

    prepare for merge and rebase

commit 414b7d64058b6f70feaa0eae1f8008925d7a8112 (tag: v0.1, tag: v0.0)
Author: Alexandr.Plotnikov <a.plotnikov@itwebnet.ru>
Date:   Sat Dec 4 19:20:41 2021 +0300

    Was Added description of file .gitignore

commit 15d56aa4ac908cbb2aed5f844b69b7e4c16f57ef
Author: Alexandr.Plotnikov <a.plotnikov@itwebnet.ru>
Date:   Sat Dec 4 19:14:32 2021 +0300

    Moved and deleted

commit 28bf2ea86f84e96b9d3666d5582d9be531579d6f
Author: Alexandr.Plotnikov <a.plotnikov@itwebnet.ru>
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git checkout origin
Note: switching to 'origin'.

You are in 'detached HEAD' state. You can look around, make experimental
changes and commit them, and you can discard any commits you make in this
state without impacting any branches by switching back to a branch.

If you want to create a new branch to retain commits you create, you may
do so (now or later) by using -c with the switch command. Example:

  git switch -c <new-branch-name>

Or undo this operation with:

  git switch -

Turn off this advice by setting config variable advice.detachedHead to false

HEAD сейчас на f8f444c prepare for merge and rebase
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git checkout origin/git-rebase
HEAD сейчас на f8f444c prepare for merge and rebase
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git status
HEAD отделён на origin/main
нечего коммитить, нет изменений в рабочем каталоге
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git push
fatal: Вы сейчас не находитесь ни на одной из веток.
Чтобы отправить историю, ведущую к текущему (отделённый HEAD) состоянию, используйте

    git push origin HEAD:<имя-внешней-ветки>

(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git push origin git-rebase
Everything up-to-date
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git push origin git-merge
Everything up-to-date
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git checkout origin/main
HEAD сейчас на f8f444c prepare for merge and rebase
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ nano rebase.sh 
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git add rebase.sh
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git commit -m "add echo"
[отделённый HEAD a9b016b] add echo
 1 file changed, 4 insertions(+), 2 deletions(-)
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git
git                 git-shell           git-upload-archive  
git-receive-pack    gitsome             git-upload-pack     
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git push
fatal: Вы сейчас не находитесь ни на одной из веток.
Чтобы отправить историю, ведущую к текущему (отделённый HEAD) состоянию, используйте

    git push origin HEAD:<имя-внешней-ветки>

(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git push origin main
Everything up-to-date
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git push origin
fatal: Вы сейчас не находитесь ни на одной из веток.
Чтобы отправить историю, ведущую к текущему (отделённый HEAD) состоянию, используйте

    git push origin HEAD:<имя-внешней-ветки>

(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git push origin HEAD:main
Перечисление объектов: 7, готово.
Подсчет объектов: 100% (7/7), готово.
При сжатии изменений используется до 8 потоков
Сжатие объектов: 100% (4/4), готово.
Запись объектов: 100% (4/4), 397 байтов | 397.00 КиБ/с, готово.
Всего 4 (изменения 2), повторно использовано 0 (изменения 0)
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
To github.com:PlotnikovAlexandr/devops-netology.git
   f8f444c..a9b016b  HEAD -> main
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git log
commit a9b016b9d553ff3748e0f00804f46ef6aee06c40 (HEAD, origin/main, origin/HEAD)
Author: Alexandr.Plotnikov <a.plotnikov@itwebnet.ru>
Date:   Sun Dec 12 12:23:12 2021 +0300

    add echo

commit f8f444c87055ff3a842b60cc990b4e27f8e39e70 (origin/git-rebase, main, git-rebase)
Author: Alexandr.Plotnikov <a.plotnikov@itwebnet.ru>
Date:   Sun Dec 12 11:51:44 2021 +0300

    prepare for merge and rebase

commit 414b7d64058b6f70feaa0eae1f8008925d7a8112 (tag: v0.1, tag: v0.0)
Author: Alexandr.Plotnikov <a.plotnikov@itwebnet.ru>
Date:   Sat Dec 4 19:20:41 2021 +0300

    Was Added description of file .gitignore

commit 15d56aa4ac908cbb2aed5f844b69b7e4c16f57ef
Author: Alexandr.Plotnikov <a.plotnikov@itwebnet.ru>
Date:   Sat Dec 4 19:14:32 2021 +0300
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git checkout f8f444c87055ff3a842b60cc990b4e27f8e39e70
Предыдущая позиция HEAD была a9b016b add echo
HEAD сейчас на f8f444c prepare for merge and rebase
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git checkout git-rebase
Переключено на ветку «git-rebase»
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ nano rebase.sh
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git add rebase.sh
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git commit
[git-rebase f6e9060] git-rebase 1
 1 file changed, 4 insertions(+), 2 deletions(-)
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git push origin HEAD:git-rebase
Перечисление объектов: 7, готово.
Подсчет объектов: 100% (7/7), готово.
При сжатии изменений используется до 8 потоков
Сжатие объектов: 100% (4/4), готово.
Запись объектов: 100% (4/4), 408 байтов | 408.00 КиБ/с, готово.
Всего 4 (изменения 2), повторно использовано 0 (изменения 0)
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
To github.com:PlotnikovAlexandr/devops-netology.git
   f8f444c..f6e9060  HEAD -> git-rebase
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ nano rebase.sh
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git add rebase.sh
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git commit
[git-rebase 91d8f47] git-rebase 2
 1 file changed, 1 insertion(+), 1 deletion(-)
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git push origin HEAD:git-rebase
Перечисление объектов: 7, готово.
Подсчет объектов: 100% (7/7), готово.
При сжатии изменений используется до 8 потоков
Сжатие объектов: 100% (4/4), готово.
Запись объектов: 100% (4/4), 380 байтов | 380.00 КиБ/с, готово.
Всего 4 (изменения 2), повторно использовано 0 (изменения 0)
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
To github.com:PlotnikovAlexandr/devops-netology.git
   f6e9060..91d8f47  HEAD -> git-rebase
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git checkout origin HEAD:main
error: pathspec 'HEAD:main' did not match any file(s) known to git
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git checkout origin main
error: pathspec 'main' did not match any file(s) known to git
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git checkout main
Переключено на ветку «main»
Ваша ветка отстает от «origin/main» на 1 коммит и может быть перемотана вперед.
  (используйте «git pull», чтобы обновить вашу локальную ветку)
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git merge git-merge
Обновление f8f444c..da44b80
Fast-forward
 branching/merge.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git checkout git-rebase
Переключено на ветку «git-rebase»
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git merge git-merge
Merge made by the 'recursive' strategy.
 branching/merge.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git revert
использование: git revert [<опции>] <указатель-коммита>…
   или: git revert <подкоманда>

    --quit                конец последовательности копирования или обращения изменений коммитов
    --continue            продолжить последовательность копирования или обращения изменений коммитов
    --abort               отмена последовательности копирования или обращения изменений коммитов
    --skip                skip current commit and continue
    --cleanup <режим>     как удалять пробелы и #комментарии из сообщения коммита
    -n, --no-commit       не коммитить автоматически
    -e, --edit            изменить сообщение коммита
    -s, --signoff         добавить Signed-off-by:
    -m, --mainline <номер-родителя>
                          выбор основного родителя
    --rerere-autoupdate   обновить индекс с помощью переиспользования разрешения конфликта, если возможно
    --strategy <стратегия>
                          стратегия слияния
    -X, --strategy-option <опция>
                          опция для стратегии слияния
    -S, --gpg-sign[=<key-id>]
                          подписать коммит с помощью GPG

(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git unmerge
git: «unmerge» не является командой git. Смотрите «git --help».
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git merge --help
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git checkout main
Переключено на ветку «main»
Ваша ветка и «origin/main» разделились
и теперь имеют 2 и 1 разных коммита в каждой соответственно.
  (используйте «git pull», чтобы слить внешнюю ветку в вашу)
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ cd ..
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology$ cd ..
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology$ git init
Инициализирован пустой репозиторий Git в /home/rookie/PycharmProjects/Netology/.git/
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology$ git clone git@github.com:PlotnikovAlexandr/devops-netology.git
Клонирование в «devops-netology»…
remote: Enumerating objects: 60, done.
remote: Counting objects: 100% (60/60), done.
remote: Compressing objects: 100% (38/38), done.
remote: Total 60 (delta 18), reused 51 (delta 12), pack-reused 0
Получение объектов: 100% (60/60), 6.26 КиБ | 2.09 МиБ/с, готово.
Определение изменений: 100% (18/18), готово.
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology$ cd devops-netology/
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology$ cd branching/
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git status
На ветке main
Ваша ветка обновлена в соответствии с «origin/main».

нечего коммитить, нет изменений в рабочем каталоге
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git merge git-merge
merge: git-merge — не является тем, что можно слить

Возможно, вы имели в виду это?
        origin/git-merge
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git merge origin/git-merge
Merge made by the 'recursive' strategy.
 branching/merge.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git push
Перечисление объектов: 7, готово.
Подсчет объектов: 100% (7/7), готово.
При сжатии изменений используется до 8 потоков
Сжатие объектов: 100% (3/3), готово.
Запись объектов: 100% (3/3), 393 байта | 393.00 КиБ/с, готово.
Всего 3 (изменения 1), повторно использовано 0 (изменения 0)
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To github.com:PlotnikovAlexandr/devops-netology.git
   a9b016b..8345ed5  main -> main
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git checkout git-rebase
Ветка «git-rebase» отслеживает внешнюю ветку «git-rebase» из «origin».
Переключено на новую ветку «git-rebase»
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git rebase -i main
error: could not parse '91d8f47 git-rebase 2
'
error: неправильная строка 2: fixup pick 91d8f47 git-rebase 2
Вы можете исправить это с помощью «git rebase --edit-todo», а потом запустив «git rebase --continue».
Или вы можете прервать процесс перемещения, выполнив «git rebase --abort»
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git rebase --abort
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git rebase -i main
Автослияние branching/rebase.sh
КОНФЛИКТ (содержимое): Конфликт слияния в branching/rebase.sh
error: не удалось применить коммит f6e9060… git-rebase 1
Resolve all conflicts manually, mark them as resolved with
"git add/rm <conflicted_files>", then run "git rebase --continue".
You can instead skip this commit: run "git rebase --skip".
To abort and get back to the state before "git rebase", run "git rebase --abort".
Could not apply f6e9060... git-rebase 1
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ cat rebase.sh
#!/bin/bash
# display command line options

count=1
for param in "$@"; do
<<<<<<< HEAD
    echo "\$@ Parameter #$count = $param"
=======
    echo "Parameter: $param"
>>>>>>> f6e9060... git-rebase 1
    count=$(( $count + 1 ))
done

echo "====="
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ nano rebase.sh
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ nano rebase.sh
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ cat rebase.sh
#!/bin/bash
# display command line options

count=1
for param in "$@"; do
<<<<<<< HEAD
    echo "\$@ Parameter #$count = $param"
=======
    echo "Parameter: $param"
>>>>>>> f6e9060... git-rebase 1
    count=$(( $count + 1 ))
done

echo "====="
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ nano rebase.sh
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git add rebase.sh
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git rebase --continue
Автослияние branching/rebase.sh
КОНФЛИКТ (содержимое): Конфликт слияния в branching/rebase.sh
error: не удалось применить коммит 91d8f47… git-rebase 2
Resolve all conflicts manually, mark them as resolved with
"git add/rm <conflicted_files>", then run "git rebase --continue".
You can instead skip this commit: run "git rebase --skip".
To abort and get back to the state before "git rebase", run "git rebase --abort".
Could not apply 91d8f47... git-rebase 2
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ cat rebase.sh
#!/bin/bash
# display command line options

count=1
for param in "$@"; do
<<<<<<< HEAD
    echo "\$@ Parameter #$count = $param"
=======
    echo "Next parameter: $param"
>>>>>>> 91d8f47... git-rebase 2
    count=$(( $count + 1 ))
done

echo "====="
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ nano rebase.sh
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git add rebase.sh
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git rebase --continue
Successfully rebased and updated refs/heads/git-rebase.
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git reflog
8345ed5 (HEAD -> git-rebase, origin/main, origin/HEAD, main) HEAD@{0}: rebase -i (finish): returning to refs/heads/git-rebase
8345ed5 (HEAD -> git-rebase, origin/main, origin/HEAD, main) HEAD@{1}: rebase -i (start): checkout main
91d8f47 (origin/git-rebase) HEAD@{2}: rebase -i (abort): updating HEAD
8345ed5 (HEAD -> git-rebase, origin/main, origin/HEAD, main) HEAD@{3}: rebase -i (start): checkout main
91d8f47 (origin/git-rebase) HEAD@{4}: checkout: moving from main to git-rebase
8345ed5 (HEAD -> git-rebase, origin/main, origin/HEAD, main) HEAD@{5}: merge origin/git-merge: Merge made by the 'recursive' strategy.
a9b016b HEAD@{6}: clone: from git@github.com:PlotnikovAlexandr/devops-netology.git
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git reset HEAD@{6}
Непроиндексированные изменения после сброса:
M       branching/merge.sh
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ cat rebase.sh
#!/bin/bash
# display command line options

count=1
for param in "$@"; do
    echo "\$@ Parameter #$count = $param"
    count=$(( $count + 1 ))
done

echo "====="
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git add merge.sh
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git status
На ветке git-rebase
Ваша ветка и «origin/git-rebase» разделились
и теперь имеют 1 и 2 разных коммита в каждой соответственно.
  (используйте «git pull», чтобы слить внешнюю ветку в вашу)

Изменения, которые будут включены в коммит:
  (используйте «git restore --staged <файл>…», чтобы убрать из индекса)
        изменено:      merge.sh

(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git push
To github.com:PlotnikovAlexandr/devops-netology.git
 ! [rejected]        git-rebase -> git-rebase (non-fast-forward)
error: не удалось отправить некоторые ссылки в «git@github.com:PlotnikovAlexandr/devops-netology.git»
подсказка: Обновления были отклонены, так как верхушка вашей текущей ветки
подсказка: позади ее внешней части. Заберите и слейте внешние изменения 
подсказка: (например, с помощью «git pull …») перед повторной попыткой отправки
подсказка: изменений.
подсказка: Для дополнительной информации, смотрите «Note about fast-forwards»
подсказка: в «git push --help».
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git pull
error: Your local changes to the following files would be overwritten by merge:
  branching/merge.sh
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git push
To github.com:PlotnikovAlexandr/devops-netology.git
 ! [rejected]        git-rebase -> git-rebase (non-fast-forward)
error: не удалось отправить некоторые ссылки в «git@github.com:PlotnikovAlexandr/devops-netology.git»
подсказка: Обновления были отклонены, так как верхушка вашей текущей ветки
подсказка: позади ее внешней части. Заберите и слейте внешние изменения 
подсказка: (например, с помощью «git pull …») перед повторной попыткой отправки
подсказка: изменений.
подсказка: Для дополнительной информации, смотрите «Note about fast-forwards»
подсказка: в «git push --help».
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git rebase -i main
error: не удалось выполнить rebase: В вашем индексе есть незакоммиченные изменения.
error: Сделайте коммит или спрячьте их.
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git commit
Отмена коммита из-за пустого сообщения коммита.
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ cd ..
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology$ cd..
cd..: команда не найдена
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology$ cd ..
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology$ git init
Инициализирован пустой репозиторий Git в /home/rookie/PycharmProjects/Netology/.git/
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology$ git clone git@github.com:PlotnikovAlexandr/devops-netology.git
Клонирование в «devops-netology»…
remote: Enumerating objects: 63, done.
remote: Counting objects: 100% (63/63), done.
remote: Compressing objects: 100% (40/40), done.
remote: Total 63 (delta 19), reused 54 (delta 13), pack-reused 0
Получение объектов: 100% (63/63), 6.59 КиБ | 6.59 МиБ/с, готово.
Определение изменений: 100% (19/19), готово.
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology$ cd devops-netology/
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology$ cd branching/
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git status 
На ветке main
Ваша ветка обновлена в соответствии с «origin/main».

нечего коммитить, нет изменений в рабочем каталоге
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git merge git-merge
merge: git-merge — не является тем, что можно слить

Возможно, вы имели в виду это?
        origin/git-merge
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git checkout git-rebase
Ветка «git-rebase» отслеживает внешнюю ветку «git-rebase» из «origin».
Переключено на новую ветку «git-rebase»
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git rebase -i main
Автослияние branching/rebase.sh
КОНФЛИКТ (содержимое): Конфликт слияния в branching/rebase.sh
error: не удалось применить коммит f6e9060… git-rebase 1
Resolve all conflicts manually, mark them as resolved with
"git add/rm <conflicted_files>", then run "git rebase --continue".
You can instead skip this commit: run "git rebase --skip".
To abort and get back to the state before "git rebase", run "git rebase --abort".
Could not apply f6e9060... git-rebase 1
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ nano  rebase.sh
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git add rebase.sh
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git rebase --continue
Автослияние branching/rebase.sh
КОНФЛИКТ (содержимое): Конфликт слияния в branching/rebase.sh
error: не удалось применить коммит 91d8f47… git-rebase 2
Resolve all conflicts manually, mark them as resolved with
"git add/rm <conflicted_files>", then run "git rebase --continue".
You can instead skip this commit: run "git rebase --skip".
To abort and get back to the state before "git rebase", run "git rebase --abort".
Could not apply 91d8f47... git-rebase 2
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ nano  rebase.sh
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git add rebase.sh
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git rebase --continue
[отделённый HEAD 3d4a518] Merge remote-tracking branch 'origin/git-merge' into main
 Date: Sun Dec 12 12:41:02 2021 +0300
Successfully rebased and updated refs/heads/git-rebase.
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git push -u origin git-rebase
To github.com:PlotnikovAlexandr/devops-netology.git
 ! [rejected]        git-rebase -> git-rebase (non-fast-forward)
error: не удалось отправить некоторые ссылки в «git@github.com:PlotnikovAlexandr/devops-netology.git»
подсказка: Обновления были отклонены, так как верхушка вашей текущей ветки
подсказка: позади ее внешней части. Заберите и слейте внешние изменения 
подсказка: (например, с помощью «git pull …») перед повторной попыткой отправки
подсказка: изменений.
подсказка: Для дополнительной информации, смотрите «Note about fast-forwards»
подсказка: в «git push --help».
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git push -u origin git-rebase -f
Перечисление объектов: 10, готово.
Подсчет объектов: 100% (10/10), готово.
При сжатии изменений используется до 8 потоков
Сжатие объектов: 100% (4/4), готово.
Запись объектов: 100% (4/4), 452 байта | 452.00 КиБ/с, готово.
Всего 4 (изменения 2), повторно использовано 0 (изменения 0)
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
To github.com:PlotnikovAlexandr/devops-netology.git
 + 91d8f47...3d4a518 git-rebase -> git-rebase (forced update)
Ветка «git-rebase» отслеживает внешнюю ветку «git-rebase» из «origin».
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git checkout main
Переключено на ветку «main»
Ваша ветка обновлена в соответствии с «origin/main».
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$ git merge git-rebase
Merge made by the 'recursive' strategy.
 branching/rebase.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
(venv) rookie@Ubuntu-PC:~/PycharmProjects/Netology/devops-netology/branching$
