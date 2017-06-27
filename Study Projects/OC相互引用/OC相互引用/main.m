//
//  main.m
//  OC相互引用
//
//  Created by XuanSongchen on 4/16/16.
//  Copyright © 2016 Xuan Songchen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Book.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /**
         相互引用中解决内存释放问题，只有一种解决方案，就是将一个类中的strong变成assign
         swift中也存在这种问题，同样只有这一种解决方案
         */
        
        Person * p = [[Person alloc]init];
        Book * b = [[Book alloc]init];
       
        p.book = b;
        b.p    = p;
    }
    return 0;
}
