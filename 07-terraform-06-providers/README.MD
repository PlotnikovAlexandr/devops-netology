Домашняя работа к занятию "7.6. Написание собственных провайдеров для Terraform."

Задача 1. Ответ:
-
1) Найдите, где перечислены все доступные resource и data_source, приложите ссылку на эти строки в коде на гитхабе.
- resource: https://github.com/hashicorp/terraform-provider-aws/blob/8e4d8a3f3f781b83f96217c2275f541c893fec5a/aws/provider.go#L411
- data_source: https://github.com/hashicorp/terraform-provider-aws/blob/8e4d8a3f3f781b83f96217c2275f541c893fec5a/aws/provider.go#L169

2) Для создания очереди сообщений SQS используется ресурс aws_sqs_queue у которого есть параметр name.
 - С каким другим параметром конфликтует name? Приложите строчку кода, в которой это указано.
 https://github.com/hashicorp/terraform-provider-aws/blob/8e4d8a3f3f781b83f96217c2275f541c893fec5a/aws/resource_aws_sqs_queue.go#L56
 - Какая максимальная длина имени?
 errors = append(errors, fmt.Errorf("%q cannot be longer than 80 characters", k)) Максимальная длина имени не больше 80 символов
 https://github.com/hashicorp/terraform-provider-aws/blob/8e4d8a3f3f781b83f96217c2275f541c893fec5a/aws/validators.go#L1038
 - Какому регулярному выражению должно подчиняться имя?
 Регулярному выражению `^[0-9A-Za-z-_]+(\.fifo)?$'
 https://github.com/hashicorp/terraform-provider-aws/blob/8e4d8a3f3f781b83f96217c2275f541c893fec5a/aws/validators.go#L1041