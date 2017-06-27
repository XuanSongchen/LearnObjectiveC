//
//  main.m
//  SetObject
//
//  Created by XuanSongchen on 4/12/16.
//  Copyright © 2016 Xuan Songchen. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建一个不可修改的空的集合
        //NSSet * emptySet = [NSSet set];
        
        //创建含有一个对象的集合
        NSString * str = [NSString stringWithFormat:@"Hello"];
        //NSSet * stringSet = [NSSet setWithObject:str];
        
        //创建含有多个对象的集合
        NSNumber * numberA = [NSNumber numberWithInt:100];
        //NSSet * mSet = [NSSet setWithObjects:str, numberA, nil];
        
        //创建一个可修改的集合
        NSMutableSet * mutableSet = [[NSMutableSet alloc]init];
        [mutableSet addObject:str];
        [mutableSet addObject:numberA];
        
        NSString * tmp = [mutableSet member:str];
        NSLog(@"tmp = %@",tmp);
    }
    return 0;
}
