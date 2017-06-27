//
//  Person.h
//  Code&Decode
//
//  Created by XuanSongchen on 4/14/16.
//  Copyright © 2016 Xuan Songchen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * sex;
@property (nonatomic, strong) NSString * age;

-(id) init;

-(id) initWithName:(NSString *)nameValue
              sex:(NSString *)sexValue
             age:(NSString *)ageValue;

- (void)encodeWithCoder:(NSCoder *)aCoder;
- (id)initWithCoder:(NSCoder *)aDecoder;

@end
