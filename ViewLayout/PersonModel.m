//
//  PersonModel.m
//  ViewLayout
//
//  Created by jiangshilin on 16/1/13.
//  Copyright © 2016年 jiangshilin. All rights reserved.
//

#import "PersonModel.h"

@implementation PersonModel

-(instancetype)initWithFirstName:(NSString *)fName withLastName:(NSString *)lastName withAge:(NSInteger)age
{
    if (self =[super init]) {
        _firstName =fName;
        _lastName = lastName;
        _age =age;
        _person =self;
    }
    return self;
}

-(void)setNilValueForKey:(NSString *)key
{
    if ([key isEqualToString:@"age"]) {
        [self setValue:@(18) forKey:@"age"];
    }else{
        [super setNilValueForKey:key];
    }
}

-(void)setValue:(id)value forKey:(NSString *)key
{
    NSLog(@"%@ property found",key);
    
    if ([key isEqualToString:@""]) {
        
    }else if ([key isEqualToString:@""]){
    
    }else{
    
    }
    [super setValue:value forKey:key];
}

-(void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    NSLog(@"%@ property not found",key);
    [super setValue:value forUndefinedKey:key];
}

-(void)setValue:(id)value forKeyPath:(NSString *)keyPath
{
    [super setValue:value forKeyPath:keyPath];
    if ([keyPath isEqualToString:@"father.lastName"]) {
        [self setValue:value forKeyPath:@"father.lastName"];
    }
}

-(void)setValuesForKeysWithDictionary:(NSDictionary<NSString *,id> *)keyedValues
{
    
}

-(NSDictionary *)dictionaryWithValuesForKeys
{
    return nil;
}

-(id)valueForKeyPath:(NSString *)keyPath
{
    [super valueForKeyPath:keyPath];
    return keyPath;
}

-(id)valueForKey:(NSString *)key
{
    [super valueForKey:key];
    return key;
}

-(id)valueForUndefinedKey:(NSString *)key
{
    [super valueForUndefinedKey:key];
    NSLog(@"%@ property not found",key);
    return nil;
}


-(NSString *)description
{
    [super description];
    return  [[NSString alloc] initWithFormat:@"firstName: %@, lastName:%@, age: %lu", self.firstName,self.lastName,_age];
}

@end
