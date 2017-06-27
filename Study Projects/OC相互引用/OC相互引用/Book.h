//
//  Book.h
//  OC相互引用
//
//  Created by XuanSongchen on 4/16/16.
//  Copyright © 2016 Xuan Songchen. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Person;

@interface Book : NSObject

@property (nonatomic, strong) Person * p;

@end
