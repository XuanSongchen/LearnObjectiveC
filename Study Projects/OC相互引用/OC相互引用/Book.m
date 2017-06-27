//
//  Book.m
//  OC相互引用
//
//  Created by XuanSongchen on 4/16/16.
//  Copyright © 2016 Xuan Songchen. All rights reserved.
//

#import "Book.h"
#import "Person.h"

@implementation Book

-(void)dealloc {
    NSLog(@"Book dealloc function called");
}

@end
