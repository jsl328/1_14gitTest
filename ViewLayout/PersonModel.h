//
//  PersonModel.h
//  ViewLayout
//
//  Created by jiangshilin on 16/1/13.
//  Copyright © 2016年 jiangshilin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PersonModel : NSObject
@property(nonatomic,strong)NSString *firstName;
@property (nonatomic,strong)NSString *lastName;
@property(nonatomic,strong)PersonModel *person;
@property NSInteger age;
-(instancetype)initWithFirstName:(NSString *)fName withLastName:(NSString *)lastName withAge:(NSInteger)age;
@end
