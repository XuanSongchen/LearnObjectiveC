//
//  Person.m
//  Code&Decode
//
//  Created by XuanSongchen on 4/14/16.
//  Copyright © 2016 Xuan Songchen. All rights reserved.
//

#import "Person.h"

#define PERSON_NAME (@"name")
#define PERSON_SEX (@"sex")
#define PERSON_AGE (@"age")

@implementation Person

-(id) init {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.name = [[NSString alloc]initWithFormat:@"宣松辰"];
    if (!self.name) {
        self = nil;
        return nil;
    }
    
    self.sex= [[NSString alloc]initWithFormat:@"男"];
    if (!self.sex) {
        self = nil;
        return nil;
    }
    
    self.age = [[NSString alloc]initWithFormat:@"21"];
    if (!self.age) {
        self = nil;
        return nil;
    }
    
    return self;
}

-(id) initWithName:(NSString *)nameValue
               sex:(NSString *)sexValue
               age:(NSString *)ageValue {
    if (!nameValue || !sexValue || !ageValue) {
        return nil;
    }
   
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.name = [[NSString alloc]initWithFormat:@"%@",nameValue];
    if (!self.name) {
        self = nil;
        return nil;
    }
    
    self.sex= [[NSString alloc]initWithFormat:@"%@",sexValue];
    if (!self.sex) {
        self = nil;
        return nil;
    }
    
    self.age = [[NSString alloc]initWithFormat:@"%@",ageValue];
    if (!self.age) {
        self = nil;
        return nil;
    }
    
    return self;
}

-(NSString *)description {
    NSMutableString * tmp = [[NSMutableString alloc]init];
    [tmp appendFormat:@"\n姓名:%@",self.name];
    [tmp appendFormat:@"\n性别:%@",self.sex];
    [tmp appendFormat:@"\n年龄:%@",self.age];
    
    return tmp;
}

#pragma mark
#pragma mark NSCoding methods

//编码方法：当前类的对象的属性进行编码
- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.name forKey:PERSON_NAME];
    [aCoder encodeObject:self.sex forKey:PERSON_SEX];
    [aCoder encodeObject:self.age forKey:PERSON_AGE];
}

//解码方法：拿出数据，还原成一个对象
- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (!self) {
        return nil;
    }
    //根据key判断
    if ([aDecoder containsValueForKey:PERSON_NAME]) {
        self.name = [aDecoder decodeObjectForKey:PERSON_NAME];
    }
    if ([aDecoder containsValueForKey:PERSON_SEX]) {
        self.sex = [aDecoder decodeObjectForKey:PERSON_SEX];
    }
    if ([aDecoder containsValueForKey:PERSON_AGE]) {
        self.age = [aDecoder decodeObjectForKey:PERSON_AGE];
    }
    return self;
}

@end













