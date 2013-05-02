Обертка над API ДубльГИС для iOS.

## Требования
- iOS > 5.0, ARC.
- В Вашем проекте должен быть установлен AFNetworking > 0.10

## Установка

1. Скопируйте папку Classes к себе в проект.
2. Подключите TGApi.h

```objc
#import "TGApi.h"
```

## Использование

Для того, чтобы использовать эту библиотеку, Вам нужно указать Ваш ключ и версию API, к которой Вы хотите получить доступ в файле TGConfiguration:

```objc
+(NSString *)apiKey{
    return @"Ваш ключ";
}

+(NSString *)version{
    return @"1.3";
}

```

Следующим шагом будет формирование параметров запроса к API:

```objc
// Составляем параметры запроса
    TGRequestParams *params = [TGRequestParams params];
    [params addParam:kWhat value:@"Книжный магазин"];
    [params addParam:kWhere value:@"Тюмень"];

```

Последним шагом будет передача параметров к Http Client и получение результата:

```objc
// Производим запрос на сервер
    [[TGisClient sharedClient] firmsWithParams:params success:^(NSArray *objects) {
        firms = objects;
        [self.firmsTable reloadData];
    } failure:^(NSError *commonError) {
        // Вывод ошибки
    }];

```

## Лицензия

Данная библиотека доступа под лицензией MIT. Смотрите файл LICENSE для дополнительной информации.
