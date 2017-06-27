//
//  main.m
//  ARC
//
//  Created by XuanSongchen on 4/13/16.
//  Copyright © 2016 Xuan Songchen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    Person * pp;
    
    @autoreleasepool {
        Person * p = [[Person alloc]init];
        p->age = 10;
        
        p = nil;
        
        pp = p;
    }
    NSLog(@"pp = %@",pp);
    //NSLog(@"pp-age = %d",pp->age);
    
    return 0;
}
