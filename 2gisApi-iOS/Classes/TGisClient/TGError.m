//
//  TGError.m
//  2gisApi-iOS
//
//  Created by Кирилл Кунст on 28.03.13.
//  Copyright (c) 2013 YESWECODE. All rights reserved.
//

#import "TGError.h"

@implementation TGError


+(NSDictionary *)errors {
    NSDictionary *errors = @{@"methodNotFound":@"Запрошенный метод API не существует.",
                             @"withoutResult":@"Результаты по запросу не найдены.",
                             @"incorrectGeography":@"Некорректно задано значение поля «Где?» или других полей, отвечающих за географию.",
                             @"forbidden":@"Доступ к API запрещен для ключа, указанного в запросе.",
                             @"unauthorized":@"Ключ, указанный в запросе, не существует.",
                             @"unsupportedVersion":@"Указанная версия API не поддерживается.",
                             @"versionIsRequired":@"Не задана версия API.",
                             @"unsupportedOutput":@"Указанное значение output не поддерживается.",
                             @"incorrectCallback":@"Некорректно задан параметр callback",
                             @"whatIsEmpty":@"Не заполнено поле «Что?»",
                             @"whatTooShort":@"В поле «Что?» слишком мало символов.",
                             @"whatTooLarge":@"В поле «Что?» слишком много символов.",
                             @"wherePointIsEmpty":@"Не указана точка (при поиске по точке).",
                             @"whereIsEmpty":@"Не заполнено поле «Где?»",
                             @"whereTooShort":@"В поле «Где?» слишком мало символов.",
                             @"whereTooLarge":@"В поле «Где?» слишком много символов.",
                             @"conflictingParams":@"В запросе присутствуют взаимоисключаемые параметры.",
                             @"incorrectLimit":@"Некорректно задан параметр limit.",
                             @"incorrectRadius":@"Некорректно задан параметр radius.",
                             @"incorrectRubricOrder":@"Некорректно задан параметр sort.",
                             @"incorrectPage":@"Некорректно задан параметр page.",
                             @"incorrectPageSize":@"Некорректно задан параметр pagesize.",
                             @"incorrectProject":@"Некорректно задан проект.",
                             @"incorrectEncoding":@"Запрос передан в неправильной кодировке.",
                             @"firmRequired":@"Не задан идентификатор фирмы.",
                             @"firmIdInvalid":@"Некорректно задан идентификатор фирмы.",
                             @"geometryIdInvalid":@"Некорректно задаан идентификатор геометрии.",
                             @"rubricIdInvalid":@"Некорректно задан идентификатор рубрики.",
                             @"hashRequired":@"Не задан обязательный параметр hash.",
                             @"hashInvalid":@"Некорректно задан параметр hash.",
                             @"serviceUnavailable":@"Сервис временно недоступен.",
                             @"worktimeInvalid":@"Неправильно задан фильтр worktime.",
                             @"idsRequired":@"В запросе отсутствует список идентификаторов.",
                             @"incorrectFormat":@"Некорректно задан параметр format.",
                             @"tooManyIds":@"В запросе передано слишком много идентификаторов.",};
}

+(NSString *)messageForErrorCode:(NSString *)errorCode {
    return [[TGError errors] objectForKey:errorCode];
}

@end
