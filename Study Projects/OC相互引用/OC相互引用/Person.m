//
//  Person.m
//  OC相互引用
//
//  Created by XuanSongchen on 4/16/16.
//  Copyright © 2016 Xuan Songchen. All rights reserved.
//

#import "Person.h"
#import "Book.h"

@implementation Person

-(void)dealloc {
    NSLog(@"Person delloc function called");
}

@end
